import sys
from llvm2py import parse_assembly
from ortools.sat.python import cp_model
import pandas as pd

DOT = '''
digraph G {
node [fontname="JetBrains Mono" fontsize=20 style=filled fillcolor="#B1FDB6" penwidth=2 shape=box]
%s
}
'''

STATE_OPS = 'load store'.split()
NO_OPS = 'phi br switch ret'.split()
INPUT_OPS = 'arg state'.split()

INTRS = ['llvm.abs', 'llvm.addressofreturnaddress', 'llvm.bitreverse', 'llvm.bswap',
         'llvm.canonicalize', 'llvm.ceil', 'llvm.copysign', 'llvm.cos', 'llvm.ctlz',
         'llvm.ctpop', 'llvm.cttz', 'llvm.donothing', 'llvm.exp', 'llvm.exp2',
         'llvm.expect', 'llvm.fabs', 'llvm.floor', 'llvm.fma', 'llvm.fmuladd',
         'llvm.frameaddress', 'llvm.fshl', 'llvm.fshr', 'llvm.llrint', 'llvm.llround',
         'llvm.localaddress', 'llvm.localrecover', 'llvm.log', 'llvm.log10',
         'llvm.log2', 'llvm.lrint', 'llvm.lround', 'llvm.maximum', 'llvm.maxnum',
         'llvm.minimum', 'llvm.minnum', 'llvm.nearbyint', 'llvm.objectsize', 'llvm.pow',
         'llvm.powi', 'llvm.ptrmask', 'llvm.returnaddress', 'llvm.rint', 'llvm.round',
         'llvm.roundeven', 'llvm.sin', 'llvm.smax', 'llvm.smin', 'llvm.sponentry',
         'llvm.sqrt', 'llvm.trunc', 'llvm.umax', 'llvm.umin', 'llvm.vscale']


def is_reg(val):
    return val.name.startswith('%')


def make_args(dag, instr):
    args = []
    for arg in instr.operands:
        if is_reg(arg):
            args.append(arg.name)
            if arg.name not in dag:
                dag[arg.name] = ('arg',)
    return args


def make_dag(block):
    dag = {}
    state = 'state'
    for instr in block.instructions:
        op = instr.op_code_name
        if op not in NO_OPS:
            ret = instr.name
            args = make_args(dag, instr)
            if not is_reg(instr):
                ret = f's{len(dag)}'
            if op in STATE_OPS:
                if state not in dag:
                    dag[state] = (state,)
                if state not in args:
                    args.append(state)
                state = ret
            if op == 'call':
                op = instr.operands[-1].name.replace('llvm.', '')
            dag[ret] = (op, *args)
    return dag


def remove_ops(dag, ops):
    return {n: dag[n] for n, (op, *_) in dag.items() if op not in ops}


def schedule(dag):
    levels = []
    visited = {}
    while len(visited) < len(dag):
        level = []
        for n, (op, *args) in dag.items():
            if n not in visited and \
                    all((arg in visited or arg not in dag) for arg in args):
                level.append(n)
        levels.append(level)
        for n in level:
            visited[n] = 1
    return levels


def placed_to_levels(placed):
    levels = [[] for _ in range(max(placed.values()) + 1)]
    for n, i in placed.items():
        levels[i].append(n)
    return levels


def opt_schedule(dag, levels=None):
    if levels is None:
        levels = schedule(dag)
    depth = len(levels)
    model = cp_model.CpModel()
    max_width = model.NewIntVar(0, len(max(levels, key=len)), 'max_width')
    placed = {n: model.NewIntVar(0, depth - 1, f'placed_{n}') for n in dag}
    for n, (_, *args) in dag.items():
        for a in args:
            if a in dag:
                model.Add(placed[a] < placed[n])
    for i in range(depth):
        level = {n: model.NewBoolVar(f'x_{i}_{n}') for n in dag}
        for n, v in placed.items():
            model.Add(v == i).OnlyEnforceIf(level[n])
            model.Add(v != i).OnlyEnforceIf(level[n].Not())
        model.Add(sum(level.values()) <= max_width)
    model.Minimize(max_width)
    solver = cp_model.CpSolver()
    status = solver.Solve(model)
    assert status == cp_model.OPTIMAL
    return placed_to_levels({n: solver.Value(placed[n]) for n in placed})


def dag_to_dot(dag, levels=None):
    dot = []
    nodes = {}
    
    # Формирование колонки со надписями Ярусов
    if levels:
        for i in range(1, len(levels)):
            dot.append(f"tier_{i}")
            dot.append(f'tier_{i} -> tier_{i + 1} [style="invis"]')
        dot.append(f"tier_{len(levels)}")
    
    for i, (ret, (op, *_)) in enumerate(dag.items()):
        nodes[ret] = i
        shape = ' fillcolor=none shape=none' if op in INPUT_OPS else ''
        dot.append(f'n{i} [label="{op}"{shape}]')
    for s, (op, *args) in dag.items():
        for d in args:
            dot.append(f'n{nodes[d]} -> n{nodes[s]}')
        if op in STATE_OPS:
            dot[-1] += ' [color=red]'
    if levels:
        args = [n for n, (op, *_) in dag.items() if op in INPUT_OPS]
        levels = [args] + levels
        
        # Ярус с аргументами
        level = levels[0]
        level = '; '.join([f'n{nodes[n]}' for n in level])
        dot.append(f'{{rank=same; {level}}}')

        for i, level in enumerate(levels[1:], start=1):
            level = '; '.join([f'n{nodes[n]}' for n in level])
            dot.append(f'{{rank=same; {level}; tier_{i}[label="Ярус {i}" fillcolor=none shape=none]}}')
    return DOT % ('\n'.join(dot))


def has_no_calls(block):
    for instr in block.instructions:
        if instr.op_code_name == 'call':
            name = instr.operands[-1].name
            if not any(name.startswith(intr) for intr in INTRS):
                return False
    return True


def calc(program_name, df):
    with open(program_name) as file:
        ll = file.read()
    
    mod = parse_assembly(ll)
    dags = {}
    for func in mod.functions:
        for block in func.blocks:
            if has_no_calls(block):
                dags[f'{func.name}.{block.name}'] = make_dag(block)


    for name, dag in dags.items():
        no_ins_dag = remove_ops(dag, INPUT_OPS)
        size = len(no_ins_dag)
        if size:
            
            filename0 = f"dags/{program_name}_{name}_{size}_0.dot"
            filename1 = f"dags/{program_name}_{name}_{size}_1.dot"
            filename2 = f"dags/{program_name}_{name}_{size}_2.dot"
            with open(filename0, 'w') as file:
                file.write(dag_to_dot(dag))
            
            easy_levels = schedule(no_ins_dag)
            
            with open(filename1, 'w') as file:
                file.write(dag_to_dot(dag, easy_levels))
            
            levels = opt_schedule(no_ins_dag, easy_levels)
            
            with open(filename2, 'w') as file:
                file.write(dag_to_dot(dag, levels))
            
            acc = round(size / len(levels), 2)
            df.loc[len(df)] = [
                program_name, *name.split('.'),
                size, len(max(easy_levels, key=len)), acc,
                len(max(levels, key=len)), len(levels) - 1,
                filename0, filename1, filename2
            ]
            
    return df

# for acc, name, dag, size, levels in sorted(stat,
#                                            key=lambda x: x[0], reverse=True)[:10]:
#     max_width = len(max(levels, key=len))
#     print(f'# {name} size={size} acc={acc:.2f} max_width={max_width:.2f}')
#     with open(f"dags/{name}.dot", "w") as file:
#         file.write(dag_to_dot(dag, levels))

df = pd.DataFrame(columns=[
            'Программа', 'Функция', 'Блок',
            'Количество инструкций', 'Максимальная ширина', 'Ускорение',
            'Оптимизированная ширина',
            'Глубина вычислений',
            'Путь к графу зависимостей',
            'Путь к ярусно-параллельной форме',
            'Путь к оптимизированной ярусно-параллельной форме',
        ])

df = calc('nanojpeg.ll', df)
df = calc('aesopt.ll', df)
df = calc('chacha20.ll', df)
df.to_csv('data.csv')
