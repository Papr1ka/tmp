; ModuleID = '/app/example.c'
source_filename = "/app/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nj_ctx = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct._nj_cmp], i32, i32, [4 x [64 x i8]], [4 x [65536 x %struct._nj_code]], i32, i32, [64 x i32], i32, ptr }
%struct._nj_cmp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct._nj_code = type { i8, i8 }

@nj = internal global %struct._nj_ctx zeroinitializer, align 8, !dbg !0
@njDecodeDHT.counts = internal unnamed_addr global [16 x i8] zeroinitializer, align 16, !dbg !24
@njZZ = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16, !dbg !54

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @njInit() local_unnamed_addr #0 !dbg !117 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @njDone() local_unnamed_addr #2 !dbg !121 {
  call void @llvm.dbg.value(metadata i32 0, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 0, metadata !123, metadata !DIExpression()), !dbg !124
  %1 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !dbg !125, !tbaa !129
  %2 = icmp eq ptr %1, null, !dbg !135
  br i1 %2, label %4, label %3, !dbg !136

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #12, !dbg !137
  br label %4, !dbg !137

4:                                                ; preds = %0, %3
  call void @llvm.dbg.value(metadata i64 1, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 1, metadata !123, metadata !DIExpression()), !dbg !124
  %5 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !dbg !125, !tbaa !129
  %6 = icmp eq ptr %5, null, !dbg !135
  br i1 %6, label %8, label %7, !dbg !136

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #12, !dbg !137
  br label %8, !dbg !137

8:                                                ; preds = %7, %4
  call void @llvm.dbg.value(metadata i64 2, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 2, metadata !123, metadata !DIExpression()), !dbg !124
  %9 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !dbg !125, !tbaa !129
  %10 = icmp eq ptr %9, null, !dbg !135
  br i1 %10, label %12, label %11, !dbg !136

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #12, !dbg !137
  br label %12, !dbg !137

12:                                               ; preds = %11, %8
  call void @llvm.dbg.value(metadata i64 3, metadata !123, metadata !DIExpression()), !dbg !124
  %13 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !dbg !138, !tbaa !140
  %14 = icmp eq ptr %13, null, !dbg !142
  br i1 %14, label %16, label %15, !dbg !143

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #12, !dbg !144
  br label %16, !dbg !144

16:                                               ; preds = %15, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false), !dbg !145
  ret void, !dbg !147
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !148 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @njDecode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !152 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !159, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 %1, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 0, metadata !123, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i64 0, metadata !123, metadata !DIExpression()), !dbg !162
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !dbg !164, !tbaa !129
  %5 = icmp eq ptr %4, null, !dbg !165
  br i1 %5, label %7, label %6, !dbg !166

6:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %4) #12, !dbg !167
  br label %7, !dbg !167

7:                                                ; preds = %6, %2
  call void @llvm.dbg.value(metadata i64 1, metadata !123, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i64 1, metadata !123, metadata !DIExpression()), !dbg !162
  %8 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !dbg !164, !tbaa !129
  %9 = icmp eq ptr %8, null, !dbg !165
  br i1 %9, label %11, label %10, !dbg !166

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #12, !dbg !167
  br label %11, !dbg !167

11:                                               ; preds = %10, %7
  call void @llvm.dbg.value(metadata i64 2, metadata !123, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i64 2, metadata !123, metadata !DIExpression()), !dbg !162
  %12 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !dbg !164, !tbaa !129
  %13 = icmp eq ptr %12, null, !dbg !165
  br i1 %13, label %15, label %14, !dbg !166

14:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #12, !dbg !167
  br label %15, !dbg !167

15:                                               ; preds = %14, %11
  call void @llvm.dbg.value(metadata i64 3, metadata !123, metadata !DIExpression()), !dbg !162
  %16 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !dbg !168, !tbaa !140
  %17 = icmp eq ptr %16, null, !dbg !169
  br i1 %17, label %19, label %18, !dbg !170

18:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %16) #12, !dbg !171
  br label %19, !dbg !171

19:                                               ; preds = %15, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false), !dbg !172
  store ptr %0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !174, !tbaa !175
  %20 = and i32 %1, 2147483647, !dbg !176
  store i32 %20, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !177, !tbaa !178
  %21 = icmp ult i32 %20, 2, !dbg !179
  br i1 %21, label %1655, label %22, !dbg !181

22:                                               ; preds = %19
  %23 = load i8, ptr %0, align 1, !dbg !182, !tbaa !184
  %24 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !185
  %25 = load i8, ptr %24, align 1, !dbg !185, !tbaa !184
  %26 = icmp eq i8 %25, -40, !dbg !186
  %27 = icmp eq i8 %23, -1, !dbg !186
  %28 = and i1 %27, %26, !dbg !186
  br i1 %28, label %29, label %1655, !dbg !187

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !193
  %30 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !195
  store ptr %30, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !195, !tbaa !175
  %31 = add nsw i32 %20, -2, !dbg !196
  store i32 %31, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !196, !tbaa !178
  store i32 -2, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !197, !tbaa !198
  br label %32, !dbg !199

32:                                               ; preds = %1111, %29
  %33 = phi i32 [ 0, %29 ], [ %1112, %1111 ]
  %34 = phi i32 [ 0, %29 ], [ %1113, %1111 ]
  %35 = phi i32 [ 0, %29 ], [ %1114, %1111 ]
  %36 = phi i32 [ 0, %29 ], [ %1115, %1111 ]
  %37 = phi i32 [ 0, %29 ], [ %1116, %1111 ]
  %38 = phi i32 [ 0, %29 ], [ %1117, %1111 ], !dbg !200
  switch i32 %38, label %1655 [
    i32 0, label %39
    i32 6, label %1118
  ], !dbg !199

39:                                               ; preds = %32
  %40 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !201, !tbaa !178
  %41 = icmp slt i32 %40, 2, !dbg !204
  br i1 %41, label %1655, label %42, !dbg !205

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !206, !tbaa !175
  %44 = ptrtoint ptr %43 to i64, !dbg !207
  %45 = load i8, ptr %43, align 1, !dbg !207, !tbaa !184
  %46 = icmp eq i8 %45, -1, !dbg !208
  br i1 %46, label %47, label %1655, !dbg !209

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !210
  %48 = getelementptr inbounds i8, ptr %43, i64 2, !dbg !212
  store ptr %48, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !212, !tbaa !175
  %49 = add nsw i32 %40, -2, !dbg !213
  store i32 %49, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !213, !tbaa !178
  %50 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !214, !tbaa !198
  %51 = add nsw i32 %50, -2, !dbg !214
  store i32 %51, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !214, !tbaa !198
  %52 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !215
  %53 = load i8, ptr %52, align 1, !dbg !215, !tbaa !184
  switch i8 %53, label %1076 [
    i8 -64, label %54
    i8 -60, label %235
    i8 -37, label %422
    i8 -35, label %519
    i8 -38, label %550
    i8 -2, label %1044
  ], !dbg !216

54:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !224
  %55 = icmp ult i32 %49, 2, !dbg !227
  br i1 %55, label %233, label %56, !dbg !231

56:                                               ; preds = %54
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !238
  %57 = load i8, ptr %48, align 1, !dbg !240, !tbaa !184
  %58 = zext i8 %57 to i32, !dbg !240
  %59 = shl nuw nsw i32 %58, 8, !dbg !241
  %60 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !242
  %61 = load i8, ptr %60, align 1, !dbg !242, !tbaa !184
  %62 = zext i8 %61 to i32, !dbg !242
  %63 = or i32 %59, %62, !dbg !243
  store i32 %63, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !244, !tbaa !198
  %64 = icmp ult i32 %49, %63, !dbg !245
  br i1 %64, label %233, label %65, !dbg !247

65:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !248
  %66 = getelementptr inbounds i8, ptr %43, i64 4, !dbg !250
  store ptr %66, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !250, !tbaa !175
  %67 = add nsw i32 %40, -4, !dbg !251
  store i32 %67, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !251, !tbaa !178
  %68 = add nsw i32 %63, -2, !dbg !252
  store i32 %68, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !252, !tbaa !198
  %69 = icmp eq i32 %33, 0, !dbg !253
  br i1 %69, label %70, label %1111, !dbg !256

70:                                               ; preds = %65
  %71 = icmp ult i32 %63, 11, !dbg !257
  br i1 %71, label %233, label %72, !dbg !259

72:                                               ; preds = %70
  %73 = load i8, ptr %66, align 1, !dbg !260, !tbaa !184
  %74 = icmp eq i8 %73, 8, !dbg !262
  br i1 %74, label %75, label %233, !dbg !263

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %43, i64 5, !dbg !264
  call void @llvm.dbg.value(metadata ptr %76, metadata !232, metadata !DIExpression()), !dbg !265
  %77 = load i8, ptr %76, align 1, !dbg !267, !tbaa !184
  %78 = zext i8 %77 to i32, !dbg !267
  %79 = shl nuw nsw i32 %78, 8, !dbg !268
  %80 = getelementptr inbounds i8, ptr %43, i64 6, !dbg !269
  %81 = load i8, ptr %80, align 1, !dbg !269, !tbaa !184
  %82 = zext i8 %81 to i32, !dbg !269
  %83 = or i32 %79, %82, !dbg !270
  store i32 %83, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !dbg !271, !tbaa !272
  %84 = getelementptr inbounds i8, ptr %43, i64 7, !dbg !273
  call void @llvm.dbg.value(metadata ptr %84, metadata !232, metadata !DIExpression()), !dbg !274
  %85 = load i8, ptr %84, align 1, !dbg !276, !tbaa !184
  %86 = zext i8 %85 to i16, !dbg !276
  %87 = shl nuw i16 %86, 8, !dbg !277
  %88 = getelementptr inbounds i8, ptr %43, i64 8, !dbg !278
  %89 = load i8, ptr %88, align 1, !dbg !278, !tbaa !184
  %90 = zext i8 %89 to i16, !dbg !278
  %91 = or i16 %87, %90, !dbg !279
  %92 = zext i16 %91 to i32, !dbg !280
  store i32 %92, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !dbg !281, !tbaa !282
  %93 = icmp ne i16 %91, 0, !dbg !283
  %94 = icmp ne i32 %83, 0
  %95 = select i1 %93, i1 %94, i1 false, !dbg !285
  br i1 %95, label %96, label %233, !dbg !285

96:                                               ; preds = %75
  %97 = getelementptr inbounds i8, ptr %43, i64 9, !dbg !286
  %98 = load i8, ptr %97, align 1, !dbg !286, !tbaa !184
  %99 = zext i8 %98 to i32, !dbg !286
  store i32 %99, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !287, !tbaa !288
  call void @llvm.dbg.value(metadata i32 6, metadata !188, metadata !DIExpression()), !dbg !289
  %100 = getelementptr inbounds i8, ptr %43, i64 10, !dbg !291
  store ptr %100, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !291, !tbaa !175
  %101 = add nsw i32 %40, -10, !dbg !292
  store i32 %101, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !292, !tbaa !178
  %102 = add nsw i32 %63, -8, !dbg !293
  store i32 %102, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !293, !tbaa !198
  %103 = icmp ult i32 %49, 8, !dbg !294
  br i1 %103, label %104, label %105, !dbg !296

104:                                              ; preds = %96
  store i32 5, ptr @nj, align 8, !dbg !297, !tbaa !298
  br label %105, !dbg !299

105:                                              ; preds = %104, %96
  %106 = phi i32 [ 5, %104 ], [ 0, %96 ]
  switch i8 %98, label %233 [
    i8 1, label %107
    i8 3, label %107
  ], !dbg !300

107:                                              ; preds = %105, %105
  %108 = mul nuw nsw i32 %99, 3, !dbg !301
  %109 = icmp ult i32 %102, %108, !dbg !303
  br i1 %109, label %233, label %110, !dbg !304

110:                                              ; preds = %107
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !224
  %111 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 12), align 8, !tbaa !305
  br label %112, !dbg !306

112:                                              ; preds = %157, %110
  %113 = phi i32 [ %158, %157 ], [ %106, %110 ]
  %114 = phi i32 [ %159, %157 ], [ %106, %110 ]
  %115 = phi ptr [ %165, %157 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %110 ]
  %116 = phi i32 [ %163, %157 ], [ 0, %110 ]
  %117 = phi i32 [ %162, %157 ], [ 0, %110 ]
  %118 = phi i32 [ %164, %157 ], [ 0, %110 ]
  %119 = phi ptr [ %152, %157 ], [ %100, %110 ]
  %120 = phi i32 [ %153, %157 ], [ %101, %110 ]
  %121 = phi i32 [ %154, %157 ], [ %102, %110 ]
  %122 = phi i32 [ %161, %157 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata ptr %115, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %116, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %117, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %118, metadata !220, metadata !DIExpression()), !dbg !224
  %123 = load i8, ptr %119, align 1, !dbg !308, !tbaa !184
  %124 = zext i8 %123 to i32, !dbg !308
  store i32 %124, ptr %115, align 8, !dbg !311, !tbaa !312
  %125 = getelementptr inbounds i8, ptr %119, i64 1, !dbg !313
  %126 = load i8, ptr %125, align 1, !dbg !313, !tbaa !184
  %127 = lshr i8 %126, 4
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 0, i32 1, !dbg !315
  store i32 %128, ptr %129, align 4, !dbg !316, !tbaa !317
  %130 = icmp ult i8 %126, 16, !dbg !316
  br i1 %130, label %233, label %131, !dbg !318

131:                                              ; preds = %112
  %132 = add nuw nsw i32 %128, 15, !dbg !319
  %133 = and i32 %132, %128, !dbg !321
  %134 = icmp eq i32 %133, 0, !dbg !321
  br i1 %134, label %135, label %233, !dbg !322

135:                                              ; preds = %131
  %136 = load i8, ptr %125, align 1, !dbg !323, !tbaa !184
  %137 = and i8 %136, 15, !dbg !325
  %138 = zext i8 %137 to i32, !dbg !325
  %139 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 0, i32 2, !dbg !326
  store i32 %138, ptr %139, align 8, !dbg !327, !tbaa !328
  %140 = icmp eq i8 %137, 0, !dbg !327
  br i1 %140, label %233, label %141, !dbg !329

141:                                              ; preds = %135
  %142 = add nuw nsw i32 %138, 15, !dbg !330
  %143 = and i32 %142, %138, !dbg !332
  %144 = icmp eq i32 %143, 0, !dbg !332
  br i1 %144, label %145, label %233, !dbg !333

145:                                              ; preds = %141
  %146 = getelementptr inbounds i8, ptr %119, i64 2, !dbg !334
  %147 = load i8, ptr %146, align 1, !dbg !334, !tbaa !184
  %148 = zext i8 %147 to i32, !dbg !334
  %149 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 0, i32 6, !dbg !336
  store i32 %148, ptr %149, align 8, !dbg !337, !tbaa !338
  %150 = icmp ult i8 %147, 4, !dbg !339
  br i1 %150, label %151, label %233, !dbg !340

151:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i32 3, metadata !188, metadata !DIExpression()), !dbg !341
  %152 = getelementptr inbounds i8, ptr %119, i64 3, !dbg !343
  store ptr %152, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !343, !tbaa !175
  %153 = add nsw i32 %120, -3, !dbg !344
  store i32 %153, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !344, !tbaa !178
  %154 = add nsw i32 %121, -3, !dbg !345
  store i32 %154, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !345, !tbaa !198
  %155 = icmp slt i32 %120, 3, !dbg !346
  br i1 %155, label %156, label %157, !dbg !347

156:                                              ; preds = %151
  store i32 5, ptr @nj, align 8, !dbg !348, !tbaa !298
  br label %157, !dbg !349

157:                                              ; preds = %156, %151
  %158 = phi i32 [ 5, %156 ], [ %113, %151 ]
  %159 = phi i32 [ 5, %156 ], [ %114, %151 ]
  %160 = shl nuw i32 1, %148, !dbg !350
  %161 = or i32 %160, %122, !dbg !351
  store i32 %161, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 12), align 8, !dbg !351, !tbaa !305
  %162 = call i32 @llvm.smax.i32(i32 %117, i32 %128), !dbg !352
  call void @llvm.dbg.value(metadata i32 %162, metadata !217, metadata !DIExpression()), !dbg !224
  %163 = call i32 @llvm.smax.i32(i32 %116, i32 %138), !dbg !353
  call void @llvm.dbg.value(metadata i32 %163, metadata !221, metadata !DIExpression()), !dbg !224
  %164 = add nuw nsw i32 %118, 1, !dbg !354
  call void @llvm.dbg.value(metadata i32 %164, metadata !220, metadata !DIExpression()), !dbg !224
  %165 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 1, !dbg !355
  call void @llvm.dbg.value(metadata ptr %165, metadata !222, metadata !DIExpression()), !dbg !224
  %166 = icmp eq i32 %164, %99, !dbg !356
  br i1 %166, label %167, label %112, !dbg !306, !llvm.loop !357

167:                                              ; preds = %157
  %168 = icmp eq i8 %98, 1, !dbg !360
  br i1 %168, label %169, label %170, !dbg !362

169:                                              ; preds = %167
  call void @llvm.dbg.value(metadata i32 1, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 1, metadata !217, metadata !DIExpression()), !dbg !224
  store i32 1, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 2), align 8, !dbg !363, !tbaa !328
  store i32 1, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 1), align 4, !dbg !365, !tbaa !317
  br label %170, !dbg !366

170:                                              ; preds = %169, %167
  %171 = phi i32 [ 1, %169 ], [ %162, %167 ], !dbg !224
  %172 = phi i32 [ 1, %169 ], [ %163, %167 ], !dbg !224
  call void @llvm.dbg.value(metadata i32 %172, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %171, metadata !217, metadata !DIExpression()), !dbg !224
  %173 = shl i32 %171, 3, !dbg !367
  store i32 %173, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 8), align 8, !dbg !368, !tbaa !369
  %174 = shl i32 %172, 3, !dbg !370
  store i32 %174, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 9), align 4, !dbg !371, !tbaa !372
  %175 = add nsw i32 %92, -1, !dbg !373
  %176 = add i32 %175, %173, !dbg !374
  %177 = sdiv i32 %176, %173, !dbg !375
  store i32 %177, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 6), align 8, !dbg !376, !tbaa !377
  %178 = add nsw i32 %83, -1, !dbg !378
  %179 = add i32 %178, %174, !dbg !379
  %180 = sdiv i32 %179, %174, !dbg !380
  store i32 %180, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 7), align 4, !dbg !381, !tbaa !382
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), metadata !222, metadata !DIExpression()), !dbg !224
  %181 = add nsw i32 %171, -1
  %182 = add nsw i32 %172, -1
  %183 = shl i32 %177, 3
  %184 = shl i32 %180, 3
  br label %185, !dbg !383

185:                                              ; preds = %216, %170
  %186 = phi ptr [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %170 ], [ %218, %216 ]
  %187 = phi i32 [ 0, %170 ], [ %217, %216 ]
  call void @llvm.dbg.value(metadata ptr %186, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %187, metadata !220, metadata !DIExpression()), !dbg !224
  %188 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 1, !dbg !385
  %189 = load i32, ptr %188, align 4, !dbg !385, !tbaa !317
  %190 = mul nsw i32 %189, %92, !dbg !388
  %191 = add i32 %181, %190, !dbg !389
  %192 = sdiv i32 %191, %171, !dbg !390
  %193 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 3, !dbg !391
  store i32 %192, ptr %193, align 4, !dbg !392, !tbaa !393
  %194 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 2, !dbg !394
  %195 = load i32, ptr %194, align 8, !dbg !394, !tbaa !328
  %196 = mul nsw i32 %195, %83, !dbg !395
  %197 = add i32 %182, %196, !dbg !396
  %198 = sdiv i32 %197, %172, !dbg !397
  %199 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 4, !dbg !398
  store i32 %198, ptr %199, align 8, !dbg !399, !tbaa !400
  %200 = mul i32 %189, %183, !dbg !401
  %201 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 5, !dbg !402
  store i32 %200, ptr %201, align 4, !dbg !403, !tbaa !404
  %202 = icmp sgt i32 %192, 2, !dbg !405
  %203 = icmp eq i32 %189, %171
  %204 = select i1 %202, i1 true, i1 %203, !dbg !407
  br i1 %204, label %205, label %233, !dbg !407

205:                                              ; preds = %185
  %206 = icmp sgt i32 %198, 2, !dbg !408
  %207 = icmp eq i32 %195, %172
  %208 = select i1 %206, i1 true, i1 %207, !dbg !409
  br i1 %208, label %209, label %233, !dbg !409

209:                                              ; preds = %205
  %210 = mul i32 %184, %200, !dbg !410
  %211 = mul i32 %210, %195, !dbg !412
  %212 = sext i32 %211 to i64, !dbg !413
  %213 = call noalias ptr @malloc(i64 noundef %212) #13, !dbg !414
  %214 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 10, !dbg !415
  store ptr %213, ptr %214, align 8, !dbg !416, !tbaa !129
  %215 = icmp eq ptr %213, null, !dbg !416
  br i1 %215, label %233, label %216, !dbg !417

216:                                              ; preds = %209
  %217 = add nuw nsw i32 %187, 1, !dbg !418
  call void @llvm.dbg.value(metadata i32 %217, metadata !220, metadata !DIExpression()), !dbg !224
  %218 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 1, !dbg !419
  call void @llvm.dbg.value(metadata ptr %218, metadata !222, metadata !DIExpression()), !dbg !224
  %219 = icmp eq i32 %217, %99, !dbg !420
  br i1 %219, label %220, label %185, !dbg !383, !llvm.loop !421

220:                                              ; preds = %216
  %221 = icmp eq i8 %98, 3, !dbg !423
  br i1 %221, label %222, label %228, !dbg !425

222:                                              ; preds = %220
  %223 = mul nuw nsw i32 %83, 3, !dbg !426
  %224 = mul i32 %223, %92, !dbg !428
  %225 = zext i32 %224 to i64, !dbg !429
  %226 = call noalias ptr @malloc(i64 noundef %225) #13, !dbg !430
  store ptr %226, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !dbg !431, !tbaa !140
  %227 = icmp eq ptr %226, null, !dbg !432
  br i1 %227, label %233, label %228, !dbg !434

228:                                              ; preds = %222, %220
  call void @llvm.dbg.value(metadata i32 %154, metadata !188, metadata !DIExpression()), !dbg !435
  %229 = sext i32 %154 to i64, !dbg !437
  %230 = getelementptr inbounds i8, ptr %152, i64 %229, !dbg !437
  store ptr %230, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !437, !tbaa !175
  %231 = sub nsw i32 %153, %154, !dbg !438
  store i32 %231, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !438, !tbaa !178
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !439, !tbaa !198
  %232 = icmp slt i32 %231, 0, !dbg !440
  br i1 %232, label %233, label %1111, !dbg !441

233:                                              ; preds = %145, %141, %135, %131, %112, %209, %205, %185, %228, %222, %107, %105, %75, %72, %70, %56, %54
  %234 = phi i32 [ 5, %54 ], [ 5, %56 ], [ 5, %70 ], [ 2, %72 ], [ 5, %75 ], [ 2, %105 ], [ 5, %107 ], [ 3, %222 ], [ 5, %228 ], [ 3, %209 ], [ 2, %185 ], [ 2, %205 ], [ 5, %145 ], [ 2, %141 ], [ 5, %135 ], [ 2, %131 ], [ 5, %112 ]
  store i32 %234, ptr @nj, align 8, !dbg !224, !tbaa !298
  br label %1111, !dbg !442

235:                                              ; preds = %47
  %236 = icmp ult i32 %49, 2, !dbg !443
  br i1 %236, label %420, label %237, !dbg !446

237:                                              ; preds = %235
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !447
  %238 = load i8, ptr %48, align 1, !dbg !449, !tbaa !184
  %239 = zext i8 %238 to i32, !dbg !449
  %240 = shl nuw nsw i32 %239, 8, !dbg !450
  %241 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !451
  %242 = load i8, ptr %241, align 1, !dbg !451, !tbaa !184
  %243 = zext i8 %242 to i32, !dbg !451
  %244 = or i32 %240, %243, !dbg !452
  store i32 %244, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !453, !tbaa !198
  %245 = icmp ult i32 %49, %244, !dbg !454
  br i1 %245, label %420, label %246, !dbg !455

246:                                              ; preds = %237
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !456
  %247 = getelementptr inbounds i8, ptr %43, i64 4, !dbg !458
  store ptr %247, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !458, !tbaa !175
  %248 = add nsw i32 %40, -4, !dbg !459
  store i32 %248, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !459, !tbaa !178
  %249 = add nsw i32 %244, -2, !dbg !460
  store i32 %249, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !460, !tbaa !198
  %250 = icmp eq i32 %34, 0, !dbg !461
  br i1 %250, label %251, label %1111, !dbg !464

251:                                              ; preds = %246
  %252 = icmp ugt i32 %244, 18, !dbg !465
  br i1 %252, label %255, label %414, !dbg !466

253:                                              ; preds = %298, %401, %285
  %254 = icmp sgt i32 %396, 16, !dbg !465
  br i1 %254, label %255, label %414, !dbg !466

255:                                              ; preds = %251, %253
  %256 = phi i32 [ %391, %253 ], [ %33, %251 ]
  %257 = phi i32 [ %392, %253 ], [ 0, %251 ]
  %258 = phi i32 [ %393, %253 ], [ 0, %251 ]
  %259 = phi i32 [ %396, %253 ], [ %249, %251 ]
  %260 = phi ptr [ %395, %253 ], [ %247, %251 ]
  %261 = phi i32 [ %394, %253 ], [ %248, %251 ]
  %262 = load i8, ptr %260, align 1, !dbg !467, !tbaa !184
  %263 = zext i8 %262 to i32, !dbg !467
  call void @llvm.dbg.value(metadata i32 %263, metadata !34, metadata !DIExpression()), !dbg !468
  %264 = and i32 %263, 236, !dbg !469
  %265 = icmp eq i32 %264, 0, !dbg !469
  br i1 %265, label %266, label %420, !dbg !471

266:                                              ; preds = %255
  %267 = and i32 %263, 2, !dbg !472
  %268 = icmp eq i32 %267, 0, !dbg !472
  br i1 %268, label %269, label %420, !dbg !474

269:                                              ; preds = %266
  %270 = lshr i32 %263, 3
  %271 = or i32 %270, %263, !dbg !475
  call void @llvm.dbg.value(metadata i32 %273, metadata !34, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 1, metadata !30, metadata !DIExpression()), !dbg !468
  %272 = getelementptr i8, ptr %260, i64 1, !dbg !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @njDecodeDHT.counts, ptr noundef nonnull align 1 dereferenceable(16) %272, i64 16, i1 false), !dbg !478, !tbaa !184
  call void @llvm.dbg.value(metadata i64 poison, metadata !30, metadata !DIExpression()), !dbg !468
  %273 = and i32 %271, 3, !dbg !480
  call void @llvm.dbg.value(metadata i32 17, metadata !188, metadata !DIExpression()), !dbg !481
  %274 = getelementptr inbounds i8, ptr %260, i64 17, !dbg !483
  store ptr %274, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !483, !tbaa !175
  %275 = add nsw i32 %261, -17, !dbg !484
  store i32 %275, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !484, !tbaa !178
  %276 = add nsw i32 %259, -17, !dbg !485
  store i32 %276, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !485, !tbaa !198
  %277 = icmp slt i32 %261, 17, !dbg !486
  br i1 %277, label %278, label %279, !dbg !487

278:                                              ; preds = %269
  store i32 5, ptr @nj, align 8, !dbg !488, !tbaa !298
  br label %279, !dbg !489

279:                                              ; preds = %278, %269
  %280 = phi i32 [ 5, %278 ], [ %256, %269 ]
  %281 = phi i32 [ 5, %278 ], [ %257, %269 ]
  %282 = phi i32 [ 5, %278 ], [ %258, %269 ]
  %283 = zext i32 %273 to i64
  %284 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %283, !dbg !490
  call void @llvm.dbg.value(metadata i32 1, metadata !30, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata ptr %284, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 65536, metadata !33, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 65536, metadata !32, metadata !DIExpression()), !dbg !468
  br label %302, !dbg !491

285:                                              ; preds = %390
  call void @llvm.dbg.value(metadata ptr %398, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %397, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  %286 = icmp eq i32 %397, 0, !dbg !492
  br i1 %286, label %253, label %287, !dbg !492, !llvm.loop !493

287:                                              ; preds = %285
  %288 = and i32 %397, 7, !dbg !492
  %289 = icmp eq i32 %288, 0, !dbg !492
  br i1 %289, label %298, label %290, !dbg !492

290:                                              ; preds = %287, %290
  %291 = phi ptr [ %295, %290 ], [ %398, %287 ]
  %292 = phi i32 [ %294, %290 ], [ %397, %287 ]
  %293 = phi i32 [ %296, %290 ], [ 0, %287 ]
  call void @llvm.dbg.value(metadata ptr %291, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %292, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  %294 = add nsw i32 %292, -1, !dbg !495
  call void @llvm.dbg.value(metadata i32 %294, metadata !32, metadata !DIExpression()), !dbg !468
  store i8 0, ptr %291, align 1, !dbg !496, !tbaa !498
  %295 = getelementptr inbounds %struct._nj_code, ptr %291, i64 1, !dbg !500
  call void @llvm.dbg.value(metadata ptr %295, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %294, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  %296 = add i32 %293, 1, !dbg !492
  %297 = icmp eq i32 %296, %288, !dbg !492
  br i1 %297, label %298, label %290, !dbg !492, !llvm.loop !501

298:                                              ; preds = %290, %287
  %299 = phi ptr [ %398, %287 ], [ %295, %290 ]
  %300 = phi i32 [ %397, %287 ], [ %294, %290 ]
  %301 = icmp ult i32 %397, 8, !dbg !492
  br i1 %301, label %253, label %401, !dbg !492

302:                                              ; preds = %390, %279
  %303 = phi i32 [ %280, %279 ], [ %391, %390 ]
  %304 = phi i32 [ %281, %279 ], [ %392, %390 ]
  %305 = phi i32 [ %282, %279 ], [ %393, %390 ]
  %306 = phi i64 [ 1, %279 ], [ %399, %390 ]
  %307 = phi ptr [ %284, %279 ], [ %398, %390 ]
  %308 = phi i32 [ 65536, %279 ], [ %313, %390 ]
  %309 = phi i32 [ 65536, %279 ], [ %397, %390 ]
  %310 = phi i32 [ %276, %279 ], [ %396, %390 ]
  %311 = phi ptr [ %274, %279 ], [ %395, %390 ]
  %312 = phi i32 [ %275, %279 ], [ %394, %390 ]
  call void @llvm.dbg.value(metadata i64 %306, metadata !30, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata ptr %307, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %308, metadata !33, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %309, metadata !32, metadata !DIExpression()), !dbg !468
  %313 = lshr i32 %308, 1, !dbg !503
  call void @llvm.dbg.value(metadata i32 %313, metadata !33, metadata !DIExpression()), !dbg !468
  %314 = add nsw i64 %306, -1, !dbg !504
  %315 = getelementptr inbounds [16 x i8], ptr @njDecodeDHT.counts, i64 0, i64 %314, !dbg !505
  %316 = load i8, ptr %315, align 1, !dbg !505, !tbaa !184
  %317 = zext i8 %316 to i32, !dbg !505
  call void @llvm.dbg.value(metadata i32 %317, metadata !31, metadata !DIExpression()), !dbg !468
  %318 = icmp eq i8 %316, 0, !dbg !506
  br i1 %318, label %390, label %319, !dbg !508

319:                                              ; preds = %302
  %320 = icmp slt i32 %310, %317, !dbg !509
  br i1 %320, label %420, label %321, !dbg !511

321:                                              ; preds = %319
  %322 = trunc i64 %306 to i32, !dbg !512
  %323 = sub i32 16, %322, !dbg !512
  %324 = shl nuw nsw i32 %317, %323, !dbg !512
  %325 = sub nsw i32 %309, %324, !dbg !513
  call void @llvm.dbg.value(metadata i32 %325, metadata !32, metadata !DIExpression()), !dbg !468
  %326 = icmp slt i32 %325, 0, !dbg !514
  br i1 %326, label %420, label %327, !dbg !516

327:                                              ; preds = %321
  call void @llvm.dbg.value(metadata ptr %307, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 0, metadata !34, metadata !DIExpression()), !dbg !468
  %328 = trunc i64 %306 to i8
  %329 = zext i8 %316 to i64, !dbg !517
  %330 = add nsw i32 %313, -1, !dbg !518
  %331 = zext i32 %330 to i64, !dbg !518
  %332 = add nuw nsw i64 %331, 1, !dbg !518
  %333 = icmp ult i32 %330, 15
  %334 = and i64 %332, -16
  %335 = shl nuw nsw i64 %334, 1
  %336 = trunc i64 %334 to i32
  %337 = sub i32 %313, %336
  %338 = insertelement <8 x i8> poison, i8 %328, i64 0
  %339 = shufflevector <8 x i8> %338, <8 x i8> poison, <8 x i32> zeroinitializer
  %340 = insertelement <8 x i8> poison, i8 %328, i64 0
  %341 = shufflevector <8 x i8> %340, <8 x i8> poison, <8 x i32> zeroinitializer
  %342 = icmp eq i64 %332, %334
  br label %343, !dbg !518

343:                                              ; preds = %380, %327
  %344 = phi i64 [ 0, %327 ], [ %382, %380 ]
  %345 = phi ptr [ %307, %327 ], [ %381, %380 ]
  call void @llvm.dbg.value(metadata ptr %345, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i64 %344, metadata !34, metadata !DIExpression()), !dbg !468
  %346 = getelementptr inbounds i8, ptr %311, i64 %344, !dbg !519
  %347 = load i8, ptr %346, align 1, !dbg !519, !tbaa !184
  call void @llvm.dbg.value(metadata i8 %347, metadata !43, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i32 %313, metadata !35, metadata !DIExpression()), !dbg !468
  br i1 %333, label %370, label %348, !dbg !521

348:                                              ; preds = %343
  %349 = getelementptr i8, ptr %345, i64 %335, !dbg !521
  %350 = insertelement <8 x i8> poison, i8 %347, i64 0, !dbg !521
  %351 = shufflevector <8 x i8> %350, <8 x i8> poison, <8 x i32> zeroinitializer, !dbg !521
  %352 = insertelement <8 x i8> poison, i8 %347, i64 0, !dbg !521
  %353 = shufflevector <8 x i8> %352, <8 x i8> poison, <8 x i32> zeroinitializer, !dbg !521
  %354 = shufflevector <8 x i8> %339, <8 x i8> %351, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %355 = shufflevector <8 x i8> %341, <8 x i8> %353, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  br label %356, !dbg !521

356:                                              ; preds = %356, %348
  %357 = phi i64 [ 0, %348 ], [ %367, %356 ]
  %358 = shl i64 %357, 1, !dbg !521
  %359 = getelementptr i8, ptr %345, i64 %358, !dbg !521
  %360 = shl i64 %357, 1, !dbg !521
  %361 = or i64 %360, 16, !dbg !521
  %362 = getelementptr i8, ptr %345, i64 %361, !dbg !521
  %363 = getelementptr inbounds %struct._nj_code, ptr %359, i64 0, i32 1, !dbg !523
  %364 = getelementptr inbounds %struct._nj_code, ptr %362, i64 0, i32 1, !dbg !523
  %365 = getelementptr inbounds i8, ptr %363, i64 -1, !dbg !523
  %366 = getelementptr inbounds i8, ptr %364, i64 -1, !dbg !523
  store <16 x i8> %354, ptr %365, align 1, !dbg !526, !tbaa !184
  store <16 x i8> %355, ptr %366, align 1, !dbg !526, !tbaa !184
  %367 = add nuw i64 %357, 16
  %368 = icmp eq i64 %367, %334
  br i1 %368, label %369, label %356, !llvm.loop !527

369:                                              ; preds = %356
  br i1 %342, label %380, label %370, !dbg !521

370:                                              ; preds = %343, %369
  %371 = phi ptr [ %345, %343 ], [ %349, %369 ]
  %372 = phi i32 [ %313, %343 ], [ %337, %369 ]
  br label %373, !dbg !521

373:                                              ; preds = %370, %373
  %374 = phi ptr [ %377, %373 ], [ %371, %370 ]
  %375 = phi i32 [ %378, %373 ], [ %372, %370 ]
  call void @llvm.dbg.value(metadata ptr %374, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %375, metadata !35, metadata !DIExpression()), !dbg !468
  store i8 %328, ptr %374, align 1, !dbg !531, !tbaa !498
  %376 = getelementptr inbounds %struct._nj_code, ptr %374, i64 0, i32 1, !dbg !523
  store i8 %347, ptr %376, align 1, !dbg !526, !tbaa !532
  %377 = getelementptr inbounds %struct._nj_code, ptr %374, i64 1, !dbg !533
  call void @llvm.dbg.value(metadata ptr %377, metadata !36, metadata !DIExpression()), !dbg !468
  %378 = add nsw i32 %375, -1, !dbg !534
  call void @llvm.dbg.value(metadata i32 %378, metadata !35, metadata !DIExpression()), !dbg !468
  %379 = icmp eq i32 %378, 0, !dbg !521
  br i1 %379, label %380, label %373, !dbg !521, !llvm.loop !535

380:                                              ; preds = %373, %369
  %381 = phi ptr [ %349, %369 ], [ %377, %373 ], !dbg !533
  %382 = add nuw nsw i64 %344, 1, !dbg !536
  call void @llvm.dbg.value(metadata ptr %381, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i64 %382, metadata !34, metadata !DIExpression()), !dbg !468
  %383 = icmp eq i64 %382, %329, !dbg !517
  br i1 %383, label %384, label %343, !dbg !518, !llvm.loop !537

384:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i32 %317, metadata !188, metadata !DIExpression()), !dbg !539
  %385 = getelementptr inbounds i8, ptr %311, i64 %329, !dbg !541
  store ptr %385, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !541, !tbaa !175
  %386 = sub nsw i32 %312, %317, !dbg !542
  store i32 %386, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !542, !tbaa !178
  %387 = sub nsw i32 %310, %317, !dbg !543
  store i32 %387, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !543, !tbaa !198
  %388 = icmp slt i32 %386, 0, !dbg !544
  br i1 %388, label %389, label %390, !dbg !545

389:                                              ; preds = %384
  store i32 5, ptr @nj, align 8, !dbg !546, !tbaa !298
  br label %390, !dbg !547

390:                                              ; preds = %389, %384, %302
  %391 = phi i32 [ %303, %302 ], [ %303, %384 ], [ 5, %389 ]
  %392 = phi i32 [ %304, %302 ], [ %304, %384 ], [ 5, %389 ]
  %393 = phi i32 [ %305, %302 ], [ %305, %384 ], [ 5, %389 ]
  %394 = phi i32 [ %312, %302 ], [ %386, %384 ], [ %386, %389 ]
  %395 = phi ptr [ %311, %302 ], [ %385, %384 ], [ %385, %389 ]
  %396 = phi i32 [ %310, %302 ], [ %387, %384 ], [ %387, %389 ]
  %397 = phi i32 [ %309, %302 ], [ %325, %384 ], [ %325, %389 ], !dbg !548
  %398 = phi ptr [ %307, %302 ], [ %381, %384 ], [ %381, %389 ], !dbg !549
  call void @llvm.dbg.value(metadata ptr %398, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %397, metadata !32, metadata !DIExpression()), !dbg !468
  %399 = add nuw nsw i64 %306, 1, !dbg !550
  call void @llvm.dbg.value(metadata i64 %399, metadata !30, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %313, metadata !33, metadata !DIExpression()), !dbg !468
  %400 = icmp eq i64 %399, 17, !dbg !551
  br i1 %400, label %285, label %302, !dbg !491, !llvm.loop !552

401:                                              ; preds = %298, %401
  %402 = phi ptr [ %412, %401 ], [ %299, %298 ]
  %403 = phi i32 [ %411, %401 ], [ %300, %298 ]
  call void @llvm.dbg.value(metadata ptr %402, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %402, align 1, !dbg !496, !tbaa !498
  %404 = getelementptr inbounds %struct._nj_code, ptr %402, i64 1, !dbg !500
  call void @llvm.dbg.value(metadata ptr %404, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %404, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %404, align 1, !dbg !496, !tbaa !498
  %405 = getelementptr inbounds %struct._nj_code, ptr %402, i64 2, !dbg !500
  call void @llvm.dbg.value(metadata ptr %405, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %405, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %405, align 1, !dbg !496, !tbaa !498
  %406 = getelementptr inbounds %struct._nj_code, ptr %402, i64 3, !dbg !500
  call void @llvm.dbg.value(metadata ptr %406, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %406, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %406, align 1, !dbg !496, !tbaa !498
  %407 = getelementptr inbounds %struct._nj_code, ptr %402, i64 4, !dbg !500
  call void @llvm.dbg.value(metadata ptr %407, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %407, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %407, align 1, !dbg !496, !tbaa !498
  %408 = getelementptr inbounds %struct._nj_code, ptr %402, i64 5, !dbg !500
  call void @llvm.dbg.value(metadata ptr %408, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %408, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %408, align 1, !dbg !496, !tbaa !498
  %409 = getelementptr inbounds %struct._nj_code, ptr %402, i64 6, !dbg !500
  call void @llvm.dbg.value(metadata ptr %409, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %409, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  store i8 0, ptr %409, align 1, !dbg !496, !tbaa !498
  %410 = getelementptr inbounds %struct._nj_code, ptr %402, i64 7, !dbg !500
  call void @llvm.dbg.value(metadata ptr %410, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  call void @llvm.dbg.value(metadata ptr %410, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %403, metadata !32, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  %411 = add nsw i32 %403, -8, !dbg !495
  call void @llvm.dbg.value(metadata i32 %411, metadata !32, metadata !DIExpression()), !dbg !468
  store i8 0, ptr %410, align 1, !dbg !496, !tbaa !498
  %412 = getelementptr inbounds %struct._nj_code, ptr %402, i64 8, !dbg !500
  call void @llvm.dbg.value(metadata ptr %412, metadata !36, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %411, metadata !32, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !468
  %413 = icmp eq i32 %411, 0, !dbg !492
  br i1 %413, label %253, label %401, !dbg !492, !llvm.loop !554

414:                                              ; preds = %253, %251
  %415 = phi i32 [ %33, %251 ], [ %391, %253 ]
  %416 = phi i32 [ 0, %251 ], [ %392, %253 ]
  %417 = phi i32 [ 0, %251 ], [ %393, %253 ]
  %418 = phi i32 [ %249, %251 ], [ %396, %253 ], !dbg !556
  %419 = icmp eq i32 %418, 0, !dbg !557
  br i1 %419, label %1111, label %420, !dbg !559

420:                                              ; preds = %266, %255, %321, %319, %414, %237, %235
  %421 = phi i32 [ 5, %235 ], [ 5, %237 ], [ 5, %414 ], [ 5, %319 ], [ 5, %321 ], [ 2, %266 ], [ 5, %255 ]
  store i32 %421, ptr @nj, align 8, !dbg !468, !tbaa !298
  br label %1111, !dbg !560

422:                                              ; preds = %47
  %423 = icmp ult i32 %49, 2, !dbg !561
  br i1 %423, label %518, label %424, !dbg !568

424:                                              ; preds = %422
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !569
  %425 = load i8, ptr %48, align 1, !dbg !571, !tbaa !184
  %426 = zext i8 %425 to i32, !dbg !571
  %427 = shl nuw nsw i32 %426, 8, !dbg !572
  %428 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !573
  %429 = load i8, ptr %428, align 1, !dbg !573, !tbaa !184
  %430 = zext i8 %429 to i32, !dbg !573
  %431 = or i32 %427, %430, !dbg !574
  store i32 %431, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !575, !tbaa !198
  %432 = icmp ult i32 %49, %431, !dbg !576
  br i1 %432, label %518, label %433, !dbg !577

433:                                              ; preds = %424
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !578
  %434 = getelementptr inbounds i8, ptr %43, i64 4, !dbg !580
  store ptr %434, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !580, !tbaa !175
  %435 = add nsw i32 %40, -4, !dbg !581
  store i32 %435, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !581, !tbaa !178
  %436 = add nsw i32 %431, -2, !dbg !582
  store i32 %436, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !582, !tbaa !198
  %437 = icmp eq i32 %35, 0, !dbg !583
  br i1 %437, label %438, label %1111, !dbg !586

438:                                              ; preds = %433
  %439 = icmp ugt i32 %431, 66, !dbg !587
  br i1 %439, label %440, label %511, !dbg !588

440:                                              ; preds = %438
  %441 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 13), align 4, !tbaa !589
  %442 = add i64 %44, 5, !dbg !588
  br label %443, !dbg !588

443:                                              ; preds = %504, %440
  %444 = phi i64 [ %510, %504 ], [ 0, %440 ]
  %445 = phi i32 [ %505, %504 ], [ %33, %440 ]
  %446 = phi i32 [ %506, %504 ], [ %34, %440 ]
  %447 = phi i32 [ %507, %504 ], [ 0, %440 ]
  %448 = phi i32 [ %508, %504 ], [ 0, %440 ]
  %449 = phi i32 [ %501, %504 ], [ %436, %440 ]
  %450 = phi ptr [ %499, %504 ], [ %434, %440 ]
  %451 = phi i32 [ %460, %504 ], [ %441, %440 ]
  %452 = phi i32 [ %500, %504 ], [ %435, %440 ]
  %453 = load i8, ptr %450, align 1, !dbg !590, !tbaa !184
  call void @llvm.dbg.value(metadata i8 %453, metadata !565, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !592
  %454 = icmp ult i8 %453, 4, !dbg !593
  br i1 %454, label %455, label %518, !dbg !595

455:                                              ; preds = %443
  %456 = mul nuw nsw i64 %444, 65, !dbg !590
  %457 = add i64 %442, %456, !dbg !590
  %458 = zext i8 %453 to i32, !dbg !590
  call void @llvm.dbg.value(metadata i32 %458, metadata !565, metadata !DIExpression()), !dbg !592
  %459 = shl nuw nsw i32 1, %458, !dbg !596
  %460 = or i32 %459, %451, !dbg !597
  store i32 %460, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 13), align 4, !dbg !597, !tbaa !589
  %461 = zext i8 %453 to i64
  %462 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %461, !dbg !598
  call void @llvm.dbg.value(metadata ptr %462, metadata !566, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 0, metadata !565, metadata !DIExpression()), !dbg !592
  %463 = shl nuw nsw i64 %461, 6, !dbg !599
  %464 = add i64 %463, add (i64 ptrtoint (ptr @nj to i64), i64 208), !dbg !599
  %465 = sub i64 %464, %457, !dbg !599
  %466 = icmp ult i64 %465, 16, !dbg !599
  br i1 %466, label %479, label %467, !dbg !599

467:                                              ; preds = %455
  %468 = getelementptr inbounds i8, ptr %450, i64 1, !dbg !601
  %469 = load <16 x i8>, ptr %468, align 1, !dbg !601, !tbaa !184
  store <16 x i8> %469, ptr %462, align 8, !dbg !603, !tbaa !184
  %470 = getelementptr inbounds i8, ptr %450, i64 17, !dbg !601
  %471 = load <16 x i8>, ptr %470, align 1, !dbg !601, !tbaa !184
  %472 = getelementptr inbounds i8, ptr %462, i64 16, !dbg !604
  store <16 x i8> %471, ptr %472, align 8, !dbg !603, !tbaa !184
  %473 = getelementptr inbounds i8, ptr %450, i64 33, !dbg !601
  %474 = load <16 x i8>, ptr %473, align 1, !dbg !601, !tbaa !184
  %475 = getelementptr inbounds i8, ptr %462, i64 32, !dbg !604
  store <16 x i8> %474, ptr %475, align 8, !dbg !603, !tbaa !184
  %476 = getelementptr inbounds i8, ptr %450, i64 49, !dbg !601
  %477 = load <16 x i8>, ptr %476, align 1, !dbg !601, !tbaa !184
  %478 = getelementptr inbounds i8, ptr %462, i64 48, !dbg !604
  store <16 x i8> %477, ptr %478, align 8, !dbg !603, !tbaa !184
  br label %498, !dbg !605

479:                                              ; preds = %455, %479
  %480 = phi i64 [ %493, %479 ], [ 0, %455 ]
  call void @llvm.dbg.value(metadata i64 %480, metadata !565, metadata !DIExpression()), !dbg !592
  %481 = or i64 %480, 1, !dbg !607
  %482 = getelementptr inbounds i8, ptr %450, i64 %481, !dbg !601
  %483 = load i8, ptr %482, align 1, !dbg !601, !tbaa !184
  %484 = getelementptr inbounds i8, ptr %462, i64 %480, !dbg !604
  store i8 %483, ptr %484, align 4, !dbg !603, !tbaa !184
  call void @llvm.dbg.value(metadata i64 %481, metadata !565, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %481, metadata !565, metadata !DIExpression()), !dbg !592
  %485 = or i64 %480, 2, !dbg !607
  %486 = getelementptr inbounds i8, ptr %450, i64 %485, !dbg !601
  %487 = load i8, ptr %486, align 1, !dbg !601, !tbaa !184
  %488 = getelementptr inbounds i8, ptr %462, i64 %481, !dbg !604
  store i8 %487, ptr %488, align 1, !dbg !603, !tbaa !184
  call void @llvm.dbg.value(metadata i64 %485, metadata !565, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %485, metadata !565, metadata !DIExpression()), !dbg !592
  %489 = or i64 %480, 3, !dbg !607
  %490 = getelementptr inbounds i8, ptr %450, i64 %489, !dbg !601
  %491 = load i8, ptr %490, align 1, !dbg !601, !tbaa !184
  %492 = getelementptr inbounds i8, ptr %462, i64 %485, !dbg !604
  store i8 %491, ptr %492, align 2, !dbg !603, !tbaa !184
  call void @llvm.dbg.value(metadata i64 %489, metadata !565, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %489, metadata !565, metadata !DIExpression()), !dbg !592
  %493 = add nuw nsw i64 %480, 4, !dbg !607
  %494 = getelementptr inbounds i8, ptr %450, i64 %493, !dbg !601
  %495 = load i8, ptr %494, align 1, !dbg !601, !tbaa !184
  %496 = getelementptr inbounds i8, ptr %462, i64 %489, !dbg !604
  store i8 %495, ptr %496, align 1, !dbg !603, !tbaa !184
  call void @llvm.dbg.value(metadata i64 %493, metadata !565, metadata !DIExpression()), !dbg !592
  %497 = icmp eq i64 %493, 64, !dbg !608
  br i1 %497, label %498, label %479, !dbg !599, !llvm.loop !609

498:                                              ; preds = %479, %467
  call void @llvm.dbg.value(metadata i32 65, metadata !188, metadata !DIExpression()), !dbg !611
  %499 = getelementptr inbounds i8, ptr %450, i64 65, !dbg !605
  store ptr %499, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !605, !tbaa !175
  %500 = add nsw i32 %452, -65, !dbg !612
  store i32 %500, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !612, !tbaa !178
  %501 = add nsw i32 %449, -65, !dbg !613
  store i32 %501, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !613, !tbaa !198
  %502 = icmp slt i32 %452, 65, !dbg !614
  br i1 %502, label %503, label %504, !dbg !615

503:                                              ; preds = %498
  store i32 5, ptr @nj, align 8, !dbg !616, !tbaa !298
  br label %504, !dbg !617

504:                                              ; preds = %503, %498
  %505 = phi i32 [ 5, %503 ], [ %445, %498 ]
  %506 = phi i32 [ 5, %503 ], [ %446, %498 ]
  %507 = phi i32 [ 5, %503 ], [ %447, %498 ]
  %508 = phi i32 [ 5, %503 ], [ %448, %498 ]
  %509 = icmp sgt i32 %449, 129, !dbg !587
  %510 = add i64 %444, 1, !dbg !588
  br i1 %509, label %443, label %511, !dbg !588, !llvm.loop !618

511:                                              ; preds = %504, %438
  %512 = phi i32 [ %33, %438 ], [ %505, %504 ]
  %513 = phi i32 [ %34, %438 ], [ %506, %504 ]
  %514 = phi i32 [ 0, %438 ], [ %507, %504 ]
  %515 = phi i32 [ 0, %438 ], [ %508, %504 ]
  %516 = phi i32 [ %436, %438 ], [ %501, %504 ], !dbg !620
  %517 = icmp eq i32 %516, 0, !dbg !621
  br i1 %517, label %1111, label %518, !dbg !623

518:                                              ; preds = %443, %511, %424, %422
  store i32 5, ptr @nj, align 8, !dbg !592, !tbaa !298
  br label %1111, !dbg !624

519:                                              ; preds = %47
  %520 = icmp ult i32 %49, 2, !dbg !625
  br i1 %520, label %549, label %521, !dbg !629

521:                                              ; preds = %519
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !630
  %522 = load i8, ptr %48, align 1, !dbg !632, !tbaa !184
  %523 = zext i8 %522 to i32, !dbg !632
  %524 = shl nuw nsw i32 %523, 8, !dbg !633
  %525 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !634
  %526 = load i8, ptr %525, align 1, !dbg !634, !tbaa !184
  %527 = zext i8 %526 to i32, !dbg !634
  %528 = or i32 %524, %527, !dbg !635
  store i32 %528, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !636, !tbaa !198
  %529 = icmp ult i32 %49, %528, !dbg !637
  br i1 %529, label %549, label %530, !dbg !638

530:                                              ; preds = %521
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !639
  %531 = getelementptr inbounds i8, ptr %43, i64 4, !dbg !641
  store ptr %531, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !641, !tbaa !175
  %532 = add nsw i32 %40, -4, !dbg !642
  store i32 %532, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !642, !tbaa !178
  %533 = add nsw i32 %528, -2, !dbg !643
  store i32 %533, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !643, !tbaa !198
  %534 = icmp eq i32 %36, 0, !dbg !644
  br i1 %534, label %535, label %1111, !dbg !647

535:                                              ; preds = %530
  %536 = icmp ult i32 %528, 4, !dbg !648
  br i1 %536, label %549, label %537, !dbg !650

537:                                              ; preds = %535
  call void @llvm.dbg.value(metadata ptr %531, metadata !232, metadata !DIExpression()), !dbg !651
  %538 = load i8, ptr %531, align 1, !dbg !653, !tbaa !184
  %539 = zext i8 %538 to i32, !dbg !653
  %540 = shl nuw nsw i32 %539, 8, !dbg !654
  %541 = getelementptr inbounds i8, ptr %43, i64 5, !dbg !655
  %542 = load i8, ptr %541, align 1, !dbg !655, !tbaa !184
  %543 = zext i8 %542 to i32, !dbg !655
  %544 = or i32 %540, %543, !dbg !656
  store i32 %544, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !dbg !657, !tbaa !658
  call void @llvm.dbg.value(metadata i32 %533, metadata !188, metadata !DIExpression()), !dbg !659
  %545 = zext i32 %533 to i64, !dbg !661
  %546 = getelementptr inbounds i8, ptr %531, i64 %545, !dbg !661
  store ptr %546, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !661, !tbaa !175
  %547 = sub nsw i32 %532, %533, !dbg !662
  store i32 %547, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !662, !tbaa !178
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !663, !tbaa !198
  %548 = icmp slt i32 %547, 0, !dbg !664
  br i1 %548, label %549, label %1111, !dbg !665

549:                                              ; preds = %537, %535, %521, %519
  store i32 5, ptr @nj, align 8, !dbg !666, !tbaa !298
  br label %1111, !dbg !667

550:                                              ; preds = %47
  %551 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !dbg !668, !tbaa !658
  call void @llvm.dbg.value(metadata i32 %551, metadata !676, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !677, metadata !DIExpression()), !dbg !680
  %552 = icmp ult i32 %49, 2, !dbg !681
  br i1 %552, label %553, label %554, !dbg !683

553:                                              ; preds = %550
  store i32 5, ptr @nj, align 8, !dbg !684, !tbaa !298
  br label %1111, !dbg !684

554:                                              ; preds = %550
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !686
  %555 = load i8, ptr %48, align 1, !dbg !688, !tbaa !184
  %556 = zext i8 %555 to i32, !dbg !688
  %557 = shl nuw nsw i32 %556, 8, !dbg !689
  %558 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !690
  %559 = load i8, ptr %558, align 1, !dbg !690, !tbaa !184
  %560 = zext i8 %559 to i32, !dbg !690
  %561 = or i32 %557, %560, !dbg !691
  store i32 %561, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !692, !tbaa !198
  %562 = icmp ult i32 %49, %561, !dbg !693
  br i1 %562, label %563, label %564, !dbg !694

563:                                              ; preds = %554
  store i32 5, ptr @nj, align 8, !dbg !695, !tbaa !298
  br label %1111, !dbg !695

564:                                              ; preds = %554
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !697
  %565 = getelementptr inbounds i8, ptr %43, i64 4, !dbg !699
  store ptr %565, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !699, !tbaa !175
  %566 = add nsw i32 %40, -4, !dbg !700
  store i32 %566, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !700, !tbaa !178
  %567 = add nsw i32 %561, -2, !dbg !701
  store i32 %567, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !701, !tbaa !198
  %568 = icmp eq i32 %37, 0, !dbg !702
  br i1 %568, label %569, label %1111, !dbg !705

569:                                              ; preds = %564
  %570 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !706, !tbaa !288
  %571 = shl nsw i32 %570, 1, !dbg !708
  %572 = add nsw i32 %571, 4, !dbg !709
  %573 = icmp slt i32 %567, %572, !dbg !710
  br i1 %573, label %574, label %575, !dbg !711

574:                                              ; preds = %569
  store i32 5, ptr @nj, align 8, !dbg !712, !tbaa !298
  br label %1111, !dbg !712

575:                                              ; preds = %569
  %576 = load i8, ptr %565, align 1, !dbg !714, !tbaa !184
  %577 = zext i8 %576 to i32, !dbg !714
  %578 = icmp eq i32 %570, %577, !dbg !716
  br i1 %578, label %580, label %579, !dbg !717

579:                                              ; preds = %575
  store i32 2, ptr @nj, align 8, !dbg !718, !tbaa !298
  br label %1111, !dbg !718

580:                                              ; preds = %575
  call void @llvm.dbg.value(metadata i32 1, metadata !188, metadata !DIExpression()), !dbg !720
  %581 = getelementptr inbounds i8, ptr %43, i64 5, !dbg !722
  store ptr %581, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !722, !tbaa !175
  %582 = add nsw i32 %40, -5, !dbg !723
  store i32 %582, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !723, !tbaa !178
  %583 = add nsw i32 %561, -3, !dbg !724
  store i32 %583, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !724, !tbaa !198
  %584 = icmp ult i32 %49, 3, !dbg !725
  br i1 %584, label %585, label %586, !dbg !726

585:                                              ; preds = %580
  store i32 5, ptr @nj, align 8, !dbg !727, !tbaa !298
  br label %586, !dbg !728

586:                                              ; preds = %585, %580
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), metadata !678, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !680
  %587 = icmp sgt i32 %570, 0, !dbg !729
  br i1 %587, label %588, label %623, !dbg !732

588:                                              ; preds = %586, %619
  %589 = phi ptr [ %621, %619 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %586 ]
  %590 = phi i32 [ %620, %619 ], [ 0, %586 ]
  %591 = phi ptr [ %614, %619 ], [ %581, %586 ]
  %592 = phi i32 [ %615, %619 ], [ %582, %586 ]
  %593 = phi i32 [ %616, %619 ], [ %583, %586 ]
  call void @llvm.dbg.value(metadata ptr %589, metadata !678, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %590, metadata !671, metadata !DIExpression()), !dbg !680
  %594 = load i8, ptr %591, align 1, !dbg !733, !tbaa !184
  %595 = zext i8 %594 to i32, !dbg !733
  %596 = load i32, ptr %589, align 8, !dbg !736, !tbaa !312
  %597 = icmp eq i32 %596, %595, !dbg !737
  br i1 %597, label %599, label %598, !dbg !738

598:                                              ; preds = %588
  store i32 5, ptr @nj, align 8, !dbg !739, !tbaa !298
  br label %1111, !dbg !739

599:                                              ; preds = %588
  %600 = getelementptr inbounds i8, ptr %591, i64 1, !dbg !741
  %601 = load i8, ptr %600, align 1, !dbg !741, !tbaa !184
  %602 = zext i8 %601 to i32, !dbg !741
  %603 = and i32 %602, 238, !dbg !743
  %604 = icmp eq i32 %603, 0, !dbg !743
  br i1 %604, label %606, label %605, !dbg !744

605:                                              ; preds = %599
  store i32 5, ptr @nj, align 8, !dbg !745, !tbaa !298
  br label %1111, !dbg !745

606:                                              ; preds = %599
  %607 = lshr i32 %602, 4
  %608 = getelementptr inbounds %struct._nj_cmp, ptr %589, i64 0, i32 8, !dbg !747
  store i32 %607, ptr %608, align 8, !dbg !748, !tbaa !749
  %609 = load i8, ptr %600, align 1, !dbg !750, !tbaa !184
  %610 = and i8 %609, 1, !dbg !751
  %611 = or i8 %610, 2, !dbg !752
  %612 = zext i8 %611 to i32, !dbg !752
  %613 = getelementptr inbounds %struct._nj_cmp, ptr %589, i64 0, i32 7, !dbg !753
  store i32 %612, ptr %613, align 4, !dbg !754, !tbaa !755
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !756
  %614 = getelementptr inbounds i8, ptr %591, i64 2, !dbg !758
  store ptr %614, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !758, !tbaa !175
  %615 = add nsw i32 %592, -2, !dbg !759
  store i32 %615, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !759, !tbaa !178
  %616 = add nsw i32 %593, -2, !dbg !760
  store i32 %616, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !760, !tbaa !198
  %617 = icmp slt i32 %592, 2, !dbg !761
  br i1 %617, label %618, label %619, !dbg !762

618:                                              ; preds = %606
  store i32 5, ptr @nj, align 8, !dbg !763, !tbaa !298
  br label %619, !dbg !764

619:                                              ; preds = %618, %606
  %620 = add nuw nsw i32 %590, 1, !dbg !765
  call void @llvm.dbg.value(metadata i32 %620, metadata !671, metadata !DIExpression()), !dbg !680
  %621 = getelementptr inbounds %struct._nj_cmp, ptr %589, i64 1, !dbg !766
  call void @llvm.dbg.value(metadata ptr %621, metadata !678, metadata !DIExpression()), !dbg !680
  %622 = icmp eq i32 %620, %570, !dbg !729
  br i1 %622, label %623, label %588, !dbg !732, !llvm.loop !767

623:                                              ; preds = %619, %586
  %624 = phi i32 [ %582, %586 ], [ %615, %619 ]
  %625 = phi i32 [ %583, %586 ], [ %616, %619 ]
  %626 = phi ptr [ %581, %586 ], [ %614, %619 ], !dbg !769
  %627 = load i8, ptr %626, align 1, !dbg !771, !tbaa !184
  %628 = icmp eq i8 %627, 0, !dbg !771
  br i1 %628, label %629, label %637, !dbg !772

629:                                              ; preds = %623
  %630 = getelementptr inbounds i8, ptr %626, i64 1, !dbg !773
  %631 = load i8, ptr %630, align 1, !dbg !773, !tbaa !184
  %632 = icmp eq i8 %631, 63, !dbg !774
  br i1 %632, label %633, label %637, !dbg !775

633:                                              ; preds = %629
  %634 = getelementptr inbounds i8, ptr %626, i64 2, !dbg !776
  %635 = load i8, ptr %634, align 1, !dbg !776, !tbaa !184
  %636 = icmp eq i8 %635, 0, !dbg !776
  br i1 %636, label %638, label %637, !dbg !777

637:                                              ; preds = %633, %629, %623
  store i32 2, ptr @nj, align 8, !dbg !778, !tbaa !298
  br label %1111, !dbg !778

638:                                              ; preds = %633
  call void @llvm.dbg.value(metadata i32 %625, metadata !188, metadata !DIExpression()), !dbg !780
  %639 = sext i32 %625 to i64, !dbg !782
  %640 = getelementptr inbounds i8, ptr %626, i64 %639, !dbg !782
  store ptr %640, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !782, !tbaa !175
  %641 = sub nsw i32 %624, %625, !dbg !783
  store i32 %641, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !783, !tbaa !178
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !784, !tbaa !198
  %642 = icmp slt i32 %641, 0, !dbg !785
  br i1 %642, label %643, label %644, !dbg !786

643:                                              ; preds = %638
  store i32 5, ptr @nj, align 8, !dbg !787, !tbaa !298
  br label %644, !dbg !788

644:                                              ; preds = %643, %638
  br label %645, !dbg !789

645:                                              ; preds = %1038, %644
  %646 = phi i32 [ %1039, %1038 ], [ %570, %644 ]
  %647 = phi i32 [ %1021, %1038 ], [ 0, %644 ]
  %648 = phi i32 [ %1022, %1038 ], [ 0, %644 ]
  %649 = phi i32 [ %1041, %1038 ], [ %551, %644 ]
  %650 = phi i32 [ %1042, %1038 ], [ 0, %644 ]
  br label %651, !dbg !789

651:                                              ; preds = %645, %1025
  %652 = phi i32 [ %1011, %1025 ], [ %646, %645 ]
  %653 = phi i32 [ %1012, %1025 ], [ %646, %645 ]
  %654 = phi i32 [ %1021, %1025 ], [ %647, %645 ]
  %655 = phi i32 [ %1022, %1025 ], [ %648, %645 ]
  %656 = phi i32 [ %1026, %1025 ], [ %649, %645 ]
  br label %657, !dbg !789

657:                                              ; preds = %651, %1020
  %658 = phi i32 [ %1011, %1020 ], [ %652, %651 ]
  %659 = phi i32 [ %1012, %1020 ], [ %653, %651 ], !dbg !791
  %660 = phi i32 [ %1021, %1020 ], [ %654, %651 ], !dbg !796
  %661 = phi i32 [ %1022, %1020 ], [ %655, %651 ], !dbg !796
  call void @llvm.dbg.value(metadata i32 %650, metadata !677, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %656, metadata !676, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %661, metadata !673, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %660, metadata !672, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), metadata !678, metadata !DIExpression()), !dbg !680
  %662 = icmp sgt i32 %659, 0, !dbg !797
  br i1 %662, label %663, label %1010, !dbg !798

663:                                              ; preds = %657, %1005
  %664 = phi i32 [ %1006, %1005 ], [ %658, %657 ]
  %665 = phi ptr [ %1008, %1005 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %657 ]
  %666 = phi i32 [ %1007, %1005 ], [ 0, %657 ]
  call void @llvm.dbg.value(metadata ptr %665, metadata !678, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %666, metadata !671, metadata !DIExpression()), !dbg !680
  %667 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 2
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !680
  %668 = load i32, ptr %667, align 8, !dbg !799, !tbaa !328
  %669 = icmp sgt i32 %668, 0, !dbg !802
  br i1 %669, label %670, label %1005, !dbg !803

670:                                              ; preds = %663
  %671 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 1
  %672 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 10
  %673 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 5
  %674 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 8
  %675 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 9
  %676 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 6
  %677 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 7
  %678 = load i32, ptr %671, align 4, !dbg !804, !tbaa !317
  br label %679, !dbg !803

679:                                              ; preds = %998, %670
  %680 = phi i32 [ %668, %670 ], [ %999, %998 ]
  %681 = phi i32 [ %678, %670 ], [ %1000, %998 ], !dbg !804
  %682 = phi i32 [ 0, %670 ], [ %1001, %998 ]
  call void @llvm.dbg.value(metadata i32 %682, metadata !675, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !680
  %683 = icmp sgt i32 %681, 0, !dbg !807
  br i1 %683, label %688, label %998, !dbg !808

684:                                              ; preds = %993
  %685 = add nuw nsw i32 %690, 1, !dbg !809
  call void @llvm.dbg.value(metadata i32 poison, metadata !674, metadata !DIExpression()), !dbg !680
  %686 = load i32, ptr %671, align 4, !dbg !804, !tbaa !317
  %687 = icmp slt i32 %685, %686, !dbg !807
  br i1 %687, label %688, label %996, !dbg !808, !llvm.loop !810

688:                                              ; preds = %679, %684
  %689 = phi i32 [ %686, %684 ], [ %681, %679 ]
  %690 = phi i32 [ %685, %684 ], [ 0, %679 ]
  call void @llvm.dbg.value(metadata i32 %690, metadata !674, metadata !DIExpression()), !dbg !680
  %691 = load ptr, ptr %672, align 8, !dbg !812, !tbaa !129
  %692 = load i32, ptr %667, align 8, !dbg !814, !tbaa !328
  %693 = mul nsw i32 %692, %661, !dbg !815
  %694 = add nsw i32 %693, %682, !dbg !816
  %695 = load i32, ptr %673, align 4, !dbg !817, !tbaa !404
  %696 = mul nsw i32 %694, %695, !dbg !818
  %697 = mul nsw i32 %689, %660, !dbg !819
  %698 = add i32 %697, %690, !dbg !820
  %699 = add i32 %698, %696, !dbg !821
  %700 = shl i32 %699, 3, !dbg !822
  %701 = sext i32 %700 to i64, !dbg !823
  %702 = getelementptr inbounds i8, ptr %691, i64 %701, !dbg !823
  call void @llvm.dbg.value(metadata ptr %665, metadata !824, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr %702, metadata !829, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12, !dbg !835
  call void @llvm.dbg.value(metadata i8 0, metadata !830, metadata !DIExpression()), !dbg !833
  store i8 0, ptr %3, align 1, !dbg !836, !tbaa !184
  call void @llvm.dbg.value(metadata i32 0, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 18), i8 0, i64 256, i1 false), !dbg !837
  %703 = load i32, ptr %674, align 8, !dbg !838, !tbaa !749
  %704 = sext i32 %703 to i64, !dbg !839
  %705 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %704, !dbg !839
  %706 = call fastcc i32 @njGetVLC(ptr noundef nonnull %705, ptr noundef null), !dbg !840
  %707 = load i32, ptr %675, align 4, !dbg !841, !tbaa !842
  %708 = add nsw i32 %707, %706, !dbg !841
  store i32 %708, ptr %675, align 4, !dbg !841, !tbaa !842
  %709 = load i32, ptr %676, align 8, !dbg !843, !tbaa !338
  %710 = sext i32 %709 to i64, !dbg !844
  %711 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %710, !dbg !844
  %712 = load i8, ptr %711, align 8, !dbg !844, !tbaa !184
  %713 = zext i8 %712 to i32, !dbg !844
  %714 = mul nsw i32 %708, %713, !dbg !845
  store i32 %714, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 18), align 8, !dbg !846, !tbaa !847
  br label %715, !dbg !848

715:                                              ; preds = %734, %688
  %716 = phi i32 [ 0, %688 ], [ %732, %734 ], !dbg !833
  call void @llvm.dbg.value(metadata i32 %716, metadata !832, metadata !DIExpression()), !dbg !833
  %717 = load i32, ptr %677, align 4, !dbg !849, !tbaa !755
  %718 = sext i32 %717 to i64, !dbg !851
  %719 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %718, !dbg !851
  call void @llvm.dbg.value(metadata ptr %3, metadata !830, metadata !DIExpression(DW_OP_deref)), !dbg !833
  %720 = call fastcc i32 @njGetVLC(ptr noundef nonnull %719, ptr noundef nonnull %3), !dbg !852
  call void @llvm.dbg.value(metadata i32 %720, metadata !831, metadata !DIExpression()), !dbg !833
  %721 = load i8, ptr %3, align 1, !dbg !853, !tbaa !184
  call void @llvm.dbg.value(metadata i8 %721, metadata !830, metadata !DIExpression()), !dbg !833
  %722 = icmp eq i8 %721, 0, !dbg !853
  br i1 %722, label %747, label %723, !dbg !855

723:                                              ; preds = %715
  %724 = zext i8 %721 to i32, !dbg !856
  %725 = and i32 %724, 15, !dbg !858
  %726 = icmp eq i32 %725, 0, !dbg !858
  %727 = icmp ne i8 %721, -16
  %728 = select i1 %726, i1 %727, i1 false, !dbg !859
  br i1 %728, label %992, label %729, !dbg !859

729:                                              ; preds = %723
  %730 = lshr i32 %724, 4
  %731 = add nuw nsw i32 %716, 1, !dbg !860
  %732 = add nuw nsw i32 %731, %730, !dbg !861
  call void @llvm.dbg.value(metadata i32 %732, metadata !832, metadata !DIExpression()), !dbg !833
  %733 = icmp ugt i32 %732, 63, !dbg !862
  br i1 %733, label %992, label %734, !dbg !864

734:                                              ; preds = %729
  %735 = load i32, ptr %676, align 8, !dbg !865, !tbaa !338
  %736 = sext i32 %735 to i64, !dbg !866
  %737 = zext i32 %732 to i64, !dbg !866
  %738 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %736, i64 %737, !dbg !866
  %739 = load i8, ptr %738, align 1, !dbg !866, !tbaa !184
  %740 = zext i8 %739 to i32, !dbg !866
  %741 = mul nsw i32 %720, %740, !dbg !867
  %742 = getelementptr inbounds [64 x i8], ptr @njZZ, i64 0, i64 %737, !dbg !868
  %743 = load i8, ptr %742, align 1, !dbg !868, !tbaa !184
  %744 = sext i8 %743 to i64, !dbg !869
  %745 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %744, !dbg !869
  store i32 %741, ptr %745, align 4, !dbg !870, !tbaa !847
  %746 = icmp eq i32 %732, 63, !dbg !871
  br i1 %746, label %747, label %715, !dbg !872, !llvm.loop !873

747:                                              ; preds = %734, %715
  br label %748, !dbg !875

748:                                              ; preds = %747, %831
  %749 = phi i64 [ %840, %831 ], [ 0, %747 ]
  call void @llvm.dbg.value(metadata i64 %749, metadata !832, metadata !DIExpression()), !dbg !833
  %750 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %749, !dbg !877
  call void @llvm.dbg.value(metadata ptr %750, metadata !879, metadata !DIExpression()), !dbg !894
  %751 = getelementptr inbounds i32, ptr %750, i64 4, !dbg !896
  %752 = load i32, ptr %751, align 8, !dbg !896, !tbaa !847
  %753 = shl i32 %752, 11, !dbg !898
  call void @llvm.dbg.value(metadata i32 %753, metadata !886, metadata !DIExpression()), !dbg !894
  %754 = getelementptr inbounds i32, ptr %750, i64 6, !dbg !899
  %755 = load i32, ptr %754, align 8, !dbg !899, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %755, metadata !887, metadata !DIExpression()), !dbg !894
  %756 = or i32 %753, %755, !dbg !900
  %757 = getelementptr inbounds i32, ptr %750, i64 2, !dbg !901
  %758 = load i32, ptr %757, align 8, !dbg !901, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %758, metadata !888, metadata !DIExpression()), !dbg !894
  %759 = or i32 %756, %758, !dbg !902
  %760 = getelementptr inbounds i32, ptr %750, i64 1, !dbg !903
  %761 = load i32, ptr %760, align 4, !dbg !903, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %761, metadata !889, metadata !DIExpression()), !dbg !894
  %762 = or i32 %759, %761, !dbg !904
  %763 = getelementptr inbounds i32, ptr %750, i64 7, !dbg !905
  %764 = load i32, ptr %763, align 4, !dbg !905, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %764, metadata !890, metadata !DIExpression()), !dbg !894
  %765 = or i32 %762, %764, !dbg !906
  %766 = getelementptr inbounds i32, ptr %750, i64 5, !dbg !907
  %767 = load i32, ptr %766, align 4, !dbg !907, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %767, metadata !891, metadata !DIExpression()), !dbg !894
  %768 = or i32 %765, %767, !dbg !908
  %769 = getelementptr inbounds i32, ptr %750, i64 3, !dbg !909
  %770 = load i32, ptr %769, align 4, !dbg !909, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %770, metadata !892, metadata !DIExpression()), !dbg !894
  %771 = or i32 %768, %770, !dbg !910
  %772 = icmp eq i32 %771, 0, !dbg !910
  %773 = load i32, ptr %750, align 8, !dbg !894, !tbaa !847
  br i1 %772, label %774, label %776, !dbg !911

774:                                              ; preds = %748
  %775 = shl i32 %773, 3, !dbg !912
  br label %831, !dbg !914

776:                                              ; preds = %748
  %777 = shl i32 %773, 11, !dbg !915
  %778 = or i32 %777, 128, !dbg !916
  call void @llvm.dbg.value(metadata i32 %778, metadata !885, metadata !DIExpression()), !dbg !894
  %779 = add nsw i32 %764, %761, !dbg !917
  %780 = mul nsw i32 %779, 565, !dbg !918
  call void @llvm.dbg.value(metadata i32 %780, metadata !893, metadata !DIExpression()), !dbg !894
  %781 = mul nsw i32 %761, 2276, !dbg !919
  %782 = add nsw i32 %780, %781, !dbg !920
  call void @llvm.dbg.value(metadata i32 %782, metadata !889, metadata !DIExpression()), !dbg !894
  %783 = mul i32 %764, -3406, !dbg !921
  %784 = add i32 %780, %783, !dbg !922
  call void @llvm.dbg.value(metadata i32 %784, metadata !890, metadata !DIExpression()), !dbg !894
  %785 = add nsw i32 %770, %767, !dbg !923
  %786 = mul nsw i32 %785, 2408, !dbg !924
  call void @llvm.dbg.value(metadata i32 %786, metadata !893, metadata !DIExpression()), !dbg !894
  %787 = mul i32 %767, -799, !dbg !925
  %788 = add i32 %786, %787, !dbg !926
  call void @llvm.dbg.value(metadata i32 %788, metadata !891, metadata !DIExpression()), !dbg !894
  %789 = mul i32 %770, -4017, !dbg !927
  %790 = add i32 %786, %789, !dbg !928
  call void @llvm.dbg.value(metadata i32 %790, metadata !892, metadata !DIExpression()), !dbg !894
  %791 = add nsw i32 %778, %753, !dbg !929
  call void @llvm.dbg.value(metadata i32 %791, metadata !893, metadata !DIExpression()), !dbg !894
  %792 = sub nsw i32 %778, %753, !dbg !930
  call void @llvm.dbg.value(metadata i32 %792, metadata !885, metadata !DIExpression()), !dbg !894
  %793 = add nsw i32 %758, %755, !dbg !931
  %794 = mul nsw i32 %793, 1108, !dbg !932
  call void @llvm.dbg.value(metadata i32 %794, metadata !886, metadata !DIExpression()), !dbg !894
  %795 = mul i32 %755, -3784, !dbg !933
  %796 = add i32 %794, %795, !dbg !934
  call void @llvm.dbg.value(metadata i32 %796, metadata !887, metadata !DIExpression()), !dbg !894
  %797 = mul nsw i32 %758, 1568, !dbg !935
  %798 = add nsw i32 %794, %797, !dbg !936
  call void @llvm.dbg.value(metadata i32 %798, metadata !888, metadata !DIExpression()), !dbg !894
  %799 = add nsw i32 %788, %782, !dbg !937
  call void @llvm.dbg.value(metadata i32 %799, metadata !886, metadata !DIExpression()), !dbg !894
  %800 = sub nsw i32 %782, %788, !dbg !938
  call void @llvm.dbg.value(metadata i32 %800, metadata !889, metadata !DIExpression()), !dbg !894
  %801 = add nsw i32 %790, %784, !dbg !939
  call void @llvm.dbg.value(metadata i32 %801, metadata !891, metadata !DIExpression()), !dbg !894
  %802 = sub nsw i32 %784, %790, !dbg !940
  call void @llvm.dbg.value(metadata i32 %802, metadata !890, metadata !DIExpression()), !dbg !894
  %803 = add nsw i32 %791, %798, !dbg !941
  call void @llvm.dbg.value(metadata i32 %803, metadata !892, metadata !DIExpression()), !dbg !894
  %804 = sub nsw i32 %791, %798, !dbg !942
  call void @llvm.dbg.value(metadata i32 %804, metadata !893, metadata !DIExpression()), !dbg !894
  %805 = add nsw i32 %792, %796, !dbg !943
  call void @llvm.dbg.value(metadata i32 %805, metadata !888, metadata !DIExpression()), !dbg !894
  %806 = sub nsw i32 %792, %796, !dbg !944
  call void @llvm.dbg.value(metadata i32 %806, metadata !885, metadata !DIExpression()), !dbg !894
  %807 = add nsw i32 %800, %802, !dbg !945
  %808 = mul nsw i32 %807, 181, !dbg !946
  %809 = add nsw i32 %808, 128, !dbg !947
  %810 = ashr i32 %809, 8, !dbg !948
  call void @llvm.dbg.value(metadata i32 %810, metadata !887, metadata !DIExpression()), !dbg !894
  %811 = sub nsw i32 %800, %802, !dbg !949
  %812 = mul nsw i32 %811, 181, !dbg !950
  %813 = add nsw i32 %812, 128, !dbg !951
  %814 = ashr i32 %813, 8, !dbg !952
  call void @llvm.dbg.value(metadata i32 %814, metadata !889, metadata !DIExpression()), !dbg !894
  %815 = add nsw i32 %803, %799, !dbg !953
  %816 = ashr i32 %815, 8, !dbg !954
  %817 = add nsw i32 %810, %805, !dbg !955
  %818 = ashr i32 %817, 8, !dbg !956
  %819 = add nsw i32 %814, %806, !dbg !957
  %820 = ashr i32 %819, 8, !dbg !958
  %821 = add nsw i32 %804, %801, !dbg !959
  %822 = ashr i32 %821, 8, !dbg !960
  %823 = sub nsw i32 %804, %801, !dbg !961
  %824 = ashr i32 %823, 8, !dbg !962
  %825 = sub nsw i32 %806, %814, !dbg !963
  %826 = ashr i32 %825, 8, !dbg !964
  %827 = sub nsw i32 %805, %810, !dbg !965
  %828 = ashr i32 %827, 8, !dbg !966
  %829 = sub nsw i32 %803, %799, !dbg !967
  %830 = ashr i32 %829, 8, !dbg !968
  br label %831, !dbg !969

831:                                              ; preds = %776, %774
  %832 = phi i32 [ %830, %776 ], [ %775, %774 ], !dbg !894
  %833 = phi i32 [ %828, %776 ], [ %775, %774 ], !dbg !894
  %834 = phi i32 [ %826, %776 ], [ %775, %774 ], !dbg !894
  %835 = phi i32 [ %824, %776 ], [ %775, %774 ], !dbg !894
  %836 = phi i32 [ %822, %776 ], [ %775, %774 ], !dbg !894
  %837 = phi i32 [ %820, %776 ], [ %775, %774 ], !dbg !894
  %838 = phi i32 [ %818, %776 ], [ %775, %774 ], !dbg !894
  %839 = phi i32 [ %816, %776 ], [ %775, %774 ], !dbg !894
  store i32 %832, ptr %763, align 4, !dbg !894, !tbaa !847
  store i32 %833, ptr %754, align 8, !dbg !894
  store i32 %834, ptr %766, align 4, !dbg !894
  store i32 %835, ptr %751, align 8, !dbg !894
  store i32 %836, ptr %769, align 4, !dbg !894
  store i32 %837, ptr %757, align 8, !dbg !894
  store i32 %838, ptr %760, align 4, !dbg !894
  store i32 %839, ptr %750, align 8, !dbg !894
  %840 = add nuw nsw i64 %749, 8, !dbg !970
  call void @llvm.dbg.value(metadata i64 %840, metadata !832, metadata !DIExpression()), !dbg !833
  %841 = icmp ult i64 %749, 56, !dbg !971
  br i1 %841, label %748, label %842, !dbg !875, !llvm.loop !972

842:                                              ; preds = %831, %989
  %843 = phi i64 [ %990, %989 ], [ 0, %831 ]
  call void @llvm.dbg.value(metadata i64 %843, metadata !832, metadata !DIExpression()), !dbg !833
  %844 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %843, !dbg !974
  %845 = getelementptr inbounds i8, ptr %702, i64 %843, !dbg !977
  %846 = load i32, ptr %673, align 4, !dbg !978, !tbaa !404
  call void @llvm.dbg.value(metadata ptr %844, metadata !979, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr %845, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 %846, metadata !986, metadata !DIExpression()), !dbg !996
  %847 = getelementptr inbounds i32, ptr %844, i64 32, !dbg !998
  %848 = load i32, ptr %847, align 4, !dbg !998, !tbaa !847
  %849 = shl i32 %848, 8, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %849, metadata !988, metadata !DIExpression()), !dbg !996
  %850 = getelementptr inbounds i32, ptr %844, i64 48, !dbg !1001
  %851 = load i32, ptr %850, align 4, !dbg !1001, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %851, metadata !989, metadata !DIExpression()), !dbg !996
  %852 = or i32 %849, %851, !dbg !1002
  %853 = getelementptr inbounds i32, ptr %844, i64 16, !dbg !1003
  %854 = load i32, ptr %853, align 4, !dbg !1003, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %854, metadata !990, metadata !DIExpression()), !dbg !996
  %855 = or i32 %852, %854, !dbg !1004
  %856 = getelementptr inbounds i32, ptr %844, i64 8, !dbg !1005
  %857 = load i32, ptr %856, align 4, !dbg !1005, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %857, metadata !991, metadata !DIExpression()), !dbg !996
  %858 = or i32 %855, %857, !dbg !1006
  %859 = getelementptr inbounds i32, ptr %844, i64 56, !dbg !1007
  %860 = load i32, ptr %859, align 4, !dbg !1007, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %860, metadata !992, metadata !DIExpression()), !dbg !996
  %861 = or i32 %858, %860, !dbg !1008
  %862 = getelementptr inbounds i32, ptr %844, i64 40, !dbg !1009
  %863 = load i32, ptr %862, align 4, !dbg !1009, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %863, metadata !993, metadata !DIExpression()), !dbg !996
  %864 = or i32 %861, %863, !dbg !1010
  %865 = getelementptr inbounds i32, ptr %844, i64 24, !dbg !1011
  %866 = load i32, ptr %865, align 4, !dbg !1011, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %866, metadata !994, metadata !DIExpression()), !dbg !996
  %867 = or i32 %864, %866, !dbg !1012
  %868 = icmp eq i32 %867, 0, !dbg !1012
  %869 = load i32, ptr %844, align 4, !dbg !996, !tbaa !847
  br i1 %868, label %870, label %885, !dbg !1013

870:                                              ; preds = %842
  %871 = add nsw i32 %869, 32, !dbg !1014
  %872 = ashr i32 %871, 6, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %872, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1022
  %873 = call i32 @llvm.smin.i32(i32 %872, i32 127), !dbg !1024
  %874 = call i32 @llvm.smax.i32(i32 %873, i32 -128), !dbg !1024
  %875 = trunc i32 %874 to i8, !dbg !1024
  %876 = xor i8 %875, -128, !dbg !1024
  call void @llvm.dbg.value(metadata i8 %876, metadata !988, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !996
  call void @llvm.dbg.value(metadata i32 8, metadata !987, metadata !DIExpression()), !dbg !996
  %877 = sext i32 %846 to i64
  call void @llvm.dbg.value(metadata ptr %845, metadata !985, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %845, align 1, !dbg !1025, !tbaa !184
  %878 = getelementptr inbounds i8, ptr %845, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %878, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 7, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %878, align 1, !dbg !1025, !tbaa !184
  %879 = getelementptr inbounds i8, ptr %878, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %879, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 6, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %879, align 1, !dbg !1025, !tbaa !184
  %880 = getelementptr inbounds i8, ptr %879, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %880, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 5, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %880, align 1, !dbg !1025, !tbaa !184
  %881 = getelementptr inbounds i8, ptr %880, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %881, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 4, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %881, align 1, !dbg !1025, !tbaa !184
  %882 = getelementptr inbounds i8, ptr %881, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %882, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 3, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %882, align 1, !dbg !1025, !tbaa !184
  %883 = getelementptr inbounds i8, ptr %882, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %883, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 2, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %883, align 1, !dbg !1025, !tbaa !184
  %884 = getelementptr inbounds i8, ptr %883, i64 %877, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %884, metadata !985, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 1, metadata !987, metadata !DIExpression()), !dbg !996
  store i8 %876, ptr %884, align 1, !dbg !1025, !tbaa !184
  call void @llvm.dbg.value(metadata !DIArgList(ptr %884, i64 %877), metadata !985, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !996
  call void @llvm.dbg.value(metadata i32 0, metadata !987, metadata !DIExpression()), !dbg !996
  br label %989, !dbg !1030

885:                                              ; preds = %842
  %886 = shl i32 %869, 8, !dbg !1031
  %887 = add nsw i32 %886, 8192, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %887, metadata !987, metadata !DIExpression()), !dbg !996
  %888 = add nsw i32 %860, %857, !dbg !1033
  %889 = mul nsw i32 %888, 565, !dbg !1034
  %890 = add nsw i32 %889, 4, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %890, metadata !995, metadata !DIExpression()), !dbg !996
  %891 = mul nsw i32 %857, 2276, !dbg !1036
  %892 = add nsw i32 %890, %891, !dbg !1037
  %893 = ashr i32 %892, 3, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %893, metadata !991, metadata !DIExpression()), !dbg !996
  %894 = mul i32 %860, -3406, !dbg !1039
  %895 = add i32 %890, %894, !dbg !1040
  %896 = ashr i32 %895, 3, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %896, metadata !992, metadata !DIExpression()), !dbg !996
  %897 = add nsw i32 %866, %863, !dbg !1042
  %898 = mul nsw i32 %897, 2408, !dbg !1043
  %899 = or i32 %898, 4, !dbg !1044
  call void @llvm.dbg.value(metadata i32 %899, metadata !995, metadata !DIExpression()), !dbg !996
  %900 = mul i32 %863, -799, !dbg !1045
  %901 = add i32 %899, %900, !dbg !1046
  %902 = ashr i32 %901, 3, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %902, metadata !993, metadata !DIExpression()), !dbg !996
  %903 = mul i32 %866, -4017, !dbg !1048
  %904 = add i32 %899, %903, !dbg !1049
  %905 = ashr i32 %904, 3, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %905, metadata !994, metadata !DIExpression()), !dbg !996
  %906 = add nsw i32 %887, %849, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %906, metadata !995, metadata !DIExpression()), !dbg !996
  %907 = sub nsw i32 %887, %849, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %907, metadata !987, metadata !DIExpression()), !dbg !996
  %908 = add nsw i32 %854, %851, !dbg !1053
  %909 = mul nsw i32 %908, 1108, !dbg !1054
  %910 = add nsw i32 %909, 4, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %910, metadata !988, metadata !DIExpression()), !dbg !996
  %911 = mul i32 %851, -3784, !dbg !1056
  %912 = add i32 %910, %911, !dbg !1057
  %913 = ashr i32 %912, 3, !dbg !1058
  call void @llvm.dbg.value(metadata i32 %913, metadata !989, metadata !DIExpression()), !dbg !996
  %914 = mul nsw i32 %854, 1568, !dbg !1059
  %915 = add nsw i32 %910, %914, !dbg !1060
  %916 = ashr i32 %915, 3, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %916, metadata !990, metadata !DIExpression()), !dbg !996
  %917 = add nsw i32 %902, %893, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %917, metadata !988, metadata !DIExpression()), !dbg !996
  %918 = sub nsw i32 %893, %902, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %918, metadata !991, metadata !DIExpression()), !dbg !996
  %919 = add nsw i32 %905, %896, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %919, metadata !993, metadata !DIExpression()), !dbg !996
  %920 = sub nsw i32 %896, %905, !dbg !1065
  call void @llvm.dbg.value(metadata i32 %920, metadata !992, metadata !DIExpression()), !dbg !996
  %921 = add nsw i32 %906, %916, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %921, metadata !994, metadata !DIExpression()), !dbg !996
  %922 = sub nsw i32 %906, %916, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %922, metadata !995, metadata !DIExpression()), !dbg !996
  %923 = add nsw i32 %907, %913, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %923, metadata !990, metadata !DIExpression()), !dbg !996
  %924 = sub nsw i32 %907, %913, !dbg !1069
  call void @llvm.dbg.value(metadata i32 %924, metadata !987, metadata !DIExpression()), !dbg !996
  %925 = add nsw i32 %918, %920, !dbg !1070
  %926 = mul nsw i32 %925, 181, !dbg !1071
  %927 = add nsw i32 %926, 128, !dbg !1072
  %928 = ashr i32 %927, 8, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %928, metadata !989, metadata !DIExpression()), !dbg !996
  %929 = sub nsw i32 %918, %920, !dbg !1074
  %930 = mul nsw i32 %929, 181, !dbg !1075
  %931 = add nsw i32 %930, 128, !dbg !1076
  %932 = ashr i32 %931, 8, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %932, metadata !991, metadata !DIExpression()), !dbg !996
  %933 = add nsw i32 %917, %921, !dbg !1078
  %934 = ashr i32 %933, 14, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %934, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1080
  %935 = call i32 @llvm.smin.i32(i32 %934, i32 127), !dbg !1082
  %936 = call i32 @llvm.smax.i32(i32 %935, i32 -128), !dbg !1082
  %937 = trunc i32 %936 to i8, !dbg !1082
  %938 = xor i8 %937, -128, !dbg !1082
  store i8 %938, ptr %845, align 1, !dbg !1083, !tbaa !184
  %939 = sext i32 %846 to i64, !dbg !1084
  %940 = getelementptr inbounds i8, ptr %845, i64 %939, !dbg !1084
  call void @llvm.dbg.value(metadata ptr %940, metadata !985, metadata !DIExpression()), !dbg !996
  %941 = add nsw i32 %928, %923, !dbg !1085
  %942 = ashr i32 %941, 14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %942, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1087
  %943 = call i32 @llvm.smin.i32(i32 %942, i32 127), !dbg !1089
  %944 = call i32 @llvm.smax.i32(i32 %943, i32 -128), !dbg !1089
  %945 = trunc i32 %944 to i8, !dbg !1089
  %946 = xor i8 %945, -128, !dbg !1089
  store i8 %946, ptr %940, align 1, !dbg !1090, !tbaa !184
  %947 = getelementptr inbounds i8, ptr %940, i64 %939, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %947, metadata !985, metadata !DIExpression()), !dbg !996
  %948 = add nsw i32 %932, %924, !dbg !1092
  %949 = ashr i32 %948, 14, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %949, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1094
  %950 = call i32 @llvm.smin.i32(i32 %949, i32 127), !dbg !1096
  %951 = call i32 @llvm.smax.i32(i32 %950, i32 -128), !dbg !1096
  %952 = trunc i32 %951 to i8, !dbg !1096
  %953 = xor i8 %952, -128, !dbg !1096
  store i8 %953, ptr %947, align 1, !dbg !1097, !tbaa !184
  %954 = getelementptr inbounds i8, ptr %947, i64 %939, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %954, metadata !985, metadata !DIExpression()), !dbg !996
  %955 = add nsw i32 %919, %922, !dbg !1099
  %956 = ashr i32 %955, 14, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %956, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1101
  %957 = call i32 @llvm.smin.i32(i32 %956, i32 127), !dbg !1103
  %958 = call i32 @llvm.smax.i32(i32 %957, i32 -128), !dbg !1103
  %959 = trunc i32 %958 to i8, !dbg !1103
  %960 = xor i8 %959, -128, !dbg !1103
  store i8 %960, ptr %954, align 1, !dbg !1104, !tbaa !184
  %961 = getelementptr inbounds i8, ptr %954, i64 %939, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %961, metadata !985, metadata !DIExpression()), !dbg !996
  %962 = sub nsw i32 %922, %919, !dbg !1106
  %963 = ashr i32 %962, 14, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %963, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1108
  %964 = call i32 @llvm.smin.i32(i32 %963, i32 127), !dbg !1110
  %965 = call i32 @llvm.smax.i32(i32 %964, i32 -128), !dbg !1110
  %966 = trunc i32 %965 to i8, !dbg !1110
  %967 = xor i8 %966, -128, !dbg !1110
  store i8 %967, ptr %961, align 1, !dbg !1111, !tbaa !184
  %968 = getelementptr inbounds i8, ptr %961, i64 %939, !dbg !1112
  call void @llvm.dbg.value(metadata ptr %968, metadata !985, metadata !DIExpression()), !dbg !996
  %969 = sub nsw i32 %924, %932, !dbg !1113
  %970 = ashr i32 %969, 14, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %970, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1115
  %971 = call i32 @llvm.smin.i32(i32 %970, i32 127), !dbg !1117
  %972 = call i32 @llvm.smax.i32(i32 %971, i32 -128), !dbg !1117
  %973 = trunc i32 %972 to i8, !dbg !1117
  %974 = xor i8 %973, -128, !dbg !1117
  store i8 %974, ptr %968, align 1, !dbg !1118, !tbaa !184
  %975 = getelementptr inbounds i8, ptr %968, i64 %939, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %975, metadata !985, metadata !DIExpression()), !dbg !996
  %976 = sub nsw i32 %923, %928, !dbg !1120
  %977 = ashr i32 %976, 14, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %977, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1122
  %978 = call i32 @llvm.smin.i32(i32 %977, i32 127), !dbg !1124
  %979 = call i32 @llvm.smax.i32(i32 %978, i32 -128), !dbg !1124
  %980 = trunc i32 %979 to i8, !dbg !1124
  %981 = xor i8 %980, -128, !dbg !1124
  store i8 %981, ptr %975, align 1, !dbg !1125, !tbaa !184
  %982 = getelementptr inbounds i8, ptr %975, i64 %939, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %982, metadata !985, metadata !DIExpression()), !dbg !996
  %983 = sub nsw i32 %921, %917, !dbg !1127
  %984 = ashr i32 %983, 14, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %984, metadata !1017, metadata !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value)), !dbg !1129
  %985 = call i32 @llvm.smin.i32(i32 %984, i32 127), !dbg !1131
  %986 = call i32 @llvm.smax.i32(i32 %985, i32 -128), !dbg !1131
  %987 = trunc i32 %986 to i8, !dbg !1131
  %988 = xor i8 %987, -128, !dbg !1131
  store i8 %988, ptr %982, align 1, !dbg !1132, !tbaa !184
  br label %989, !dbg !1030

989:                                              ; preds = %885, %870
  %990 = add nuw nsw i64 %843, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %990, metadata !832, metadata !DIExpression()), !dbg !833
  %991 = icmp eq i64 %990, 8, !dbg !1134
  br i1 %991, label %993, label %842, !dbg !1135, !llvm.loop !1136

992:                                              ; preds = %729, %723
  store i32 5, ptr @nj, align 8, !dbg !1138, !tbaa !298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12, !dbg !1139
  br label %1111, !dbg !1140

993:                                              ; preds = %989
  %994 = load i32, ptr @nj, align 8, !dbg !1142, !tbaa !298
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12, !dbg !1139
  %995 = icmp eq i32 %994, 0, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %690, metadata !674, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !680
  br i1 %995, label %684, label %1111, !dbg !1140, !llvm.loop !1144

996:                                              ; preds = %684
  %997 = load i32, ptr %667, align 8, !dbg !799, !tbaa !328
  br label %998, !dbg !1146

998:                                              ; preds = %996, %679
  %999 = phi i32 [ %997, %996 ], [ %680, %679 ], !dbg !799
  %1000 = phi i32 [ %686, %996 ], [ %681, %679 ]
  %1001 = add nuw nsw i32 %682, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %1001, metadata !675, metadata !DIExpression()), !dbg !680
  %1002 = icmp slt i32 %1001, %999, !dbg !802
  br i1 %1002, label %679, label %1003, !dbg !803, !llvm.loop !1147

1003:                                             ; preds = %998
  %1004 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !791, !tbaa !288
  br label %1005, !dbg !1149

1005:                                             ; preds = %1003, %663
  %1006 = phi i32 [ %1004, %1003 ], [ %664, %663 ], !dbg !791
  %1007 = add nuw nsw i32 %666, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %1007, metadata !671, metadata !DIExpression()), !dbg !680
  %1008 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 1, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %1008, metadata !678, metadata !DIExpression()), !dbg !680
  %1009 = icmp slt i32 %1007, %1006, !dbg !797
  br i1 %1009, label %663, label %1010, !dbg !798, !llvm.loop !1151

1010:                                             ; preds = %1005, %657
  %1011 = phi i32 [ %658, %657 ], [ %1006, %1005 ]
  %1012 = phi i32 [ %659, %657 ], [ %1006, %1005 ]
  %1013 = add nsw i32 %660, 1, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %1013, metadata !672, metadata !DIExpression()), !dbg !680
  %1014 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 6), align 8, !dbg !1155, !tbaa !377
  %1015 = icmp slt i32 %1013, %1014, !dbg !1156
  br i1 %1015, label %1020, label %1016, !dbg !1157

1016:                                             ; preds = %1010
  call void @llvm.dbg.value(metadata i32 0, metadata !672, metadata !DIExpression()), !dbg !680
  %1017 = add nsw i32 %661, 1, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %1017, metadata !673, metadata !DIExpression()), !dbg !680
  %1018 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 7), align 4, !dbg !1161, !tbaa !382
  %1019 = icmp slt i32 %1017, %1018, !dbg !1162
  br i1 %1019, label %1020, label %1043, !dbg !1163

1020:                                             ; preds = %1016, %1010
  %1021 = phi i32 [ 0, %1016 ], [ %1013, %1010 ], !dbg !1164
  %1022 = phi i32 [ %1017, %1016 ], [ %661, %1010 ], !dbg !796
  call void @llvm.dbg.value(metadata i32 %1022, metadata !673, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %1021, metadata !672, metadata !DIExpression()), !dbg !680
  %1023 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !dbg !1165, !tbaa !658
  %1024 = icmp eq i32 %1023, 0, !dbg !1167
  br i1 %1024, label %657, label %1025, !dbg !1168, !llvm.loop !1169

1025:                                             ; preds = %1020
  %1026 = add nsw i32 %656, -1, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %1026, metadata !676, metadata !DIExpression()), !dbg !680
  %1027 = icmp eq i32 %1026, 0, !dbg !1171
  br i1 %1027, label %1028, label %651, !dbg !1172, !llvm.loop !1169

1028:                                             ; preds = %1025
  %1029 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1173, !tbaa !1177
  %1030 = and i32 %1029, 248, !dbg !1173
  store i32 %1030, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1173, !tbaa !1177
  %1031 = call fastcc i32 @njGetBits(i32 noundef 16), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %1031, metadata !671, metadata !DIExpression()), !dbg !680
  %1032 = and i32 %1031, 65528, !dbg !1179
  %1033 = icmp eq i32 %1032, 65488, !dbg !1181
  %1034 = and i32 %1031, 7
  %1035 = icmp eq i32 %1034, %650
  %1036 = select i1 %1033, i1 %1035, i1 false, !dbg !1182
  br i1 %1036, label %1038, label %1037, !dbg !1182

1037:                                             ; preds = %1028
  store i32 5, ptr @nj, align 8, !dbg !1183, !tbaa !298
  br label %1111, !dbg !1183

1038:                                             ; preds = %1028
  %1039 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !791, !tbaa !288
  %1040 = add nuw nsw i32 %650, 1, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %1042, metadata !677, metadata !DIExpression()), !dbg !680
  %1041 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !dbg !1186, !tbaa !658
  call void @llvm.dbg.value(metadata i32 %1041, metadata !676, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i64 0, metadata !671, metadata !DIExpression()), !dbg !680
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 9), align 4, !dbg !1187, !tbaa !842
  call void @llvm.dbg.value(metadata i64 1, metadata !671, metadata !DIExpression()), !dbg !680
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 9), align 4, !dbg !1187, !tbaa !842
  call void @llvm.dbg.value(metadata i64 2, metadata !671, metadata !DIExpression()), !dbg !680
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 9), align 4, !dbg !1187, !tbaa !842
  call void @llvm.dbg.value(metadata i64 3, metadata !671, metadata !DIExpression()), !dbg !680
  %1042 = and i32 %1040, 7, !dbg !1190
  br label %645, !dbg !1191, !llvm.loop !1169

1043:                                             ; preds = %1016
  store i32 6, ptr @nj, align 8, !dbg !1192, !tbaa !298
  br label %1111, !dbg !1193

1044:                                             ; preds = %47
  %1045 = icmp ult i32 %49, 2, !dbg !1194
  br i1 %1045, label %1046, label %1047, !dbg !1198

1046:                                             ; preds = %1044
  store i32 5, ptr @nj, align 8, !dbg !1199, !tbaa !298
  br label %1060, !dbg !1199

1047:                                             ; preds = %1044
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !1200
  %1048 = load i8, ptr %48, align 1, !dbg !1202, !tbaa !184
  %1049 = zext i8 %1048 to i32, !dbg !1202
  %1050 = shl nuw nsw i32 %1049, 8, !dbg !1203
  %1051 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !1204
  %1052 = load i8, ptr %1051, align 1, !dbg !1204, !tbaa !184
  %1053 = zext i8 %1052 to i32, !dbg !1204
  %1054 = or i32 %1050, %1053, !dbg !1205
  %1055 = icmp ult i32 %49, %1054, !dbg !1206
  br i1 %1055, label %1056, label %1057, !dbg !1207

1056:                                             ; preds = %1047
  store i32 5, ptr @nj, align 8, !dbg !1208, !tbaa !298
  br label %1060, !dbg !1208

1057:                                             ; preds = %1047
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !1209
  %1058 = add nsw i32 %40, -4, !dbg !1211
  %1059 = add nsw i32 %1054, -2, !dbg !1212
  br label %1060, !dbg !1213

1060:                                             ; preds = %1057, %1056, %1046
  %1061 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %33, %1057 ]
  %1062 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %34, %1057 ]
  %1063 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %35, %1057 ]
  %1064 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %36, %1057 ]
  %1065 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %37, %1057 ]
  %1066 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ 0, %1057 ]
  %1067 = phi i32 [ %49, %1046 ], [ %49, %1056 ], [ %1058, %1057 ], !dbg !1214
  %1068 = phi i64 [ 2, %1046 ], [ 2, %1056 ], [ 4, %1057 ], !dbg !1216
  %1069 = phi i32 [ %51, %1046 ], [ %1054, %1056 ], [ %1059, %1057 ], !dbg !1217
  %1070 = getelementptr inbounds i8, ptr %43, i64 %1068, !dbg !212
  call void @llvm.dbg.value(metadata i32 %1069, metadata !188, metadata !DIExpression()), !dbg !1218
  %1071 = sext i32 %1069 to i64, !dbg !1216
  %1072 = getelementptr inbounds i8, ptr %1070, i64 %1071, !dbg !1216
  store ptr %1072, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !1216, !tbaa !175
  %1073 = sub nsw i32 %1067, %1069, !dbg !1214
  store i32 %1073, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !1214, !tbaa !178
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !1219, !tbaa !198
  %1074 = icmp slt i32 %1073, 0, !dbg !1220
  br i1 %1074, label %1075, label %1111, !dbg !1221

1075:                                             ; preds = %1060
  store i32 5, ptr @nj, align 8, !dbg !1222, !tbaa !298
  br label %1111, !dbg !1223

1076:                                             ; preds = %47
  %1077 = and i8 %53, -16, !dbg !1224
  %1078 = icmp eq i8 %1077, -32, !dbg !1226
  br i1 %1078, label %1079, label %1655, !dbg !1227

1079:                                             ; preds = %1076
  %1080 = icmp ult i32 %49, 2, !dbg !1228
  br i1 %1080, label %1081, label %1082, !dbg !1231

1081:                                             ; preds = %1079
  store i32 5, ptr @nj, align 8, !dbg !1232, !tbaa !298
  br label %1095, !dbg !1232

1082:                                             ; preds = %1079
  call void @llvm.dbg.value(metadata ptr %48, metadata !232, metadata !DIExpression()), !dbg !1233
  %1083 = load i8, ptr %48, align 1, !dbg !1235, !tbaa !184
  %1084 = zext i8 %1083 to i32, !dbg !1235
  %1085 = shl nuw nsw i32 %1084, 8, !dbg !1236
  %1086 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !1237
  %1087 = load i8, ptr %1086, align 1, !dbg !1237, !tbaa !184
  %1088 = zext i8 %1087 to i32, !dbg !1237
  %1089 = or i32 %1085, %1088, !dbg !1238
  %1090 = icmp ult i32 %49, %1089, !dbg !1239
  br i1 %1090, label %1091, label %1092, !dbg !1240

1091:                                             ; preds = %1082
  store i32 5, ptr @nj, align 8, !dbg !1241, !tbaa !298
  br label %1095, !dbg !1241

1092:                                             ; preds = %1082
  call void @llvm.dbg.value(metadata i32 2, metadata !188, metadata !DIExpression()), !dbg !1242
  %1093 = add nsw i32 %40, -4, !dbg !1244
  %1094 = add nsw i32 %1089, -2, !dbg !1245
  br label %1095, !dbg !1246

1095:                                             ; preds = %1092, %1091, %1081
  %1096 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %33, %1092 ]
  %1097 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %34, %1092 ]
  %1098 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %35, %1092 ]
  %1099 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %36, %1092 ]
  %1100 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %37, %1092 ]
  %1101 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ 0, %1092 ]
  %1102 = phi i32 [ %49, %1081 ], [ %49, %1091 ], [ %1093, %1092 ], !dbg !1247
  %1103 = phi i64 [ 2, %1081 ], [ 2, %1091 ], [ 4, %1092 ], !dbg !1249
  %1104 = phi i32 [ %51, %1081 ], [ %1089, %1091 ], [ %1094, %1092 ], !dbg !1250
  %1105 = getelementptr inbounds i8, ptr %43, i64 %1103, !dbg !212
  call void @llvm.dbg.value(metadata i32 %1104, metadata !188, metadata !DIExpression()), !dbg !1251
  %1106 = sext i32 %1104 to i64, !dbg !1249
  %1107 = getelementptr inbounds i8, ptr %1105, i64 %1106, !dbg !1249
  store ptr %1107, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !1249, !tbaa !175
  %1108 = sub nsw i32 %1102, %1104, !dbg !1247
  store i32 %1108, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !1247, !tbaa !178
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !dbg !1252, !tbaa !198
  %1109 = icmp slt i32 %1108, 0, !dbg !1253
  br i1 %1109, label %1110, label %1111, !dbg !1254

1110:                                             ; preds = %1095
  store i32 5, ptr @nj, align 8, !dbg !1255, !tbaa !298
  br label %1111, !dbg !1256

1111:                                             ; preds = %993, %1110, %1095, %1075, %1060, %1043, %1037, %992, %637, %605, %598, %579, %574, %564, %563, %553, %549, %537, %530, %518, %511, %433, %420, %414, %246, %233, %228, %65
  %1112 = phi i32 [ 5, %1110 ], [ %1096, %1095 ], [ 5, %1075 ], [ %1061, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %33, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ %33, %537 ], [ %33, %530 ], [ 5, %518 ], [ %512, %511 ], [ %33, %433 ], [ %421, %420 ], [ %415, %414 ], [ %33, %246 ], [ %234, %233 ], [ %158, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1113 = phi i32 [ 5, %1110 ], [ %1097, %1095 ], [ 5, %1075 ], [ %1062, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %34, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ %34, %537 ], [ %34, %530 ], [ 5, %518 ], [ %513, %511 ], [ %34, %433 ], [ %421, %420 ], [ %416, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1114 = phi i32 [ 5, %1110 ], [ %1098, %1095 ], [ 5, %1075 ], [ %1063, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %35, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ %35, %537 ], [ %35, %530 ], [ 5, %518 ], [ %514, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1115 = phi i32 [ 5, %1110 ], [ %1099, %1095 ], [ 5, %1075 ], [ %1064, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %36, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ 0, %537 ], [ %36, %530 ], [ 5, %518 ], [ %515, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1116 = phi i32 [ 5, %1110 ], [ %1100, %1095 ], [ 5, %1075 ], [ %1065, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %37, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ 0, %537 ], [ %36, %530 ], [ 5, %518 ], [ %515, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1117 = phi i32 [ 5, %1110 ], [ %1101, %1095 ], [ 5, %1075 ], [ %1066, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %37, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ 0, %537 ], [ %36, %530 ], [ 5, %518 ], [ %515, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  br label %32, !dbg !199, !llvm.loop !1144

1118:                                             ; preds = %32
  store i32 0, ptr @nj, align 8, !dbg !1257, !tbaa !298
  call void @llvm.dbg.value(metadata i32 0, metadata !1258, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), metadata !1261, metadata !DIExpression()), !dbg !1284
  %1119 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !1286, !tbaa !288
  %1120 = icmp sgt i32 %1119, 0, !dbg !1289
  br i1 %1120, label %1121, label %1598, !dbg !1290

1121:                                             ; preds = %1118, %1519
  %1122 = phi i32 [ %1520, %1519 ], [ 0, %1118 ]
  %1123 = phi ptr [ %1521, %1519 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %1118 ]
  call void @llvm.dbg.value(metadata i32 %1122, metadata !1258, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %1123, metadata !1261, metadata !DIExpression()), !dbg !1284
  %1124 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 3
  %1125 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 4
  %1126 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 10
  %1127 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 5
  br label %1128, !dbg !1291

1128:                                             ; preds = %1516, %1121
  %1129 = load i32, ptr %1124, align 4, !dbg !1293, !tbaa !393
  %1130 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !dbg !1294, !tbaa !282
  %1131 = icmp slt i32 %1129, %1130, !dbg !1295
  br i1 %1131, label %1136, label %1132, !dbg !1296

1132:                                             ; preds = %1128
  %1133 = load i32, ptr %1125, align 8, !dbg !1297, !tbaa !400
  %1134 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !dbg !1298, !tbaa !272
  %1135 = icmp slt i32 %1133, %1134, !dbg !1299
  br i1 %1135, label %1323, label %1519, !dbg !1291

1136:                                             ; preds = %1128
  call void @llvm.dbg.value(metadata ptr %1123, metadata !1300, metadata !DIExpression()), !dbg !1311
  %1137 = add i32 %1129, -3, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %1137, metadata !1305, metadata !DIExpression()), !dbg !1311
  %1138 = load i32, ptr %1125, align 8, !dbg !1316, !tbaa !400
  %1139 = shl i32 %1129, 1, !dbg !1317
  %1140 = mul i32 %1138, %1139, !dbg !1318
  %1141 = sext i32 %1140 to i64, !dbg !1319
  %1142 = call noalias ptr @malloc(i64 noundef %1141) #13, !dbg !1320
  call void @llvm.dbg.value(metadata ptr %1142, metadata !1306, metadata !DIExpression()), !dbg !1311
  %1143 = icmp eq ptr %1142, null, !dbg !1321
  br i1 %1143, label %1144, label %1145, !dbg !1323

1144:                                             ; preds = %1136
  store i32 3, ptr @nj, align 8, !dbg !1324, !tbaa !298
  br label %1653, !dbg !1326

1145:                                             ; preds = %1136
  %1146 = load ptr, ptr %1126, align 8, !dbg !1328, !tbaa !129
  call void @llvm.dbg.value(metadata ptr %1146, metadata !1307, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %1142, metadata !1308, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %1138, metadata !1310, metadata !DIExpression()), !dbg !1311
  %1147 = icmp eq i32 %1138, 0, !dbg !1329
  br i1 %1147, label %1320, label %1148, !dbg !1329

1148:                                             ; preds = %1145
  %1149 = icmp sgt i32 %1129, 3
  %1150 = load i32, ptr %1127, align 4, !tbaa !404
  %1151 = sext i32 %1150 to i64
  %1152 = sext i32 %1139 to i64
  %1153 = zext i32 %1137 to i64
  br label %1154, !dbg !1329

1154:                                             ; preds = %1265, %1148
  %1155 = phi i32 [ %1138, %1148 ], [ %1318, %1265 ]
  %1156 = phi ptr [ %1142, %1148 ], [ %1267, %1265 ]
  %1157 = phi ptr [ %1146, %1148 ], [ %1266, %1265 ]
  call void @llvm.dbg.value(metadata i32 %1155, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %1156, metadata !1308, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %1157, metadata !1307, metadata !DIExpression()), !dbg !1311
  %1158 = load i8, ptr %1157, align 1, !dbg !1331, !tbaa !184
  %1159 = zext i8 %1158 to i32, !dbg !1331
  %1160 = mul nuw nsw i32 %1159, 139, !dbg !1331
  %1161 = getelementptr inbounds i8, ptr %1157, i64 1, !dbg !1331
  %1162 = load i8, ptr %1161, align 1, !dbg !1331, !tbaa !184
  %1163 = zext i8 %1162 to i32, !dbg !1331
  %1164 = mul nsw i32 %1163, -11, !dbg !1331
  %1165 = add nuw nsw i32 %1160, 64, !dbg !1331
  %1166 = add nsw i32 %1165, %1164, !dbg !1331
  %1167 = ashr i32 %1166, 7, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %1167, metadata !1017, metadata !DIExpression()), !dbg !1334
  %1168 = call i32 @llvm.smin.i32(i32 %1167, i32 255), !dbg !1336
  %1169 = call i32 @llvm.smax.i32(i32 %1168, i32 0), !dbg !1336
  %1170 = trunc i32 %1169 to i8, !dbg !1336
  store i8 %1170, ptr %1156, align 1, !dbg !1337, !tbaa !184
  %1171 = load i8, ptr %1157, align 1, !dbg !1338, !tbaa !184
  %1172 = zext i8 %1171 to i32, !dbg !1338
  %1173 = mul nuw nsw i32 %1172, 104, !dbg !1338
  %1174 = load i8, ptr %1161, align 1, !dbg !1338, !tbaa !184
  %1175 = zext i8 %1174 to i32, !dbg !1338
  %1176 = mul nuw nsw i32 %1175, 27, !dbg !1338
  %1177 = getelementptr inbounds i8, ptr %1157, i64 2, !dbg !1338
  %1178 = load i8, ptr %1177, align 1, !dbg !1338, !tbaa !184
  %1179 = zext i8 %1178 to i32, !dbg !1338
  %1180 = mul nsw i32 %1179, -3, !dbg !1338
  %1181 = add nuw nsw i32 %1173, 64, !dbg !1338
  %1182 = add nuw nsw i32 %1181, %1176, !dbg !1338
  %1183 = add nsw i32 %1182, %1180, !dbg !1338
  %1184 = ashr i32 %1183, 7, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %1184, metadata !1017, metadata !DIExpression()), !dbg !1339
  %1185 = call i32 @llvm.smin.i32(i32 %1184, i32 255), !dbg !1341
  %1186 = call i32 @llvm.smax.i32(i32 %1185, i32 0), !dbg !1341
  %1187 = trunc i32 %1186 to i8, !dbg !1341
  %1188 = getelementptr inbounds i8, ptr %1156, i64 1, !dbg !1342
  store i8 %1187, ptr %1188, align 1, !dbg !1343, !tbaa !184
  %1189 = load i8, ptr %1157, align 1, !dbg !1344, !tbaa !184
  %1190 = zext i8 %1189 to i32, !dbg !1344
  %1191 = mul nuw nsw i32 %1190, 28, !dbg !1344
  %1192 = load i8, ptr %1161, align 1, !dbg !1344, !tbaa !184
  %1193 = zext i8 %1192 to i32, !dbg !1344
  %1194 = mul nuw nsw i32 %1193, 109, !dbg !1344
  %1195 = load i8, ptr %1177, align 1, !dbg !1344, !tbaa !184
  %1196 = zext i8 %1195 to i32, !dbg !1344
  %1197 = mul nsw i32 %1196, -9, !dbg !1344
  %1198 = add nuw nsw i32 %1191, 64, !dbg !1344
  %1199 = add nuw nsw i32 %1198, %1194, !dbg !1344
  %1200 = add nsw i32 %1199, %1197, !dbg !1344
  %1201 = ashr i32 %1200, 7, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %1201, metadata !1017, metadata !DIExpression()), !dbg !1345
  %1202 = call i32 @llvm.smin.i32(i32 %1201, i32 255), !dbg !1347
  %1203 = call i32 @llvm.smax.i32(i32 %1202, i32 0), !dbg !1347
  %1204 = trunc i32 %1203 to i8, !dbg !1347
  %1205 = getelementptr inbounds i8, ptr %1156, i64 2, !dbg !1348
  store i8 %1204, ptr %1205, align 1, !dbg !1349, !tbaa !184
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()), !dbg !1311
  br i1 %1149, label %1206, label %1265, !dbg !1350

1206:                                             ; preds = %1154, %1206
  %1207 = phi i64 [ %1212, %1206 ], [ 0, %1154 ]
  call void @llvm.dbg.value(metadata i64 %1207, metadata !1309, metadata !DIExpression()), !dbg !1311
  %1208 = getelementptr inbounds i8, ptr %1157, i64 %1207, !dbg !1352
  %1209 = load i8, ptr %1208, align 1, !dbg !1352, !tbaa !184
  %1210 = zext i8 %1209 to i32, !dbg !1352
  %1211 = mul nsw i32 %1210, -9, !dbg !1352
  %1212 = add nuw nsw i64 %1207, 1, !dbg !1352
  %1213 = getelementptr inbounds i8, ptr %1157, i64 %1212, !dbg !1352
  %1214 = load i8, ptr %1213, align 1, !dbg !1352, !tbaa !184
  %1215 = zext i8 %1214 to i32, !dbg !1352
  %1216 = mul nuw nsw i32 %1215, 111, !dbg !1352
  %1217 = add nuw nsw i64 %1207, 2, !dbg !1352
  %1218 = getelementptr inbounds i8, ptr %1157, i64 %1217, !dbg !1352
  %1219 = load i8, ptr %1218, align 1, !dbg !1352, !tbaa !184
  %1220 = zext i8 %1219 to i32, !dbg !1352
  %1221 = mul nuw nsw i32 %1220, 29, !dbg !1352
  %1222 = add nuw nsw i64 %1207, 3, !dbg !1352
  %1223 = getelementptr inbounds i8, ptr %1157, i64 %1222, !dbg !1352
  %1224 = load i8, ptr %1223, align 1, !dbg !1352, !tbaa !184
  %1225 = zext i8 %1224 to i32, !dbg !1352
  %1226 = mul nsw i32 %1225, -3, !dbg !1352
  %1227 = add nsw i32 %1211, 64, !dbg !1352
  %1228 = add nsw i32 %1227, %1216, !dbg !1352
  %1229 = add nsw i32 %1228, %1221, !dbg !1352
  %1230 = add nsw i32 %1229, %1226, !dbg !1352
  %1231 = ashr i32 %1230, 7, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %1231, metadata !1017, metadata !DIExpression()), !dbg !1355
  %1232 = call i32 @llvm.smin.i32(i32 %1231, i32 255), !dbg !1357
  %1233 = call i32 @llvm.smax.i32(i32 %1232, i32 0), !dbg !1357
  %1234 = trunc i32 %1233 to i8, !dbg !1357
  %1235 = shl i64 %1207, 33, !dbg !1358
  %1236 = add nuw i64 %1235, 12884901888, !dbg !1358
  %1237 = ashr exact i64 %1236, 32, !dbg !1358
  %1238 = getelementptr inbounds i8, ptr %1156, i64 %1237, !dbg !1358
  store i8 %1234, ptr %1238, align 1, !dbg !1359, !tbaa !184
  %1239 = load i8, ptr %1208, align 1, !dbg !1360, !tbaa !184
  %1240 = zext i8 %1239 to i32, !dbg !1360
  %1241 = mul nsw i32 %1240, -3, !dbg !1360
  %1242 = load i8, ptr %1213, align 1, !dbg !1360, !tbaa !184
  %1243 = zext i8 %1242 to i32, !dbg !1360
  %1244 = mul nuw nsw i32 %1243, 29, !dbg !1360
  %1245 = load i8, ptr %1218, align 1, !dbg !1360, !tbaa !184
  %1246 = zext i8 %1245 to i32, !dbg !1360
  %1247 = mul nuw nsw i32 %1246, 111, !dbg !1360
  %1248 = load i8, ptr %1223, align 1, !dbg !1360, !tbaa !184
  %1249 = zext i8 %1248 to i32, !dbg !1360
  %1250 = mul nsw i32 %1249, -9, !dbg !1360
  %1251 = add nsw i32 %1241, 64, !dbg !1360
  %1252 = add nsw i32 %1251, %1244, !dbg !1360
  %1253 = add nsw i32 %1252, %1247, !dbg !1360
  %1254 = add nsw i32 %1253, %1250, !dbg !1360
  %1255 = ashr i32 %1254, 7, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %1255, metadata !1017, metadata !DIExpression()), !dbg !1361
  %1256 = call i32 @llvm.smin.i32(i32 %1255, i32 255), !dbg !1363
  %1257 = call i32 @llvm.smax.i32(i32 %1256, i32 0), !dbg !1363
  %1258 = trunc i32 %1257 to i8, !dbg !1363
  %1259 = trunc i64 %1207 to i32, !dbg !1364
  %1260 = shl i32 %1259, 1, !dbg !1364
  %1261 = add nsw i32 %1260, 4, !dbg !1364
  %1262 = sext i32 %1261 to i64, !dbg !1365
  %1263 = getelementptr inbounds i8, ptr %1156, i64 %1262, !dbg !1365
  store i8 %1258, ptr %1263, align 1, !dbg !1366, !tbaa !184
  call void @llvm.dbg.value(metadata i64 %1212, metadata !1309, metadata !DIExpression()), !dbg !1311
  %1264 = icmp eq i64 %1212, %1153, !dbg !1367
  br i1 %1264, label %1265, label %1206, !dbg !1350, !llvm.loop !1368

1265:                                             ; preds = %1206, %1154
  %1266 = getelementptr inbounds i8, ptr %1157, i64 %1151, !dbg !1370
  call void @llvm.dbg.value(metadata ptr %1266, metadata !1307, metadata !DIExpression()), !dbg !1311
  %1267 = getelementptr inbounds i8, ptr %1156, i64 %1152, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %1267, metadata !1308, metadata !DIExpression()), !dbg !1311
  %1268 = getelementptr inbounds i8, ptr %1266, i64 -1, !dbg !1372
  %1269 = load i8, ptr %1268, align 1, !dbg !1372, !tbaa !184
  %1270 = zext i8 %1269 to i32, !dbg !1372
  %1271 = mul nuw nsw i32 %1270, 28, !dbg !1372
  %1272 = getelementptr inbounds i8, ptr %1266, i64 -2, !dbg !1372
  %1273 = load i8, ptr %1272, align 1, !dbg !1372, !tbaa !184
  %1274 = zext i8 %1273 to i32, !dbg !1372
  %1275 = mul nuw nsw i32 %1274, 109, !dbg !1372
  %1276 = getelementptr inbounds i8, ptr %1266, i64 -3, !dbg !1372
  %1277 = load i8, ptr %1276, align 1, !dbg !1372, !tbaa !184
  %1278 = zext i8 %1277 to i32, !dbg !1372
  %1279 = mul nsw i32 %1278, -9, !dbg !1372
  %1280 = add nuw nsw i32 %1271, 64, !dbg !1372
  %1281 = add nuw nsw i32 %1280, %1275, !dbg !1372
  %1282 = add nsw i32 %1281, %1279, !dbg !1372
  %1283 = ashr i32 %1282, 7, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %1283, metadata !1017, metadata !DIExpression()), !dbg !1373
  %1284 = call i32 @llvm.smin.i32(i32 %1283, i32 255), !dbg !1375
  %1285 = call i32 @llvm.smax.i32(i32 %1284, i32 0), !dbg !1375
  %1286 = trunc i32 %1285 to i8, !dbg !1375
  %1287 = getelementptr inbounds i8, ptr %1267, i64 -3, !dbg !1376
  store i8 %1286, ptr %1287, align 1, !dbg !1377, !tbaa !184
  %1288 = load i8, ptr %1268, align 1, !dbg !1378, !tbaa !184
  %1289 = zext i8 %1288 to i32, !dbg !1378
  %1290 = mul nuw nsw i32 %1289, 104, !dbg !1378
  %1291 = load i8, ptr %1272, align 1, !dbg !1378, !tbaa !184
  %1292 = zext i8 %1291 to i32, !dbg !1378
  %1293 = mul nuw nsw i32 %1292, 27, !dbg !1378
  %1294 = load i8, ptr %1276, align 1, !dbg !1378, !tbaa !184
  %1295 = zext i8 %1294 to i32, !dbg !1378
  %1296 = mul nsw i32 %1295, -3, !dbg !1378
  %1297 = add nuw nsw i32 %1290, 64, !dbg !1378
  %1298 = add nuw nsw i32 %1297, %1293, !dbg !1378
  %1299 = add nsw i32 %1298, %1296, !dbg !1378
  %1300 = ashr i32 %1299, 7, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %1300, metadata !1017, metadata !DIExpression()), !dbg !1379
  %1301 = call i32 @llvm.smin.i32(i32 %1300, i32 255), !dbg !1381
  %1302 = call i32 @llvm.smax.i32(i32 %1301, i32 0), !dbg !1381
  %1303 = trunc i32 %1302 to i8, !dbg !1381
  %1304 = getelementptr inbounds i8, ptr %1267, i64 -2, !dbg !1382
  store i8 %1303, ptr %1304, align 1, !dbg !1383, !tbaa !184
  %1305 = load i8, ptr %1268, align 1, !dbg !1384, !tbaa !184
  %1306 = zext i8 %1305 to i32, !dbg !1384
  %1307 = mul nuw nsw i32 %1306, 139, !dbg !1384
  %1308 = load i8, ptr %1272, align 1, !dbg !1384, !tbaa !184
  %1309 = zext i8 %1308 to i32, !dbg !1384
  %1310 = mul nsw i32 %1309, -11, !dbg !1384
  %1311 = add nuw nsw i32 %1307, 64, !dbg !1384
  %1312 = add nsw i32 %1311, %1310, !dbg !1384
  %1313 = ashr i32 %1312, 7, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %1313, metadata !1017, metadata !DIExpression()), !dbg !1385
  %1314 = call i32 @llvm.smin.i32(i32 %1313, i32 255), !dbg !1387
  %1315 = call i32 @llvm.smax.i32(i32 %1314, i32 0), !dbg !1387
  %1316 = trunc i32 %1315 to i8, !dbg !1387
  %1317 = getelementptr inbounds i8, ptr %1267, i64 -1, !dbg !1388
  store i8 %1316, ptr %1317, align 1, !dbg !1389, !tbaa !184
  %1318 = add nsw i32 %1155, -1, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %1318, metadata !1310, metadata !DIExpression()), !dbg !1311
  %1319 = icmp eq i32 %1318, 0, !dbg !1329
  br i1 %1319, label %1320, label %1154, !dbg !1329, !llvm.loop !1391

1320:                                             ; preds = %1265, %1145
  store i32 %1139, ptr %1124, align 4, !dbg !1393, !tbaa !393
  store i32 %1139, ptr %1127, align 4, !dbg !1394, !tbaa !404
  call void @free(ptr noundef %1146) #12, !dbg !1395
  store ptr %1142, ptr %1126, align 8, !dbg !1396, !tbaa !129
  %1321 = load i32, ptr @nj, align 8, !dbg !1397, !tbaa !298
  %1322 = icmp eq i32 %1321, 0, !dbg !1397
  br i1 %1322, label %1323, label %1653, !dbg !1326

1323:                                             ; preds = %1132, %1320
  %1324 = load i32, ptr %1125, align 8, !dbg !1399, !tbaa !400
  %1325 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !dbg !1401, !tbaa !272
  %1326 = icmp slt i32 %1324, %1325, !dbg !1402
  br i1 %1326, label %1327, label %1516, !dbg !1403

1327:                                             ; preds = %1323
  call void @llvm.dbg.value(metadata ptr %1123, metadata !1404, metadata !DIExpression()), !dbg !1415
  %1328 = load i32, ptr %1124, align 4, !dbg !1417, !tbaa !393
  call void @llvm.dbg.value(metadata i32 %1328, metadata !1407, metadata !DIExpression()), !dbg !1415
  %1329 = load i32, ptr %1127, align 4, !dbg !1418, !tbaa !404
  call void @llvm.dbg.value(metadata i32 %1329, metadata !1408, metadata !DIExpression()), !dbg !1415
  %1330 = shl nsw i32 %1329, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %1330, metadata !1409, metadata !DIExpression()), !dbg !1415
  %1331 = shl i32 %1324, 1, !dbg !1420
  %1332 = mul i32 %1328, %1331, !dbg !1421
  %1333 = sext i32 %1332 to i64, !dbg !1422
  %1334 = call noalias ptr @malloc(i64 noundef %1333) #13, !dbg !1423
  call void @llvm.dbg.value(metadata ptr %1334, metadata !1410, metadata !DIExpression()), !dbg !1415
  %1335 = icmp eq ptr %1334, null, !dbg !1424
  br i1 %1335, label %1349, label %1336, !dbg !1426

1336:                                             ; preds = %1327
  call void @llvm.dbg.value(metadata i32 0, metadata !1413, metadata !DIExpression()), !dbg !1415
  %1337 = icmp sgt i32 %1328, 0, !dbg !1427
  %1338 = load ptr, ptr %1126, align 8, !tbaa !129
  br i1 %1337, label %1339, label %1514, !dbg !1430

1339:                                             ; preds = %1336
  %1340 = sext i32 %1329 to i64
  %1341 = zext i32 %1328 to i64
  %1342 = sext i32 %1330 to i64
  %1343 = add nsw i32 %1324, -3
  %1344 = icmp eq i32 %1343, 0
  %1345 = sub nsw i32 0, %1329
  %1346 = sext i32 %1345 to i64
  %1347 = sub nsw i32 0, %1330
  %1348 = sext i32 %1347 to i64
  br label %1350, !dbg !1430

1349:                                             ; preds = %1327
  store i32 3, ptr @nj, align 8, !dbg !1431, !tbaa !298
  br label %1653, !dbg !1433

1350:                                             ; preds = %1459, %1339
  %1351 = phi i64 [ 0, %1339 ], [ %1512, %1459 ]
  call void @llvm.dbg.value(metadata i64 %1351, metadata !1413, metadata !DIExpression()), !dbg !1415
  %1352 = getelementptr inbounds i8, ptr %1338, i64 %1351, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %1352, metadata !1411, metadata !DIExpression()), !dbg !1415
  %1353 = getelementptr inbounds i8, ptr %1334, i64 %1351, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %1353, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1354 = load i8, ptr %1352, align 1, !dbg !1438, !tbaa !184
  %1355 = zext i8 %1354 to i32, !dbg !1438
  %1356 = mul nuw nsw i32 %1355, 139, !dbg !1438
  %1357 = getelementptr inbounds i8, ptr %1352, i64 %1340, !dbg !1438
  %1358 = load i8, ptr %1357, align 1, !dbg !1438, !tbaa !184
  %1359 = zext i8 %1358 to i32, !dbg !1438
  %1360 = mul nsw i32 %1359, -11, !dbg !1438
  %1361 = add nuw nsw i32 %1356, 64, !dbg !1438
  %1362 = add nsw i32 %1361, %1360, !dbg !1438
  %1363 = ashr i32 %1362, 7, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %1363, metadata !1017, metadata !DIExpression()), !dbg !1439
  %1364 = call i32 @llvm.smin.i32(i32 %1363, i32 255), !dbg !1441
  %1365 = call i32 @llvm.smax.i32(i32 %1364, i32 0), !dbg !1441
  %1366 = trunc i32 %1365 to i8, !dbg !1441
  store i8 %1366, ptr %1353, align 1, !dbg !1442, !tbaa !184
  %1367 = getelementptr inbounds i8, ptr %1353, i64 %1341, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %1367, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1368 = load i8, ptr %1352, align 1, !dbg !1444, !tbaa !184
  %1369 = zext i8 %1368 to i32, !dbg !1444
  %1370 = mul nuw nsw i32 %1369, 104, !dbg !1444
  %1371 = load i8, ptr %1357, align 1, !dbg !1444, !tbaa !184
  %1372 = zext i8 %1371 to i32, !dbg !1444
  %1373 = mul nuw nsw i32 %1372, 27, !dbg !1444
  %1374 = getelementptr inbounds i8, ptr %1352, i64 %1342, !dbg !1444
  %1375 = load i8, ptr %1374, align 1, !dbg !1444, !tbaa !184
  %1376 = zext i8 %1375 to i32, !dbg !1444
  %1377 = mul nsw i32 %1376, -3, !dbg !1444
  %1378 = add nuw nsw i32 %1370, 64, !dbg !1444
  %1379 = add nuw nsw i32 %1378, %1373, !dbg !1444
  %1380 = add nsw i32 %1379, %1377, !dbg !1444
  %1381 = ashr i32 %1380, 7, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %1381, metadata !1017, metadata !DIExpression()), !dbg !1445
  %1382 = call i32 @llvm.smin.i32(i32 %1381, i32 255), !dbg !1447
  %1383 = call i32 @llvm.smax.i32(i32 %1382, i32 0), !dbg !1447
  %1384 = trunc i32 %1383 to i8, !dbg !1447
  store i8 %1384, ptr %1367, align 1, !dbg !1448, !tbaa !184
  %1385 = getelementptr inbounds i8, ptr %1367, i64 %1341, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %1385, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1386 = load i8, ptr %1352, align 1, !dbg !1450, !tbaa !184
  %1387 = zext i8 %1386 to i32, !dbg !1450
  %1388 = mul nuw nsw i32 %1387, 28, !dbg !1450
  %1389 = load i8, ptr %1357, align 1, !dbg !1450, !tbaa !184
  %1390 = zext i8 %1389 to i32, !dbg !1450
  %1391 = mul nuw nsw i32 %1390, 109, !dbg !1450
  %1392 = load i8, ptr %1374, align 1, !dbg !1450, !tbaa !184
  %1393 = zext i8 %1392 to i32, !dbg !1450
  %1394 = mul nsw i32 %1393, -9, !dbg !1450
  %1395 = add nuw nsw i32 %1388, 64, !dbg !1450
  %1396 = add nuw nsw i32 %1395, %1391, !dbg !1450
  %1397 = add nsw i32 %1396, %1394, !dbg !1450
  %1398 = ashr i32 %1397, 7, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %1398, metadata !1017, metadata !DIExpression()), !dbg !1451
  %1399 = call i32 @llvm.smin.i32(i32 %1398, i32 255), !dbg !1453
  %1400 = call i32 @llvm.smax.i32(i32 %1399, i32 0), !dbg !1453
  %1401 = trunc i32 %1400 to i8, !dbg !1453
  store i8 %1401, ptr %1385, align 1, !dbg !1454, !tbaa !184
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1385, i64 %1341), metadata !1412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %1357, metadata !1411, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %1343, metadata !1414, metadata !DIExpression()), !dbg !1415
  %1402 = getelementptr inbounds i8, ptr %1385, i64 %1341, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %1402, metadata !1412, metadata !DIExpression()), !dbg !1415
  br i1 %1344, label %1459, label %1403, !dbg !1456

1403:                                             ; preds = %1350, %1403
  %1404 = phi ptr [ %1457, %1403 ], [ %1402, %1350 ]
  %1405 = phi ptr [ %1409, %1403 ], [ %1353, %1350 ]
  %1406 = phi i32 [ %1454, %1403 ], [ %1343, %1350 ]
  %1407 = phi ptr [ %1417, %1403 ], [ %1357, %1350 ]
  %1408 = getelementptr inbounds i8, ptr %1405, i64 %1341, !dbg !1443
  %1409 = getelementptr inbounds i8, ptr %1408, i64 %1341, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %1406, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %1407, metadata !1411, metadata !DIExpression()), !dbg !1415
  %1410 = getelementptr inbounds i8, ptr %1407, i64 %1346, !dbg !1458
  %1411 = load i8, ptr %1410, align 1, !dbg !1458, !tbaa !184
  %1412 = zext i8 %1411 to i32, !dbg !1458
  %1413 = mul nsw i32 %1412, -9, !dbg !1458
  %1414 = load i8, ptr %1407, align 1, !dbg !1458, !tbaa !184
  %1415 = zext i8 %1414 to i32, !dbg !1458
  %1416 = mul nuw nsw i32 %1415, 111, !dbg !1458
  %1417 = getelementptr inbounds i8, ptr %1407, i64 %1340, !dbg !1458
  %1418 = load i8, ptr %1417, align 1, !dbg !1458, !tbaa !184
  %1419 = zext i8 %1418 to i32, !dbg !1458
  %1420 = mul nuw nsw i32 %1419, 29, !dbg !1458
  %1421 = getelementptr inbounds i8, ptr %1407, i64 %1342, !dbg !1458
  %1422 = load i8, ptr %1421, align 1, !dbg !1458, !tbaa !184
  %1423 = zext i8 %1422 to i32, !dbg !1458
  %1424 = mul nsw i32 %1423, -3, !dbg !1458
  %1425 = add nsw i32 %1413, 64, !dbg !1458
  %1426 = add nsw i32 %1425, %1416, !dbg !1458
  %1427 = add nsw i32 %1426, %1420, !dbg !1458
  %1428 = add nsw i32 %1427, %1424, !dbg !1458
  %1429 = ashr i32 %1428, 7, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %1429, metadata !1017, metadata !DIExpression()), !dbg !1461
  %1430 = call i32 @llvm.smin.i32(i32 %1429, i32 255), !dbg !1463
  %1431 = call i32 @llvm.smax.i32(i32 %1430, i32 0), !dbg !1463
  %1432 = trunc i32 %1431 to i8, !dbg !1463
  store i8 %1432, ptr %1404, align 1, !dbg !1464, !tbaa !184
  %1433 = getelementptr inbounds i8, ptr %1404, i64 %1341, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %1433, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1434 = load i8, ptr %1410, align 1, !dbg !1466, !tbaa !184
  %1435 = zext i8 %1434 to i32, !dbg !1466
  %1436 = mul nsw i32 %1435, -3, !dbg !1466
  %1437 = load i8, ptr %1407, align 1, !dbg !1466, !tbaa !184
  %1438 = zext i8 %1437 to i32, !dbg !1466
  %1439 = mul nuw nsw i32 %1438, 29, !dbg !1466
  %1440 = load i8, ptr %1417, align 1, !dbg !1466, !tbaa !184
  %1441 = zext i8 %1440 to i32, !dbg !1466
  %1442 = mul nuw nsw i32 %1441, 111, !dbg !1466
  %1443 = load i8, ptr %1421, align 1, !dbg !1466, !tbaa !184
  %1444 = zext i8 %1443 to i32, !dbg !1466
  %1445 = mul nsw i32 %1444, -9, !dbg !1466
  %1446 = add nsw i32 %1436, 64, !dbg !1466
  %1447 = add nsw i32 %1446, %1439, !dbg !1466
  %1448 = add nsw i32 %1447, %1442, !dbg !1466
  %1449 = add nsw i32 %1448, %1445, !dbg !1466
  %1450 = ashr i32 %1449, 7, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %1450, metadata !1017, metadata !DIExpression()), !dbg !1467
  %1451 = call i32 @llvm.smin.i32(i32 %1450, i32 255), !dbg !1469
  %1452 = call i32 @llvm.smax.i32(i32 %1451, i32 0), !dbg !1469
  %1453 = trunc i32 %1452 to i8, !dbg !1469
  store i8 %1453, ptr %1433, align 1, !dbg !1470, !tbaa !184
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1433, i64 %1341), metadata !1412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %1417, metadata !1411, metadata !DIExpression()), !dbg !1415
  %1454 = add nsw i32 %1406, -1, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %1454, metadata !1414, metadata !DIExpression()), !dbg !1415
  %1455 = getelementptr inbounds i8, ptr %1409, i64 %1341, !dbg !1443
  %1456 = getelementptr inbounds i8, ptr %1455, i64 %1341, !dbg !1449
  %1457 = getelementptr inbounds i8, ptr %1456, i64 %1341, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %1457, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1458 = icmp eq i32 %1454, 0, !dbg !1456
  br i1 %1458, label %1459, label %1403, !dbg !1456, !llvm.loop !1472

1459:                                             ; preds = %1403, %1350
  %1460 = phi ptr [ %1352, %1350 ], [ %1407, %1403 ], !dbg !1455
  %1461 = phi ptr [ %1402, %1350 ], [ %1457, %1403 ], !dbg !1455
  %1462 = getelementptr inbounds i8, ptr %1460, i64 %1340, !dbg !1438
  %1463 = getelementptr inbounds i8, ptr %1462, i64 %1340, !dbg !1474
  call void @llvm.dbg.value(metadata ptr %1463, metadata !1411, metadata !DIExpression()), !dbg !1415
  %1464 = load i8, ptr %1463, align 1, !dbg !1475, !tbaa !184
  %1465 = zext i8 %1464 to i32, !dbg !1475
  %1466 = mul nuw nsw i32 %1465, 28, !dbg !1475
  %1467 = getelementptr inbounds i8, ptr %1463, i64 %1346, !dbg !1475
  %1468 = load i8, ptr %1467, align 1, !dbg !1475, !tbaa !184
  %1469 = zext i8 %1468 to i32, !dbg !1475
  %1470 = mul nuw nsw i32 %1469, 109, !dbg !1475
  %1471 = getelementptr inbounds i8, ptr %1463, i64 %1348, !dbg !1475
  %1472 = load i8, ptr %1471, align 1, !dbg !1475, !tbaa !184
  %1473 = zext i8 %1472 to i32, !dbg !1475
  %1474 = mul nsw i32 %1473, -9, !dbg !1475
  %1475 = add nuw nsw i32 %1466, 64, !dbg !1475
  %1476 = add nuw nsw i32 %1475, %1470, !dbg !1475
  %1477 = add nsw i32 %1476, %1474, !dbg !1475
  %1478 = ashr i32 %1477, 7, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %1478, metadata !1017, metadata !DIExpression()), !dbg !1476
  %1479 = call i32 @llvm.smin.i32(i32 %1478, i32 255), !dbg !1478
  %1480 = call i32 @llvm.smax.i32(i32 %1479, i32 0), !dbg !1478
  %1481 = trunc i32 %1480 to i8, !dbg !1478
  store i8 %1481, ptr %1461, align 1, !dbg !1479, !tbaa !184
  %1482 = getelementptr inbounds i8, ptr %1461, i64 %1341, !dbg !1480
  call void @llvm.dbg.value(metadata ptr %1482, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1483 = load i8, ptr %1463, align 1, !dbg !1481, !tbaa !184
  %1484 = zext i8 %1483 to i32, !dbg !1481
  %1485 = mul nuw nsw i32 %1484, 104, !dbg !1481
  %1486 = load i8, ptr %1467, align 1, !dbg !1481, !tbaa !184
  %1487 = zext i8 %1486 to i32, !dbg !1481
  %1488 = mul nuw nsw i32 %1487, 27, !dbg !1481
  %1489 = load i8, ptr %1471, align 1, !dbg !1481, !tbaa !184
  %1490 = zext i8 %1489 to i32, !dbg !1481
  %1491 = mul nsw i32 %1490, -3, !dbg !1481
  %1492 = add nuw nsw i32 %1485, 64, !dbg !1481
  %1493 = add nuw nsw i32 %1492, %1488, !dbg !1481
  %1494 = add nsw i32 %1493, %1491, !dbg !1481
  %1495 = ashr i32 %1494, 7, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %1495, metadata !1017, metadata !DIExpression()), !dbg !1482
  %1496 = call i32 @llvm.smin.i32(i32 %1495, i32 255), !dbg !1484
  %1497 = call i32 @llvm.smax.i32(i32 %1496, i32 0), !dbg !1484
  %1498 = trunc i32 %1497 to i8, !dbg !1484
  store i8 %1498, ptr %1482, align 1, !dbg !1485, !tbaa !184
  %1499 = getelementptr inbounds i8, ptr %1482, i64 %1341, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %1499, metadata !1412, metadata !DIExpression()), !dbg !1415
  %1500 = load i8, ptr %1463, align 1, !dbg !1487, !tbaa !184
  %1501 = zext i8 %1500 to i32, !dbg !1487
  %1502 = mul nuw nsw i32 %1501, 139, !dbg !1487
  %1503 = load i8, ptr %1467, align 1, !dbg !1487, !tbaa !184
  %1504 = zext i8 %1503 to i32, !dbg !1487
  %1505 = mul nsw i32 %1504, -11, !dbg !1487
  %1506 = add nuw nsw i32 %1502, 64, !dbg !1487
  %1507 = add nsw i32 %1506, %1505, !dbg !1487
  %1508 = ashr i32 %1507, 7, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %1508, metadata !1017, metadata !DIExpression()), !dbg !1488
  %1509 = call i32 @llvm.smin.i32(i32 %1508, i32 255), !dbg !1490
  %1510 = call i32 @llvm.smax.i32(i32 %1509, i32 0), !dbg !1490
  %1511 = trunc i32 %1510 to i8, !dbg !1490
  store i8 %1511, ptr %1499, align 1, !dbg !1491, !tbaa !184
  %1512 = add nuw nsw i64 %1351, 1, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %1512, metadata !1413, metadata !DIExpression()), !dbg !1415
  %1513 = icmp eq i64 %1512, %1341, !dbg !1427
  br i1 %1513, label %1514, label %1350, !dbg !1430, !llvm.loop !1493

1514:                                             ; preds = %1459, %1336
  store i32 %1331, ptr %1125, align 8, !dbg !1495, !tbaa !400
  store i32 %1328, ptr %1127, align 4, !dbg !1496, !tbaa !404
  call void @free(ptr noundef %1338) #12, !dbg !1497
  store ptr %1334, ptr %1126, align 8, !dbg !1498, !tbaa !129
  %1515 = load i32, ptr @nj, align 8, !dbg !1499, !tbaa !298
  br label %1516, !dbg !1501

1516:                                             ; preds = %1514, %1323
  %1517 = phi i32 [ %1515, %1514 ], [ 0, %1323 ]
  %1518 = icmp eq i32 %1517, 0, !dbg !1499
  br i1 %1518, label %1128, label %1653, !dbg !1433, !llvm.loop !1502

1519:                                             ; preds = %1132
  %1520 = add nuw nsw i32 %1122, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %1520, metadata !1258, metadata !DIExpression()), !dbg !1284
  %1521 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 1, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %1521, metadata !1261, metadata !DIExpression()), !dbg !1284
  %1522 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !1286, !tbaa !288
  %1523 = icmp slt i32 %1520, %1522, !dbg !1289
  br i1 %1523, label %1121, label %1524, !dbg !1290, !llvm.loop !1506

1524:                                             ; preds = %1519
  %1525 = icmp eq i32 %1522, 3, !dbg !1508
  br i1 %1525, label %1526, label %1598, !dbg !1509

1526:                                             ; preds = %1524
  call void @llvm.dbg.value(metadata ptr poison, metadata !1266, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr poison, metadata !1267, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr poison, metadata !1268, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr poison, metadata !1269, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %1134, metadata !1265, metadata !DIExpression()), !dbg !1510
  %1527 = icmp eq i32 %1134, 0, !dbg !1511
  br i1 %1527, label %1653, label %1528, !dbg !1511

1528:                                             ; preds = %1526
  %1529 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !dbg !1512, !tbaa !129
  call void @llvm.dbg.value(metadata ptr %1529, metadata !1269, metadata !DIExpression()), !dbg !1510
  %1530 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !dbg !1513, !tbaa !129
  call void @llvm.dbg.value(metadata ptr %1530, metadata !1268, metadata !DIExpression()), !dbg !1510
  %1531 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !dbg !1514, !tbaa !129
  call void @llvm.dbg.value(metadata ptr %1531, metadata !1267, metadata !DIExpression()), !dbg !1510
  %1532 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !dbg !1515, !tbaa !140
  call void @llvm.dbg.value(metadata ptr %1532, metadata !1266, metadata !DIExpression()), !dbg !1510
  br label %1533, !dbg !1511

1533:                                             ; preds = %1584, %1528
  %1534 = phi i32 [ %1585, %1584 ], [ %1130, %1528 ], !dbg !1516
  %1535 = phi ptr [ %1595, %1584 ], [ %1529, %1528 ]
  %1536 = phi ptr [ %1592, %1584 ], [ %1530, %1528 ]
  %1537 = phi ptr [ %1589, %1584 ], [ %1531, %1528 ]
  %1538 = phi ptr [ %1586, %1584 ], [ %1532, %1528 ]
  %1539 = phi i32 [ %1596, %1584 ], [ %1134, %1528 ]
  call void @llvm.dbg.value(metadata ptr %1535, metadata !1269, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %1536, metadata !1268, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %1537, metadata !1267, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %1539, metadata !1265, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %1538, metadata !1266, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 0, metadata !1262, metadata !DIExpression()), !dbg !1510
  %1540 = icmp sgt i32 %1534, 0, !dbg !1517
  br i1 %1540, label %1541, label %1584, !dbg !1518

1541:                                             ; preds = %1533, %1541
  %1542 = phi i64 [ %1580, %1541 ], [ 0, %1533 ]
  %1543 = phi ptr [ %1579, %1541 ], [ %1538, %1533 ]
  call void @llvm.dbg.value(metadata ptr %1543, metadata !1266, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %1542, metadata !1262, metadata !DIExpression()), !dbg !1510
  %1544 = getelementptr inbounds i8, ptr %1537, i64 %1542, !dbg !1519
  %1545 = load i8, ptr %1544, align 1, !dbg !1519, !tbaa !184
  %1546 = zext i8 %1545 to i32, !dbg !1519
  %1547 = shl nuw nsw i32 %1546, 8, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %1547, metadata !1270, metadata !DIExpression()), !dbg !1521
  %1548 = getelementptr inbounds i8, ptr %1536, i64 %1542, !dbg !1522
  %1549 = load i8, ptr %1548, align 1, !dbg !1522, !tbaa !184
  %1550 = zext i8 %1549 to i32, !dbg !1522
  %1551 = add nsw i32 %1550, -128, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %1551, metadata !1277, metadata !DIExpression()), !dbg !1521
  %1552 = getelementptr inbounds i8, ptr %1535, i64 %1542, !dbg !1524
  %1553 = load i8, ptr %1552, align 1, !dbg !1524, !tbaa !184
  %1554 = zext i8 %1553 to i32, !dbg !1524
  %1555 = add nsw i32 %1554, -128, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %1555, metadata !1278, metadata !DIExpression()), !dbg !1521
  %1556 = mul nsw i32 %1555, 359, !dbg !1526
  %1557 = or i32 %1547, 128, !dbg !1527
  %1558 = add nsw i32 %1556, %1557, !dbg !1528
  %1559 = ashr i32 %1558, 8, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %1559, metadata !1017, metadata !DIExpression()), !dbg !1530
  %1560 = call i32 @llvm.smin.i32(i32 %1559, i32 255), !dbg !1532
  %1561 = call i32 @llvm.smax.i32(i32 %1560, i32 0), !dbg !1532
  %1562 = trunc i32 %1561 to i8, !dbg !1532
  %1563 = getelementptr inbounds i8, ptr %1543, i64 1, !dbg !1533
  call void @llvm.dbg.value(metadata ptr %1563, metadata !1266, metadata !DIExpression()), !dbg !1510
  store i8 %1562, ptr %1543, align 1, !dbg !1534, !tbaa !184
  %1564 = mul nsw i32 %1551, -88, !dbg !1535
  %1565 = mul nsw i32 %1555, -183, !dbg !1536
  %1566 = add nsw i32 %1564, %1557, !dbg !1537
  %1567 = add nsw i32 %1566, %1565, !dbg !1538
  %1568 = ashr i32 %1567, 8, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %1568, metadata !1017, metadata !DIExpression()), !dbg !1540
  %1569 = call i32 @llvm.smin.i32(i32 %1568, i32 255), !dbg !1542
  %1570 = call i32 @llvm.smax.i32(i32 %1569, i32 0), !dbg !1542
  %1571 = trunc i32 %1570 to i8, !dbg !1542
  %1572 = getelementptr inbounds i8, ptr %1543, i64 2, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %1572, metadata !1266, metadata !DIExpression()), !dbg !1510
  store i8 %1571, ptr %1563, align 1, !dbg !1544, !tbaa !184
  %1573 = mul nsw i32 %1551, 454, !dbg !1545
  %1574 = add nsw i32 %1573, %1557, !dbg !1546
  %1575 = ashr i32 %1574, 8, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %1575, metadata !1017, metadata !DIExpression()), !dbg !1548
  %1576 = call i32 @llvm.smin.i32(i32 %1575, i32 255), !dbg !1550
  %1577 = call i32 @llvm.smax.i32(i32 %1576, i32 0), !dbg !1550
  %1578 = trunc i32 %1577 to i8, !dbg !1550
  %1579 = getelementptr inbounds i8, ptr %1543, i64 3, !dbg !1551
  call void @llvm.dbg.value(metadata ptr %1579, metadata !1266, metadata !DIExpression()), !dbg !1510
  store i8 %1578, ptr %1572, align 1, !dbg !1552, !tbaa !184
  %1580 = add nuw nsw i64 %1542, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %1580, metadata !1262, metadata !DIExpression()), !dbg !1510
  %1581 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !dbg !1516, !tbaa !282
  %1582 = sext i32 %1581 to i64, !dbg !1517
  %1583 = icmp slt i64 %1580, %1582, !dbg !1517
  br i1 %1583, label %1541, label %1584, !dbg !1518, !llvm.loop !1554

1584:                                             ; preds = %1541, %1533
  %1585 = phi i32 [ %1534, %1533 ], [ %1581, %1541 ]
  %1586 = phi ptr [ %1538, %1533 ], [ %1579, %1541 ], !dbg !1510
  %1587 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !dbg !1556, !tbaa !404
  %1588 = sext i32 %1587 to i64, !dbg !1557
  %1589 = getelementptr inbounds i8, ptr %1537, i64 %1588, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %1589, metadata !1267, metadata !DIExpression()), !dbg !1510
  %1590 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 5), align 4, !dbg !1558, !tbaa !404
  %1591 = sext i32 %1590 to i64, !dbg !1559
  %1592 = getelementptr inbounds i8, ptr %1536, i64 %1591, !dbg !1559
  call void @llvm.dbg.value(metadata ptr %1592, metadata !1268, metadata !DIExpression()), !dbg !1510
  %1593 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 5), align 4, !dbg !1560, !tbaa !404
  %1594 = sext i32 %1593 to i64, !dbg !1561
  %1595 = getelementptr inbounds i8, ptr %1535, i64 %1594, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %1595, metadata !1269, metadata !DIExpression()), !dbg !1510
  %1596 = add nsw i32 %1539, -1, !dbg !1562
  call void @llvm.dbg.value(metadata ptr %1586, metadata !1266, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %1596, metadata !1265, metadata !DIExpression()), !dbg !1510
  %1597 = icmp eq i32 %1596, 0, !dbg !1511
  br i1 %1597, label %1653, label %1533, !dbg !1511, !llvm.loop !1563

1598:                                             ; preds = %1524, %1118
  %1599 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !dbg !1565, !tbaa !393
  %1600 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !dbg !1566, !tbaa !404
  %1601 = icmp eq i32 %1599, %1600, !dbg !1567
  br i1 %1601, label %1653, label %1602, !dbg !1568

1602:                                             ; preds = %1598
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i32 poison), metadata !1279, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1569
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i32 poison), metadata !1282, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1569
  %1603 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 4), align 8, !dbg !1570, !tbaa !400
  call void @llvm.dbg.value(metadata i32 %1603, metadata !1283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1569
  %1604 = add nsw i32 %1603, -1, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %1604, metadata !1283, metadata !DIExpression()), !dbg !1569
  %1605 = icmp eq i32 %1604, 0, !dbg !1573
  br i1 %1605, label %1651, label %1606, !dbg !1573

1606:                                             ; preds = %1602
  %1607 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !dbg !1574, !tbaa !129
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1607, i32 %1599), metadata !1282, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1569
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1607, i32 %1600), metadata !1279, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1569
  %1608 = sext i32 %1599 to i64, !dbg !1575
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1282, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1569
  %1609 = getelementptr inbounds i8, ptr %1607, i64 %1608, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %1609, metadata !1282, metadata !DIExpression()), !dbg !1569
  %1610 = sext i32 %1600 to i64, !dbg !1576
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1279, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1569
  %1611 = getelementptr inbounds i8, ptr %1607, i64 %1610, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %1611, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1612 = and i32 %1604, 1, !dbg !1573
  %1613 = icmp eq i32 %1612, 0, !dbg !1573
  br i1 %1613, label %1623, label %1614, !dbg !1573

1614:                                             ; preds = %1606
  call void @llvm.dbg.value(metadata ptr %1609, metadata !1282, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %1611, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1615 = sext i32 %1599 to i64, !dbg !1577
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1609, ptr align 1 %1611, i64 %1615, i1 false), !dbg !1580
  %1616 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !dbg !1581, !tbaa !404
  %1617 = sext i32 %1616 to i64, !dbg !1582
  %1618 = getelementptr inbounds i8, ptr %1611, i64 %1617, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %1618, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1619 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !dbg !1583, !tbaa !393
  %1620 = sext i32 %1619 to i64, !dbg !1584
  %1621 = getelementptr inbounds i8, ptr %1609, i64 %1620, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %1621, metadata !1282, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %1604, metadata !1283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1569
  %1622 = add nsw i32 %1603, -2, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %1622, metadata !1283, metadata !DIExpression()), !dbg !1569
  br label %1623, !dbg !1573

1623:                                             ; preds = %1614, %1606
  %1624 = phi i32 [ undef, %1606 ], [ %1619, %1614 ]
  %1625 = phi i32 [ %1599, %1606 ], [ %1619, %1614 ]
  %1626 = phi i32 [ %1604, %1606 ], [ %1622, %1614 ]
  %1627 = phi ptr [ %1609, %1606 ], [ %1621, %1614 ]
  %1628 = phi ptr [ %1611, %1606 ], [ %1618, %1614 ]
  %1629 = icmp eq i32 %1603, 2, !dbg !1573
  br i1 %1629, label %1651, label %1630, !dbg !1573

1630:                                             ; preds = %1623, %1630
  %1631 = phi i32 [ %1646, %1630 ], [ %1625, %1623 ], !dbg !1585
  %1632 = phi i32 [ %1649, %1630 ], [ %1626, %1623 ]
  %1633 = phi ptr [ %1648, %1630 ], [ %1627, %1623 ]
  %1634 = phi ptr [ %1645, %1630 ], [ %1628, %1623 ]
  call void @llvm.dbg.value(metadata ptr %1633, metadata !1282, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %1634, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1635 = sext i32 %1631 to i64, !dbg !1577
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1633, ptr align 1 %1634, i64 %1635, i1 false), !dbg !1580
  %1636 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !dbg !1581, !tbaa !404
  %1637 = sext i32 %1636 to i64, !dbg !1582
  %1638 = getelementptr inbounds i8, ptr %1634, i64 %1637, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %1638, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1639 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !dbg !1583, !tbaa !393
  %1640 = sext i32 %1639 to i64, !dbg !1584
  %1641 = getelementptr inbounds i8, ptr %1633, i64 %1640, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %1641, metadata !1282, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %1632, metadata !1283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %1632, metadata !1283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %1641, metadata !1282, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %1638, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1642 = sext i32 %1639 to i64, !dbg !1577
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1641, ptr align 1 %1638, i64 %1642, i1 false), !dbg !1580
  %1643 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !dbg !1581, !tbaa !404
  %1644 = sext i32 %1643 to i64, !dbg !1582
  %1645 = getelementptr inbounds i8, ptr %1638, i64 %1644, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %1645, metadata !1279, metadata !DIExpression()), !dbg !1569
  %1646 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !dbg !1583, !tbaa !393
  %1647 = sext i32 %1646 to i64, !dbg !1584
  %1648 = getelementptr inbounds i8, ptr %1641, i64 %1647, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %1648, metadata !1282, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %1632, metadata !1283, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1569
  %1649 = add nsw i32 %1632, -2, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %1649, metadata !1283, metadata !DIExpression()), !dbg !1569
  %1650 = icmp eq i32 %1649, 0, !dbg !1573
  br i1 %1650, label %1651, label %1630, !dbg !1573, !llvm.loop !1586

1651:                                             ; preds = %1623, %1630, %1602
  %1652 = phi i32 [ %1599, %1602 ], [ %1624, %1623 ], [ %1646, %1630 ], !dbg !1588
  store i32 %1652, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !dbg !1589, !tbaa !404
  br label %1653, !dbg !1590

1653:                                             ; preds = %1320, %1516, %1584, %1144, %1349, %1526, %1598, %1651
  %1654 = load i32, ptr @nj, align 8, !dbg !1591, !tbaa !298
  br label %1655, !dbg !1592

1655:                                             ; preds = %32, %1076, %39, %42, %22, %19, %1653
  %1656 = phi i32 [ %1654, %1653 ], [ 1, %19 ], [ 1, %22 ], [ %38, %32 ], [ 2, %1076 ], [ 5, %39 ], [ 5, %42 ], !dbg !161
  ret i32 %1656, !dbg !1593
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetWidth() local_unnamed_addr #5 !dbg !1594 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !dbg !1597, !tbaa !282
  ret i32 %1, !dbg !1598
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetHeight() local_unnamed_addr #5 !dbg !1599 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !dbg !1600, !tbaa !272
  ret i32 %1, !dbg !1601
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njIsColor() local_unnamed_addr #5 !dbg !1602 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !1603, !tbaa !288
  %2 = icmp ne i32 %1, 1, !dbg !1604
  %3 = zext i1 %2 to i32, !dbg !1604
  ret i32 %3, !dbg !1605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @njGetImage() local_unnamed_addr #5 !dbg !1606 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !1609, !tbaa !288
  %2 = icmp eq i32 %1, 1, !dbg !1610
  %3 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !dbg !1611
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !dbg !1611
  %5 = select i1 %2, ptr %3, ptr %4, !dbg !1611
  ret ptr %5, !dbg !1612
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetImageSize() local_unnamed_addr #5 !dbg !1613 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !dbg !1614, !tbaa !282
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !dbg !1615, !tbaa !272
  %3 = mul nsw i32 %2, %1, !dbg !1616
  %4 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !dbg !1617, !tbaa !288
  %5 = mul nsw i32 %3, %4, !dbg !1618
  ret i32 %5, !dbg !1619
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1620 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @njGetBits(i32 noundef %0) unnamed_addr #7 !dbg !1626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1630, metadata !DIExpression()), !dbg !1632
  %2 = tail call fastcc i32 @njShowBits(i32 noundef %0), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %2, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %0, metadata !1634, metadata !DIExpression()), !dbg !1637
  %3 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1639, !tbaa !1177
  %4 = icmp slt i32 %3, %0, !dbg !1641
  br i1 %4, label %5, label %8, !dbg !1642

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @njShowBits(i32 noundef %0), !dbg !1643
  %7 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1644, !tbaa !1177
  br label %8, !dbg !1645

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ], !dbg !1644
  %10 = sub nsw i32 %9, %0, !dbg !1644
  store i32 %10, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1644, !tbaa !1177
  ret i32 %2, !dbg !1646
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @njGetVLC(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #8 !dbg !1647 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1651, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %1, metadata !1652, metadata !DIExpression()), !dbg !1655
  %3 = tail call fastcc i32 @njShowBits(i32 noundef 16), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %3, metadata !1653, metadata !DIExpression()), !dbg !1655
  %4 = sext i32 %3 to i64, !dbg !1657
  %5 = getelementptr inbounds %struct._nj_code, ptr %0, i64 %4, !dbg !1657
  %6 = load i8, ptr %5, align 1, !dbg !1658, !tbaa !498
  call void @llvm.dbg.value(metadata i8 %6, metadata !1654, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1655
  %7 = icmp eq i8 %6, 0, !dbg !1659
  br i1 %7, label %8, label %9, !dbg !1661

8:                                                ; preds = %2
  store i32 5, ptr @nj, align 8, !dbg !1662, !tbaa !298
  br label %44, !dbg !1664

9:                                                ; preds = %2
  %10 = zext i8 %6 to i32, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %10, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %10, metadata !1634, metadata !DIExpression()), !dbg !1665
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1667, !tbaa !1177
  %12 = icmp slt i32 %11, %10, !dbg !1668
  br i1 %12, label %13, label %16, !dbg !1669

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @njShowBits(i32 noundef %10), !dbg !1670
  %15 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1671, !tbaa !1177
  br label %16, !dbg !1672

16:                                               ; preds = %9, %13
  %17 = phi i32 [ %15, %13 ], [ %11, %9 ], !dbg !1671
  %18 = sub nsw i32 %17, %10, !dbg !1671
  store i32 %18, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1671, !tbaa !1177
  %19 = getelementptr inbounds %struct._nj_code, ptr %0, i64 %4, i32 1, !dbg !1673
  %20 = load i8, ptr %19, align 1, !dbg !1673, !tbaa !532
  call void @llvm.dbg.value(metadata i8 %20, metadata !1653, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1655
  %21 = icmp eq ptr %1, null, !dbg !1674
  br i1 %21, label %23, label %22, !dbg !1676

22:                                               ; preds = %16
  store i8 %20, ptr %1, align 1, !dbg !1677, !tbaa !184
  br label %23, !dbg !1678

23:                                               ; preds = %22, %16
  %24 = and i8 %20, 15, !dbg !1679
  %25 = zext i8 %24 to i32, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %25, metadata !1654, metadata !DIExpression()), !dbg !1655
  %26 = icmp eq i8 %24, 0, !dbg !1680
  br i1 %26, label %44, label %27, !dbg !1682

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %25, metadata !1630, metadata !DIExpression()), !dbg !1683
  %28 = tail call fastcc i32 @njShowBits(i32 noundef %25), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %28, metadata !1631, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %25, metadata !1634, metadata !DIExpression()), !dbg !1686
  %29 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1688, !tbaa !1177
  %30 = icmp slt i32 %29, %25, !dbg !1689
  br i1 %30, label %31, label %34, !dbg !1690

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @njShowBits(i32 noundef %25), !dbg !1691
  %33 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1692, !tbaa !1177
  br label %34, !dbg !1693

34:                                               ; preds = %27, %31
  %35 = phi i32 [ %33, %31 ], [ %29, %27 ], !dbg !1692
  %36 = sub nsw i32 %35, %25, !dbg !1692
  store i32 %36, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1692, !tbaa !1177
  call void @llvm.dbg.value(metadata i32 %28, metadata !1653, metadata !DIExpression()), !dbg !1655
  %37 = add nsw i32 %25, -1, !dbg !1694
  %38 = shl nuw nsw i32 1, %37, !dbg !1696
  %39 = icmp slt i32 %28, %38, !dbg !1697
  %40 = shl nsw i32 -1, %25, !dbg !1698
  %41 = or i32 %40, 1, !dbg !1698
  %42 = select i1 %39, i32 %41, i32 0, !dbg !1698
  %43 = add nsw i32 %42, %28, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %43, metadata !1653, metadata !DIExpression()), !dbg !1655
  br label %44, !dbg !1699

44:                                               ; preds = %23, %34, %8
  %45 = phi i32 [ %43, %34 ], [ 0, %8 ], [ 0, %23 ], !dbg !1655
  ret i32 %45, !dbg !1700
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @njShowBits(i32 noundef %0) unnamed_addr #9 !dbg !1701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1703, metadata !DIExpression()), !dbg !1711
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !1177
  %3 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !1712
  %4 = icmp slt i32 %2, %0, !dbg !1713
  br i1 %4, label %5, label %50, !dbg !1714

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !175
  %7 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !178
  br label %8, !dbg !1714

8:                                                ; preds = %5, %18
  %9 = phi i32 [ %22, %18 ], [ %2, %5 ]
  %10 = phi i32 [ %21, %18 ], [ %7, %5 ]
  %11 = phi ptr [ %20, %18 ], [ %6, %5 ]
  %12 = phi i32 [ %19, %18 ], [ %3, %5 ]
  %13 = icmp slt i32 %10, 1, !dbg !1715
  br i1 %13, label %14, label %24, !dbg !1717

14:                                               ; preds = %8
  %15 = shl i32 %12, 8, !dbg !1718
  %16 = or i32 %15, 255, !dbg !1720
  store i32 %16, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !dbg !1721, !tbaa !1712
  %17 = add nsw i32 %9, 8, !dbg !1722
  store i32 %17, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1722, !tbaa !1177
  br label %18, !dbg !1723

18:                                               ; preds = %24, %49, %44, %45, %35, %35, %40, %14
  %19 = phi i32 [ %16, %14 ], [ %31, %40 ], [ %31, %35 ], [ %31, %35 ], [ %47, %45 ], [ %31, %44 ], [ %31, %49 ], [ %31, %24 ]
  %20 = phi ptr [ %11, %14 ], [ %36, %40 ], [ %36, %35 ], [ %36, %35 ], [ %36, %45 ], [ %36, %44 ], [ %25, %49 ], [ %25, %24 ]
  %21 = phi i32 [ %10, %14 ], [ 0, %40 ], [ %38, %35 ], [ %38, %35 ], [ %38, %45 ], [ %38, %44 ], [ 0, %49 ], [ %27, %24 ]
  %22 = phi i32 [ %17, %14 ], [ %28, %40 ], [ %28, %35 ], [ %28, %35 ], [ %48, %45 ], [ %28, %44 ], [ %28, %49 ], [ %28, %24 ]
  %23 = icmp slt i32 %22, %0, !dbg !1713
  br i1 %23, label %8, label %50, !dbg !1714, !llvm.loop !1724

24:                                               ; preds = %8
  %25 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1726
  store ptr %25, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !1726, !tbaa !175
  %26 = load i8, ptr %11, align 1, !dbg !1727, !tbaa !184
  call void @llvm.dbg.value(metadata i8 %26, metadata !1704, metadata !DIExpression()), !dbg !1711
  %27 = add nsw i32 %10, -1, !dbg !1728
  store i32 %27, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !1728, !tbaa !178
  %28 = add nsw i32 %9, 8, !dbg !1729
  store i32 %28, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1729, !tbaa !1177
  %29 = shl i32 %12, 8, !dbg !1730
  %30 = zext i8 %26 to i32, !dbg !1731
  %31 = or i32 %29, %30, !dbg !1732
  store i32 %31, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !dbg !1733, !tbaa !1712
  %32 = icmp eq i8 %26, -1, !dbg !1734
  br i1 %32, label %33, label %18, !dbg !1735

33:                                               ; preds = %24
  %34 = icmp eq i32 %27, 0, !dbg !1736
  br i1 %34, label %49, label %35, !dbg !1737

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !1738
  store ptr %36, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !dbg !1738, !tbaa !175
  %37 = load i8, ptr %25, align 1, !dbg !1739, !tbaa !184
  call void @llvm.dbg.value(metadata i8 %37, metadata !1705, metadata !DIExpression()), !dbg !1740
  %38 = add nsw i32 %10, -2, !dbg !1741
  store i32 %38, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !1741, !tbaa !178
  %39 = zext i8 %37 to i32, !dbg !1742
  switch i8 %37, label %41 [
    i8 0, label %18
    i8 -1, label %18
    i8 -39, label %40
  ], !dbg !1743

40:                                               ; preds = %35
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !dbg !1744, !tbaa !178
  br label %18, !dbg !1746

41:                                               ; preds = %35
  %42 = and i32 %39, 248, !dbg !1747
  %43 = icmp eq i32 %42, 208, !dbg !1749
  br i1 %43, label %45, label %44, !dbg !1750

44:                                               ; preds = %41
  store i32 5, ptr @nj, align 8, !dbg !1751, !tbaa !298
  br label %18, !dbg !1752

45:                                               ; preds = %41
  %46 = shl i32 %31, 8, !dbg !1753
  %47 = or i32 %46, %39, !dbg !1755
  store i32 %47, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !dbg !1756, !tbaa !1712
  %48 = add nsw i32 %9, 16, !dbg !1757
  store i32 %48, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !dbg !1757, !tbaa !1177
  br label %18

49:                                               ; preds = %33
  store i32 5, ptr @nj, align 8, !dbg !1758, !tbaa !298
  br label %18

50:                                               ; preds = %18, %1
  %51 = phi i32 [ %3, %1 ], [ %19, %18 ], !dbg !1759
  %52 = phi i32 [ %2, %1 ], [ %22, %18 ], !dbg !1760
  %53 = sub nsw i32 %52, %0, !dbg !1761
  %54 = ashr i32 %51, %53, !dbg !1762
  %55 = shl nsw i32 -1, %0, !dbg !1763
  %56 = xor i32 %55, -1, !dbg !1763
  %57 = and i32 %54, %56, !dbg !1764
  ret i32 %57, !dbg !1765
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nj", scope: !2, file: !6, line: 332, type: !61, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0 (https://github.com/llvm/llvm-project.git 08d094a0e457360ad8b94b017d2dc277e697ca76)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !23, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_nj_result", file: !6, line: 117, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "example.c", directory: "/app")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "NJ_OK", value: 0)
!10 = !DIEnumerator(name: "NJ_NO_JPEG", value: 1)
!11 = !DIEnumerator(name: "NJ_UNSUPPORTED", value: 2)
!12 = !DIEnumerator(name: "NJ_OUT_OF_MEM", value: 3)
!13 = !DIEnumerator(name: "NJ_INTERNAL_ERR", value: 4)
!14 = !DIEnumerator(name: "NJ_SYNTAX_ERROR", value: 5)
!15 = !DIEnumerator(name: "__NJ_FINISHED", value: 6)
!16 = !{!17, !18, !21, !20, !22}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!0, !24, !54}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "counts", scope: !26, file: !6, line: 580, type: !51, isLocal: true, isDefinition: true)
!26 = distinct !DISubprogram(name: "njDecodeDHT", scope: !6, file: !6, line: 577, type: !27, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{null}
!29 = !{!30, !31, !32, !33, !34, !35, !36, !43}
!30 = !DILocalVariable(name: "codelen", scope: !26, file: !6, line: 578, type: !22)
!31 = !DILocalVariable(name: "currcnt", scope: !26, file: !6, line: 578, type: !22)
!32 = !DILocalVariable(name: "remain", scope: !26, file: !6, line: 578, type: !22)
!33 = !DILocalVariable(name: "spread", scope: !26, file: !6, line: 578, type: !22)
!34 = !DILocalVariable(name: "i", scope: !26, file: !6, line: 578, type: !22)
!35 = !DILocalVariable(name: "j", scope: !26, file: !6, line: 578, type: !22)
!36 = !DILocalVariable(name: "vlc", scope: !26, file: !6, line: 579, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "nj_vlc_code_t", file: !6, line: 300, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_nj_code", file: !6, line: 298, size: 16, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !39, file: !6, line: 299, baseType: !20, size: 8)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !39, file: !6, line: 299, baseType: !20, size: 8, offset: 8)
!43 = !DILocalVariable(name: "code", scope: !44, file: !6, line: 601, type: !20)
!44 = distinct !DILexicalBlock(scope: !45, file: !6, line: 600, column: 45)
!45 = distinct !DILexicalBlock(scope: !46, file: !6, line: 600, column: 13)
!46 = distinct !DILexicalBlock(scope: !47, file: !6, line: 600, column: 13)
!47 = distinct !DILexicalBlock(scope: !48, file: !6, line: 593, column: 55)
!48 = distinct !DILexicalBlock(scope: !49, file: !6, line: 593, column: 9)
!49 = distinct !DILexicalBlock(scope: !50, file: !6, line: 593, column: 9)
!50 = distinct !DILexicalBlock(scope: !26, file: !6, line: 583, column: 29)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 16)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "njZZ", scope: !2, file: !6, line: 334, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 512, elements: !59)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !{!60}
!60 = !DISubrange(count: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "nj_context_t", file: !6, line: 330, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_nj_ctx", file: !6, line: 313, size: 4200256, elements: !63)
!63 = !{!64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !94, !95, !96, !100, !104, !105, !106, !108, !109}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !62, file: !6, line: 314, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "nj_result_t", file: !6, line: 125, baseType: !5)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !62, file: !6, line: 315, baseType: !18, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !62, file: !6, line: 316, baseType: !22, size: 32, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !6, line: 317, baseType: !22, size: 32, offset: 160)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !62, file: !6, line: 318, baseType: !22, size: 32, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !62, file: !6, line: 318, baseType: !22, size: 32, offset: 224)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mbwidth", scope: !62, file: !6, line: 319, baseType: !22, size: 32, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "mbheight", scope: !62, file: !6, line: 319, baseType: !22, size: 32, offset: 288)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mbsizex", scope: !62, file: !6, line: 320, baseType: !22, size: 32, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "mbsizey", scope: !62, file: !6, line: 320, baseType: !22, size: 32, offset: 352)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ncomp", scope: !62, file: !6, line: 321, baseType: !22, size: 32, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !62, file: !6, line: 322, baseType: !77, size: 1152, offset: 448)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1152, elements: !92)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "nj_component_t", file: !6, line: 311, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_nj_cmp", file: !6, line: 302, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !79, file: !6, line: 303, baseType: !22, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !79, file: !6, line: 304, baseType: !22, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ssy", scope: !79, file: !6, line: 304, baseType: !22, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !79, file: !6, line: 305, baseType: !22, size: 32, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !79, file: !6, line: 305, baseType: !22, size: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !79, file: !6, line: 306, baseType: !22, size: 32, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "qtsel", scope: !79, file: !6, line: 307, baseType: !22, size: 32, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "actabsel", scope: !79, file: !6, line: 308, baseType: !22, size: 32, offset: 224)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "dctabsel", scope: !79, file: !6, line: 308, baseType: !22, size: 32, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dcpred", scope: !79, file: !6, line: 309, baseType: !22, size: 32, offset: 288)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !79, file: !6, line: 310, baseType: !21, size: 64, offset: 320)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "qtused", scope: !62, file: !6, line: 323, baseType: !22, size: 32, offset: 1600)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "qtavail", scope: !62, file: !6, line: 323, baseType: !22, size: 32, offset: 1632)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "qtab", scope: !62, file: !6, line: 324, baseType: !97, size: 2048, offset: 1664)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !98)
!98 = !{!99, !60}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "vlctab", scope: !62, file: !6, line: 325, baseType: !101, size: 4194304, offset: 3712)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4194304, elements: !102)
!102 = !{!99, !103}
!103 = !DISubrange(count: 65536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !62, file: !6, line: 326, baseType: !22, size: 32, offset: 4198016)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bufbits", scope: !62, file: !6, line: 326, baseType: !22, size: 32, offset: 4198048)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !62, file: !6, line: 327, baseType: !107, size: 2048, offset: 4198080)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !59)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "rstinterval", scope: !62, file: !6, line: 328, baseType: !22, size: 32, offset: 4200128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "rgb", scope: !62, file: !6, line: 329, baseType: !21, size: 64, offset: 4200192)
!110 = !{i32 7, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = !{i32 8, !"PIC Level", i32 2}
!114 = !{i32 7, !"PIE Level", i32 2}
!115 = !{i32 7, !"uwtable", i32 2}
!116 = !{!"clang version 16.0.0 (https://github.com/llvm/llvm-project.git 08d094a0e457360ad8b94b017d2dc277e697ca76)"}
!117 = distinct !DISubprogram(name: "njInit", scope: !6, file: !6, line: 868, type: !27, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!118 = !{}
!119 = !DILocation(line: 869, column: 5, scope: !117)
!120 = !DILocation(line: 870, column: 1, scope: !117)
!121 = distinct !DISubprogram(name: "njDone", scope: !6, file: !6, line: 872, type: !27, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!122 = !{!123}
!123 = !DILocalVariable(name: "i", scope: !121, file: !6, line: 873, type: !22)
!124 = !DILocation(line: 0, scope: !121)
!125 = !DILocation(line: 875, column: 24, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !6, line: 875, column: 13)
!127 = distinct !DILexicalBlock(scope: !128, file: !6, line: 874, column: 5)
!128 = distinct !DILexicalBlock(scope: !121, file: !6, line: 874, column: 5)
!129 = !{!130, !134, i64 40}
!130 = !{!"_nj_cmp", !131, i64 0, !131, i64 4, !131, i64 8, !131, i64 12, !131, i64 16, !131, i64 20, !131, i64 24, !131, i64 28, !131, i64 32, !131, i64 36, !134, i64 40}
!131 = !{!"int", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C/C++ TBAA"}
!134 = !{!"any pointer", !132, i64 0}
!135 = !DILocation(line: 875, column: 13, scope: !126)
!136 = !DILocation(line: 875, column: 13, scope: !127)
!137 = !DILocation(line: 875, column: 32, scope: !126)
!138 = !DILocation(line: 876, column: 12, scope: !139)
!139 = distinct !DILexicalBlock(scope: !121, file: !6, line: 876, column: 9)
!140 = !{!141, !134, i64 525024}
!141 = !{!"_nj_ctx", !132, i64 0, !134, i64 8, !131, i64 16, !131, i64 20, !131, i64 24, !131, i64 28, !131, i64 32, !131, i64 36, !131, i64 40, !131, i64 44, !131, i64 48, !132, i64 56, !131, i64 200, !131, i64 204, !132, i64 208, !132, i64 464, !131, i64 524752, !131, i64 524756, !132, i64 524760, !131, i64 525016, !134, i64 525024}
!142 = !DILocation(line: 876, column: 9, scope: !139)
!143 = !DILocation(line: 876, column: 9, scope: !121)
!144 = !DILocation(line: 876, column: 17, scope: !139)
!145 = !DILocation(line: 869, column: 5, scope: !117, inlinedAt: !146)
!146 = distinct !DILocation(line: 877, column: 5, scope: !121)
!147 = !DILocation(line: 878, column: 1, scope: !121)
!148 = !DISubprogram(name: "free", scope: !149, file: !149, line: 555, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !118)
!149 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!150 = !DISubroutineType(types: !151)
!151 = !{null, !17}
!152 = distinct !DISubprogram(name: "njDecode", scope: !6, file: !6, line: 880, type: !153, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!153 = !DISubroutineType(types: !154)
!154 = !{!65, !155, !157}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "jpeg", arg: 1, scope: !152, file: !6, line: 880, type: !155)
!160 = !DILocalVariable(name: "size", arg: 2, scope: !152, file: !6, line: 880, type: !157)
!161 = !DILocation(line: 0, scope: !152)
!162 = !DILocation(line: 0, scope: !121, inlinedAt: !163)
!163 = distinct !DILocation(line: 881, column: 5, scope: !152)
!164 = !DILocation(line: 875, column: 24, scope: !126, inlinedAt: !163)
!165 = !DILocation(line: 875, column: 13, scope: !126, inlinedAt: !163)
!166 = !DILocation(line: 875, column: 13, scope: !127, inlinedAt: !163)
!167 = !DILocation(line: 875, column: 32, scope: !126, inlinedAt: !163)
!168 = !DILocation(line: 876, column: 12, scope: !139, inlinedAt: !163)
!169 = !DILocation(line: 876, column: 9, scope: !139, inlinedAt: !163)
!170 = !DILocation(line: 876, column: 9, scope: !121, inlinedAt: !163)
!171 = !DILocation(line: 876, column: 17, scope: !139, inlinedAt: !163)
!172 = !DILocation(line: 869, column: 5, scope: !117, inlinedAt: !173)
!173 = distinct !DILocation(line: 877, column: 5, scope: !121, inlinedAt: !163)
!174 = !DILocation(line: 882, column: 12, scope: !152)
!175 = !{!141, !134, i64 8}
!176 = !DILocation(line: 883, column: 20, scope: !152)
!177 = !DILocation(line: 883, column: 13, scope: !152)
!178 = !{!141, !131, i64 16}
!179 = !DILocation(line: 884, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !152, file: !6, line: 884, column: 9)
!181 = !DILocation(line: 884, column: 9, scope: !152)
!182 = !DILocation(line: 885, column: 10, scope: !183)
!183 = distinct !DILexicalBlock(scope: !152, file: !6, line: 885, column: 9)
!184 = !{!132, !132, i64 0}
!185 = !DILocation(line: 885, column: 31, scope: !183)
!186 = !DILocation(line: 885, column: 28, scope: !183)
!187 = !DILocation(line: 885, column: 9, scope: !152)
!188 = !DILocalVariable(name: "count", arg: 1, scope: !189, file: !6, line: 500, type: !22)
!189 = distinct !DISubprogram(name: "njSkip", scope: !6, file: !6, line: 500, type: !190, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !22}
!192 = !{!188}
!193 = !DILocation(line: 0, scope: !189, inlinedAt: !194)
!194 = distinct !DILocation(line: 886, column: 5, scope: !152)
!195 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !194)
!196 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !194)
!197 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !194)
!198 = !{!141, !131, i64 20}
!199 = !DILocation(line: 887, column: 5, scope: !152)
!200 = !DILocation(line: 887, column: 16, scope: !152)
!201 = !DILocation(line: 888, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !6, line: 888, column: 13)
!203 = distinct !DILexicalBlock(scope: !152, file: !6, line: 887, column: 23)
!204 = !DILocation(line: 888, column: 22, scope: !202)
!205 = !DILocation(line: 888, column: 27, scope: !202)
!206 = !DILocation(line: 888, column: 34, scope: !202)
!207 = !DILocation(line: 888, column: 31, scope: !202)
!208 = !DILocation(line: 888, column: 41, scope: !202)
!209 = !DILocation(line: 888, column: 13, scope: !203)
!210 = !DILocation(line: 0, scope: !189, inlinedAt: !211)
!211 = distinct !DILocation(line: 889, column: 9, scope: !203)
!212 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !211)
!213 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !211)
!214 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !211)
!215 = !DILocation(line: 890, column: 17, scope: !203)
!216 = !DILocation(line: 890, column: 9, scope: !203)
!217 = !DILocalVariable(name: "ssxmax", scope: !218, file: !6, line: 524, type: !22)
!218 = distinct !DISubprogram(name: "njDecodeSOF", scope: !6, file: !6, line: 523, type: !27, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!219 = !{!220, !217, !221, !222}
!220 = !DILocalVariable(name: "i", scope: !218, file: !6, line: 524, type: !22)
!221 = !DILocalVariable(name: "ssymax", scope: !218, file: !6, line: 524, type: !22)
!222 = !DILocalVariable(name: "c", scope: !218, file: !6, line: 525, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!224 = !DILocation(line: 0, scope: !218, inlinedAt: !225)
!225 = distinct !DILocation(line: 891, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !203, file: !6, line: 890, column: 29)
!227 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !230)
!228 = distinct !DILexicalBlock(scope: !229, file: !6, line: 512, column: 9)
!229 = distinct !DISubprogram(name: "njDecodeLength", scope: !6, file: !6, line: 511, type: !27, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!230 = distinct !DILocation(line: 526, column: 5, scope: !218, inlinedAt: !225)
!231 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !230)
!232 = !DILocalVariable(name: "pos", arg: 1, scope: !233, file: !6, line: 507, type: !18)
!233 = distinct !DISubprogram(name: "njDecode16", scope: !6, file: !6, line: 507, type: !234, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !18}
!236 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!237 = !{!232}
!238 = !DILocation(line: 0, scope: !233, inlinedAt: !239)
!239 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !230)
!240 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !239)
!241 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !239)
!242 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !239)
!243 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !239)
!244 = !DILocation(line: 513, column: 15, scope: !229, inlinedAt: !230)
!245 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !230)
!246 = distinct !DILexicalBlock(scope: !229, file: !6, line: 514, column: 9)
!247 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !230)
!248 = !DILocation(line: 0, scope: !189, inlinedAt: !249)
!249 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !230)
!250 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !249)
!251 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !249)
!252 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !249)
!253 = !DILocation(line: 527, column: 5, scope: !254, inlinedAt: !225)
!254 = distinct !DILexicalBlock(scope: !255, file: !6, line: 527, column: 5)
!255 = distinct !DILexicalBlock(scope: !218, file: !6, line: 527, column: 5)
!256 = !DILocation(line: 527, column: 5, scope: !255, inlinedAt: !225)
!257 = !DILocation(line: 528, column: 19, scope: !258, inlinedAt: !225)
!258 = distinct !DILexicalBlock(scope: !218, file: !6, line: 528, column: 9)
!259 = !DILocation(line: 528, column: 9, scope: !218, inlinedAt: !225)
!260 = !DILocation(line: 529, column: 9, scope: !261, inlinedAt: !225)
!261 = distinct !DILexicalBlock(scope: !218, file: !6, line: 529, column: 9)
!262 = !DILocation(line: 529, column: 19, scope: !261, inlinedAt: !225)
!263 = !DILocation(line: 529, column: 9, scope: !218, inlinedAt: !225)
!264 = !DILocation(line: 530, column: 34, scope: !218, inlinedAt: !225)
!265 = !DILocation(line: 0, scope: !233, inlinedAt: !266)
!266 = distinct !DILocation(line: 530, column: 17, scope: !218, inlinedAt: !225)
!267 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !266)
!268 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !266)
!269 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !266)
!270 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !266)
!271 = !DILocation(line: 530, column: 15, scope: !218, inlinedAt: !225)
!272 = !{!141, !131, i64 28}
!273 = !DILocation(line: 531, column: 33, scope: !218, inlinedAt: !225)
!274 = !DILocation(line: 0, scope: !233, inlinedAt: !275)
!275 = distinct !DILocation(line: 531, column: 16, scope: !218, inlinedAt: !225)
!276 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !275)
!277 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !275)
!278 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !275)
!279 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !275)
!280 = !DILocation(line: 531, column: 16, scope: !218, inlinedAt: !225)
!281 = !DILocation(line: 531, column: 14, scope: !218, inlinedAt: !225)
!282 = !{!141, !131, i64 24}
!283 = !DILocation(line: 532, column: 10, scope: !284, inlinedAt: !225)
!284 = distinct !DILexicalBlock(scope: !218, file: !6, line: 532, column: 9)
!285 = !DILocation(line: 532, column: 19, scope: !284, inlinedAt: !225)
!286 = !DILocation(line: 533, column: 16, scope: !218, inlinedAt: !225)
!287 = !DILocation(line: 533, column: 14, scope: !218, inlinedAt: !225)
!288 = !{!141, !131, i64 48}
!289 = !DILocation(line: 0, scope: !189, inlinedAt: !290)
!290 = distinct !DILocation(line: 534, column: 5, scope: !218, inlinedAt: !225)
!291 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !290)
!292 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !290)
!293 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !290)
!294 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !290)
!295 = distinct !DILexicalBlock(scope: !189, file: !6, line: 504, column: 9)
!296 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !290)
!297 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !290)
!298 = !{!141, !132, i64 0}
!299 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !290)
!300 = !DILocation(line: 535, column: 5, scope: !218, inlinedAt: !225)
!301 = !DILocation(line: 542, column: 31, scope: !302, inlinedAt: !225)
!302 = distinct !DILexicalBlock(scope: !218, file: !6, line: 542, column: 9)
!303 = !DILocation(line: 542, column: 19, scope: !302, inlinedAt: !225)
!304 = !DILocation(line: 542, column: 9, scope: !218, inlinedAt: !225)
!305 = !{!141, !131, i64 200}
!306 = !DILocation(line: 543, column: 5, scope: !307, inlinedAt: !225)
!307 = distinct !DILexicalBlock(scope: !218, file: !6, line: 543, column: 5)
!308 = !DILocation(line: 544, column: 18, scope: !309, inlinedAt: !225)
!309 = distinct !DILexicalBlock(scope: !310, file: !6, line: 543, column: 56)
!310 = distinct !DILexicalBlock(scope: !307, file: !6, line: 543, column: 5)
!311 = !DILocation(line: 544, column: 16, scope: !309, inlinedAt: !225)
!312 = !{!130, !131, i64 0}
!313 = !DILocation(line: 545, column: 24, scope: !314, inlinedAt: !225)
!314 = distinct !DILexicalBlock(scope: !309, file: !6, line: 545, column: 13)
!315 = !DILocation(line: 545, column: 18, scope: !314, inlinedAt: !225)
!316 = !DILocation(line: 545, column: 22, scope: !314, inlinedAt: !225)
!317 = !{!130, !131, i64 4}
!318 = !DILocation(line: 545, column: 13, scope: !309, inlinedAt: !225)
!319 = !DILocation(line: 546, column: 30, scope: !320, inlinedAt: !225)
!320 = distinct !DILexicalBlock(scope: !309, file: !6, line: 546, column: 13)
!321 = !DILocation(line: 546, column: 20, scope: !320, inlinedAt: !225)
!322 = !DILocation(line: 546, column: 13, scope: !309, inlinedAt: !225)
!323 = !DILocation(line: 547, column: 24, scope: !324, inlinedAt: !225)
!324 = distinct !DILexicalBlock(scope: !309, file: !6, line: 547, column: 13)
!325 = !DILocation(line: 547, column: 34, scope: !324, inlinedAt: !225)
!326 = !DILocation(line: 547, column: 18, scope: !324, inlinedAt: !225)
!327 = !DILocation(line: 547, column: 22, scope: !324, inlinedAt: !225)
!328 = !{!130, !131, i64 8}
!329 = !DILocation(line: 547, column: 13, scope: !309, inlinedAt: !225)
!330 = !DILocation(line: 548, column: 30, scope: !331, inlinedAt: !225)
!331 = distinct !DILexicalBlock(scope: !309, file: !6, line: 548, column: 13)
!332 = !DILocation(line: 548, column: 20, scope: !331, inlinedAt: !225)
!333 = !DILocation(line: 548, column: 13, scope: !309, inlinedAt: !225)
!334 = !DILocation(line: 549, column: 25, scope: !335, inlinedAt: !225)
!335 = distinct !DILexicalBlock(scope: !309, file: !6, line: 549, column: 13)
!336 = !DILocation(line: 549, column: 17, scope: !335, inlinedAt: !225)
!337 = !DILocation(line: 549, column: 23, scope: !335, inlinedAt: !225)
!338 = !{!130, !131, i64 24}
!339 = !DILocation(line: 549, column: 36, scope: !335, inlinedAt: !225)
!340 = !DILocation(line: 549, column: 13, scope: !309, inlinedAt: !225)
!341 = !DILocation(line: 0, scope: !189, inlinedAt: !342)
!342 = distinct !DILocation(line: 550, column: 9, scope: !309, inlinedAt: !225)
!343 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !342)
!344 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !342)
!345 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !342)
!346 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !342)
!347 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !342)
!348 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !342)
!349 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !342)
!350 = !DILocation(line: 551, column: 24, scope: !309, inlinedAt: !225)
!351 = !DILocation(line: 551, column: 19, scope: !309, inlinedAt: !225)
!352 = !DILocation(line: 552, column: 13, scope: !309, inlinedAt: !225)
!353 = !DILocation(line: 553, column: 13, scope: !309, inlinedAt: !225)
!354 = !DILocation(line: 543, column: 46, scope: !310, inlinedAt: !225)
!355 = !DILocation(line: 543, column: 51, scope: !310, inlinedAt: !225)
!356 = !DILocation(line: 543, column: 33, scope: !310, inlinedAt: !225)
!357 = distinct !{!357, !306, !358, !359}
!358 = !DILocation(line: 554, column: 5, scope: !307, inlinedAt: !225)
!359 = !{!"llvm.loop.mustprogress"}
!360 = !DILocation(line: 555, column: 18, scope: !361, inlinedAt: !225)
!361 = distinct !DILexicalBlock(scope: !218, file: !6, line: 555, column: 9)
!362 = !DILocation(line: 555, column: 9, scope: !218, inlinedAt: !225)
!363 = !DILocation(line: 557, column: 25, scope: !364, inlinedAt: !225)
!364 = distinct !DILexicalBlock(scope: !361, file: !6, line: 555, column: 24)
!365 = !DILocation(line: 557, column: 16, scope: !364, inlinedAt: !225)
!366 = !DILocation(line: 558, column: 5, scope: !364, inlinedAt: !225)
!367 = !DILocation(line: 559, column: 25, scope: !218, inlinedAt: !225)
!368 = !DILocation(line: 559, column: 16, scope: !218, inlinedAt: !225)
!369 = !{!141, !131, i64 40}
!370 = !DILocation(line: 560, column: 25, scope: !218, inlinedAt: !225)
!371 = !DILocation(line: 560, column: 16, scope: !218, inlinedAt: !225)
!372 = !{!141, !131, i64 44}
!373 = !DILocation(line: 561, column: 28, scope: !218, inlinedAt: !225)
!374 = !DILocation(line: 561, column: 41, scope: !218, inlinedAt: !225)
!375 = !DILocation(line: 561, column: 46, scope: !218, inlinedAt: !225)
!376 = !DILocation(line: 561, column: 16, scope: !218, inlinedAt: !225)
!377 = !{!141, !131, i64 32}
!378 = !DILocation(line: 562, column: 30, scope: !218, inlinedAt: !225)
!379 = !DILocation(line: 562, column: 43, scope: !218, inlinedAt: !225)
!380 = !DILocation(line: 562, column: 48, scope: !218, inlinedAt: !225)
!381 = !DILocation(line: 562, column: 17, scope: !218, inlinedAt: !225)
!382 = !{!141, !131, i64 36}
!383 = !DILocation(line: 563, column: 5, scope: !384, inlinedAt: !225)
!384 = distinct !DILexicalBlock(scope: !218, file: !6, line: 563, column: 5)
!385 = !DILocation(line: 564, column: 35, scope: !386, inlinedAt: !225)
!386 = distinct !DILexicalBlock(scope: !387, file: !6, line: 563, column: 56)
!387 = distinct !DILexicalBlock(scope: !384, file: !6, line: 563, column: 5)
!388 = !DILocation(line: 564, column: 30, scope: !386, inlinedAt: !225)
!389 = !DILocation(line: 564, column: 48, scope: !386, inlinedAt: !225)
!390 = !DILocation(line: 564, column: 53, scope: !386, inlinedAt: !225)
!391 = !DILocation(line: 564, column: 12, scope: !386, inlinedAt: !225)
!392 = !DILocation(line: 564, column: 18, scope: !386, inlinedAt: !225)
!393 = !{!130, !131, i64 12}
!394 = !DILocation(line: 565, column: 37, scope: !386, inlinedAt: !225)
!395 = !DILocation(line: 565, column: 32, scope: !386, inlinedAt: !225)
!396 = !DILocation(line: 565, column: 50, scope: !386, inlinedAt: !225)
!397 = !DILocation(line: 565, column: 55, scope: !386, inlinedAt: !225)
!398 = !DILocation(line: 565, column: 12, scope: !386, inlinedAt: !225)
!399 = !DILocation(line: 565, column: 19, scope: !386, inlinedAt: !225)
!400 = !{!130, !131, i64 16}
!401 = !DILocation(line: 566, column: 41, scope: !386, inlinedAt: !225)
!402 = !DILocation(line: 566, column: 12, scope: !386, inlinedAt: !225)
!403 = !DILocation(line: 566, column: 19, scope: !386, inlinedAt: !225)
!404 = !{!130, !131, i64 20}
!405 = !DILocation(line: 567, column: 24, scope: !406, inlinedAt: !225)
!406 = distinct !DILexicalBlock(scope: !386, file: !6, line: 567, column: 13)
!407 = !DILocation(line: 567, column: 29, scope: !406, inlinedAt: !225)
!408 = !DILocation(line: 567, column: 67, scope: !406, inlinedAt: !225)
!409 = !DILocation(line: 567, column: 72, scope: !406, inlinedAt: !225)
!410 = !DILocation(line: 568, column: 79, scope: !411, inlinedAt: !225)
!411 = distinct !DILexicalBlock(scope: !386, file: !6, line: 568, column: 13)
!412 = !DILocation(line: 568, column: 88, scope: !411, inlinedAt: !225)
!413 = !DILocation(line: 568, column: 55, scope: !411, inlinedAt: !225)
!414 = !DILocation(line: 568, column: 44, scope: !411, inlinedAt: !225)
!415 = !DILocation(line: 568, column: 18, scope: !411, inlinedAt: !225)
!416 = !DILocation(line: 568, column: 25, scope: !411, inlinedAt: !225)
!417 = !DILocation(line: 568, column: 13, scope: !386, inlinedAt: !225)
!418 = !DILocation(line: 563, column: 46, scope: !387, inlinedAt: !225)
!419 = !DILocation(line: 563, column: 51, scope: !387, inlinedAt: !225)
!420 = !DILocation(line: 563, column: 33, scope: !387, inlinedAt: !225)
!421 = distinct !{!421, !383, !422, !359}
!422 = !DILocation(line: 569, column: 5, scope: !384, inlinedAt: !225)
!423 = !DILocation(line: 570, column: 18, scope: !424, inlinedAt: !225)
!424 = distinct !DILexicalBlock(scope: !218, file: !6, line: 570, column: 9)
!425 = !DILocation(line: 570, column: 9, scope: !218, inlinedAt: !225)
!426 = !DILocation(line: 571, column: 55, scope: !427, inlinedAt: !225)
!427 = distinct !DILexicalBlock(scope: !424, file: !6, line: 570, column: 24)
!428 = !DILocation(line: 571, column: 67, scope: !427, inlinedAt: !225)
!429 = !DILocation(line: 571, column: 46, scope: !427, inlinedAt: !225)
!430 = !DILocation(line: 571, column: 35, scope: !427, inlinedAt: !225)
!431 = !DILocation(line: 571, column: 16, scope: !427, inlinedAt: !225)
!432 = !DILocation(line: 572, column: 14, scope: !433, inlinedAt: !225)
!433 = distinct !DILexicalBlock(scope: !427, file: !6, line: 572, column: 13)
!434 = !DILocation(line: 572, column: 13, scope: !427, inlinedAt: !225)
!435 = !DILocation(line: 0, scope: !189, inlinedAt: !436)
!436 = distinct !DILocation(line: 574, column: 5, scope: !218, inlinedAt: !225)
!437 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !436)
!438 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !436)
!439 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !436)
!440 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !436)
!441 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !436)
!442 = !DILocation(line: 575, column: 1, scope: !218, inlinedAt: !225)
!443 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !444)
!444 = distinct !DILocation(line: 581, column: 5, scope: !26, inlinedAt: !445)
!445 = distinct !DILocation(line: 892, column: 24, scope: !226)
!446 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !444)
!447 = !DILocation(line: 0, scope: !233, inlinedAt: !448)
!448 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !444)
!449 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !448)
!450 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !448)
!451 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !448)
!452 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !448)
!453 = !DILocation(line: 513, column: 15, scope: !229, inlinedAt: !444)
!454 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !444)
!455 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !444)
!456 = !DILocation(line: 0, scope: !189, inlinedAt: !457)
!457 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !444)
!458 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !457)
!459 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !457)
!460 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !457)
!461 = !DILocation(line: 582, column: 5, scope: !462, inlinedAt: !445)
!462 = distinct !DILexicalBlock(scope: !463, file: !6, line: 582, column: 5)
!463 = distinct !DILexicalBlock(scope: !26, file: !6, line: 582, column: 5)
!464 = !DILocation(line: 582, column: 5, scope: !463, inlinedAt: !445)
!465 = !DILocation(line: 583, column: 22, scope: !26, inlinedAt: !445)
!466 = !DILocation(line: 583, column: 5, scope: !26, inlinedAt: !445)
!467 = !DILocation(line: 584, column: 13, scope: !50, inlinedAt: !445)
!468 = !DILocation(line: 0, scope: !26, inlinedAt: !445)
!469 = !DILocation(line: 585, column: 15, scope: !470, inlinedAt: !445)
!470 = distinct !DILexicalBlock(scope: !50, file: !6, line: 585, column: 13)
!471 = !DILocation(line: 585, column: 13, scope: !50, inlinedAt: !445)
!472 = !DILocation(line: 586, column: 15, scope: !473, inlinedAt: !445)
!473 = distinct !DILexicalBlock(scope: !50, file: !6, line: 586, column: 13)
!474 = !DILocation(line: 586, column: 13, scope: !50, inlinedAt: !445)
!475 = !DILocation(line: 587, column: 16, scope: !50, inlinedAt: !445)
!476 = !DILocation(line: 588, column: 9, scope: !477, inlinedAt: !445)
!477 = distinct !DILexicalBlock(scope: !50, file: !6, line: 588, column: 9)
!478 = !DILocation(line: 589, column: 33, scope: !479, inlinedAt: !445)
!479 = distinct !DILexicalBlock(scope: !477, file: !6, line: 588, column: 9)
!480 = !DILocation(line: 587, column: 28, scope: !50, inlinedAt: !445)
!481 = !DILocation(line: 0, scope: !189, inlinedAt: !482)
!482 = distinct !DILocation(line: 590, column: 9, scope: !50, inlinedAt: !445)
!483 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !482)
!484 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !482)
!485 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !482)
!486 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !482)
!487 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !482)
!488 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !482)
!489 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !482)
!490 = !DILocation(line: 591, column: 16, scope: !50, inlinedAt: !445)
!491 = !DILocation(line: 593, column: 9, scope: !49, inlinedAt: !445)
!492 = !DILocation(line: 610, column: 9, scope: !50, inlinedAt: !445)
!493 = distinct !{!493, !466, !494, !359}
!494 = !DILocation(line: 614, column: 5, scope: !26, inlinedAt: !445)
!495 = !DILocation(line: 610, column: 22, scope: !50, inlinedAt: !445)
!496 = !DILocation(line: 611, column: 23, scope: !497, inlinedAt: !445)
!497 = distinct !DILexicalBlock(scope: !50, file: !6, line: 610, column: 26)
!498 = !{!499, !132, i64 0}
!499 = !{!"_nj_code", !132, i64 0, !132, i64 1}
!500 = !DILocation(line: 612, column: 13, scope: !497, inlinedAt: !445)
!501 = distinct !{!501, !502}
!502 = !{!"llvm.loop.unroll.disable"}
!503 = !DILocation(line: 594, column: 20, scope: !47, inlinedAt: !445)
!504 = !DILocation(line: 595, column: 38, scope: !47, inlinedAt: !445)
!505 = !DILocation(line: 595, column: 23, scope: !47, inlinedAt: !445)
!506 = !DILocation(line: 596, column: 18, scope: !507, inlinedAt: !445)
!507 = distinct !DILexicalBlock(scope: !47, file: !6, line: 596, column: 17)
!508 = !DILocation(line: 596, column: 17, scope: !47, inlinedAt: !445)
!509 = !DILocation(line: 597, column: 27, scope: !510, inlinedAt: !445)
!510 = distinct !DILexicalBlock(scope: !47, file: !6, line: 597, column: 17)
!511 = !DILocation(line: 597, column: 17, scope: !47, inlinedAt: !445)
!512 = !DILocation(line: 598, column: 31, scope: !47, inlinedAt: !445)
!513 = !DILocation(line: 598, column: 20, scope: !47, inlinedAt: !445)
!514 = !DILocation(line: 599, column: 24, scope: !515, inlinedAt: !445)
!515 = distinct !DILexicalBlock(scope: !47, file: !6, line: 599, column: 17)
!516 = !DILocation(line: 599, column: 17, scope: !47, inlinedAt: !445)
!517 = !DILocation(line: 600, column: 28, scope: !45, inlinedAt: !445)
!518 = !DILocation(line: 600, column: 13, scope: !46, inlinedAt: !445)
!519 = !DILocation(line: 601, column: 47, scope: !44, inlinedAt: !445)
!520 = !DILocation(line: 0, scope: !44, inlinedAt: !445)
!521 = !DILocation(line: 602, column: 17, scope: !522, inlinedAt: !445)
!522 = distinct !DILexicalBlock(scope: !44, file: !6, line: 602, column: 17)
!523 = !DILocation(line: 604, column: 26, scope: !524, inlinedAt: !445)
!524 = distinct !DILexicalBlock(scope: !525, file: !6, line: 602, column: 44)
!525 = distinct !DILexicalBlock(scope: !522, file: !6, line: 602, column: 17)
!526 = !DILocation(line: 604, column: 31, scope: !524, inlinedAt: !445)
!527 = distinct !{!527, !521, !528, !359, !529, !530}
!528 = !DILocation(line: 606, column: 17, scope: !522, inlinedAt: !445)
!529 = !{!"llvm.loop.isvectorized", i32 1}
!530 = !{!"llvm.loop.unroll.runtime.disable"}
!531 = !DILocation(line: 603, column: 31, scope: !524, inlinedAt: !445)
!532 = !{!499, !132, i64 1}
!533 = !DILocation(line: 605, column: 21, scope: !524, inlinedAt: !445)
!534 = !DILocation(line: 602, column: 39, scope: !525, inlinedAt: !445)
!535 = distinct !{!535, !521, !528, !359, !530, !529}
!536 = !DILocation(line: 600, column: 40, scope: !45, inlinedAt: !445)
!537 = distinct !{!537, !518, !538, !359}
!538 = !DILocation(line: 607, column: 13, scope: !46, inlinedAt: !445)
!539 = !DILocation(line: 0, scope: !189, inlinedAt: !540)
!540 = distinct !DILocation(line: 608, column: 13, scope: !47, inlinedAt: !445)
!541 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !540)
!542 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !540)
!543 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !540)
!544 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !540)
!545 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !540)
!546 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !540)
!547 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !540)
!548 = !DILocation(line: 0, scope: !50, inlinedAt: !445)
!549 = !DILocation(line: 591, column: 13, scope: !50, inlinedAt: !445)
!550 = !DILocation(line: 593, column: 44, scope: !48, inlinedAt: !445)
!551 = !DILocation(line: 593, column: 36, scope: !48, inlinedAt: !445)
!552 = distinct !{!552, !491, !553, !359}
!553 = !DILocation(line: 609, column: 9, scope: !49, inlinedAt: !445)
!554 = distinct !{!554, !492, !555, !359}
!555 = !DILocation(line: 613, column: 9, scope: !50, inlinedAt: !445)
!556 = !DILocation(line: 583, column: 15, scope: !26, inlinedAt: !445)
!557 = !DILocation(line: 615, column: 9, scope: !558, inlinedAt: !445)
!558 = distinct !DILexicalBlock(scope: !26, file: !6, line: 615, column: 9)
!559 = !DILocation(line: 615, column: 9, scope: !26, inlinedAt: !445)
!560 = !DILocation(line: 616, column: 1, scope: !26, inlinedAt: !445)
!561 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !562)
!562 = distinct !DILocation(line: 621, column: 5, scope: !563, inlinedAt: !567)
!563 = distinct !DISubprogram(name: "njDecodeDQT", scope: !6, file: !6, line: 618, type: !27, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!564 = !{!565, !566}
!565 = !DILocalVariable(name: "i", scope: !563, file: !6, line: 619, type: !22)
!566 = !DILocalVariable(name: "t", scope: !563, file: !6, line: 620, type: !21)
!567 = distinct !DILocation(line: 893, column: 24, scope: !226)
!568 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !562)
!569 = !DILocation(line: 0, scope: !233, inlinedAt: !570)
!570 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !562)
!571 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !570)
!572 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !570)
!573 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !570)
!574 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !570)
!575 = !DILocation(line: 513, column: 15, scope: !229, inlinedAt: !562)
!576 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !562)
!577 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !562)
!578 = !DILocation(line: 0, scope: !189, inlinedAt: !579)
!579 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !562)
!580 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !579)
!581 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !579)
!582 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !579)
!583 = !DILocation(line: 622, column: 5, scope: !584, inlinedAt: !567)
!584 = distinct !DILexicalBlock(scope: !585, file: !6, line: 622, column: 5)
!585 = distinct !DILexicalBlock(scope: !563, file: !6, line: 622, column: 5)
!586 = !DILocation(line: 622, column: 5, scope: !585, inlinedAt: !567)
!587 = !DILocation(line: 623, column: 22, scope: !563, inlinedAt: !567)
!588 = !DILocation(line: 623, column: 5, scope: !563, inlinedAt: !567)
!589 = !{!141, !131, i64 204}
!590 = !DILocation(line: 624, column: 13, scope: !591, inlinedAt: !567)
!591 = distinct !DILexicalBlock(scope: !563, file: !6, line: 623, column: 29)
!592 = !DILocation(line: 0, scope: !563, inlinedAt: !567)
!593 = !DILocation(line: 625, column: 15, scope: !594, inlinedAt: !567)
!594 = distinct !DILexicalBlock(scope: !591, file: !6, line: 625, column: 13)
!595 = !DILocation(line: 625, column: 13, scope: !591, inlinedAt: !567)
!596 = !DILocation(line: 626, column: 25, scope: !591, inlinedAt: !567)
!597 = !DILocation(line: 626, column: 20, scope: !591, inlinedAt: !567)
!598 = !DILocation(line: 627, column: 14, scope: !591, inlinedAt: !567)
!599 = !DILocation(line: 628, column: 9, scope: !600, inlinedAt: !567)
!600 = distinct !DILexicalBlock(scope: !591, file: !6, line: 628, column: 9)
!601 = !DILocation(line: 629, column: 20, scope: !602, inlinedAt: !567)
!602 = distinct !DILexicalBlock(scope: !600, file: !6, line: 628, column: 9)
!603 = !DILocation(line: 629, column: 18, scope: !602, inlinedAt: !567)
!604 = !DILocation(line: 629, column: 13, scope: !602, inlinedAt: !567)
!605 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !606)
!606 = distinct !DILocation(line: 630, column: 9, scope: !591, inlinedAt: !567)
!607 = !DILocation(line: 629, column: 29, scope: !602, inlinedAt: !567)
!608 = !DILocation(line: 628, column: 24, scope: !602, inlinedAt: !567)
!609 = distinct !{!609, !599, !610, !359, !529}
!610 = !DILocation(line: 629, column: 32, scope: !600, inlinedAt: !567)
!611 = !DILocation(line: 0, scope: !189, inlinedAt: !606)
!612 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !606)
!613 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !606)
!614 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !606)
!615 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !606)
!616 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !606)
!617 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !606)
!618 = distinct !{!618, !588, !619, !359}
!619 = !DILocation(line: 631, column: 5, scope: !563, inlinedAt: !567)
!620 = !DILocation(line: 623, column: 15, scope: !563, inlinedAt: !567)
!621 = !DILocation(line: 632, column: 9, scope: !622, inlinedAt: !567)
!622 = distinct !DILexicalBlock(scope: !563, file: !6, line: 632, column: 9)
!623 = !DILocation(line: 632, column: 9, scope: !563, inlinedAt: !567)
!624 = !DILocation(line: 633, column: 1, scope: !563, inlinedAt: !567)
!625 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !626)
!626 = distinct !DILocation(line: 636, column: 5, scope: !627, inlinedAt: !628)
!627 = distinct !DISubprogram(name: "njDecodeDRI", scope: !6, file: !6, line: 635, type: !27, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!628 = distinct !DILocation(line: 894, column: 24, scope: !226)
!629 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !626)
!630 = !DILocation(line: 0, scope: !233, inlinedAt: !631)
!631 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !626)
!632 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !631)
!633 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !631)
!634 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !631)
!635 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !631)
!636 = !DILocation(line: 513, column: 15, scope: !229, inlinedAt: !626)
!637 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !626)
!638 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !626)
!639 = !DILocation(line: 0, scope: !189, inlinedAt: !640)
!640 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !626)
!641 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !640)
!642 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !640)
!643 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !640)
!644 = !DILocation(line: 637, column: 5, scope: !645, inlinedAt: !628)
!645 = distinct !DILexicalBlock(scope: !646, file: !6, line: 637, column: 5)
!646 = distinct !DILexicalBlock(scope: !627, file: !6, line: 637, column: 5)
!647 = !DILocation(line: 637, column: 5, scope: !646, inlinedAt: !628)
!648 = !DILocation(line: 638, column: 19, scope: !649, inlinedAt: !628)
!649 = distinct !DILexicalBlock(scope: !627, file: !6, line: 638, column: 9)
!650 = !DILocation(line: 638, column: 9, scope: !627, inlinedAt: !628)
!651 = !DILocation(line: 0, scope: !233, inlinedAt: !652)
!652 = distinct !DILocation(line: 639, column: 22, scope: !627, inlinedAt: !628)
!653 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !652)
!654 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !652)
!655 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !652)
!656 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !652)
!657 = !DILocation(line: 639, column: 20, scope: !627, inlinedAt: !628)
!658 = !{!141, !131, i64 525016}
!659 = !DILocation(line: 0, scope: !189, inlinedAt: !660)
!660 = distinct !DILocation(line: 640, column: 5, scope: !627, inlinedAt: !628)
!661 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !660)
!662 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !660)
!663 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !660)
!664 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !660)
!665 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !660)
!666 = !DILocation(line: 0, scope: !627, inlinedAt: !628)
!667 = !DILocation(line: 641, column: 1, scope: !627, inlinedAt: !628)
!668 = !DILocation(line: 680, column: 23, scope: !669, inlinedAt: !679)
!669 = distinct !DISubprogram(name: "njDecodeScan", scope: !6, file: !6, line: 678, type: !27, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678}
!671 = !DILocalVariable(name: "i", scope: !669, file: !6, line: 679, type: !22)
!672 = !DILocalVariable(name: "mbx", scope: !669, file: !6, line: 679, type: !22)
!673 = !DILocalVariable(name: "mby", scope: !669, file: !6, line: 679, type: !22)
!674 = !DILocalVariable(name: "sbx", scope: !669, file: !6, line: 679, type: !22)
!675 = !DILocalVariable(name: "sby", scope: !669, file: !6, line: 679, type: !22)
!676 = !DILocalVariable(name: "rstcount", scope: !669, file: !6, line: 680, type: !22)
!677 = !DILocalVariable(name: "nextrst", scope: !669, file: !6, line: 680, type: !22)
!678 = !DILocalVariable(name: "c", scope: !669, file: !6, line: 681, type: !223)
!679 = distinct !DILocation(line: 895, column: 24, scope: !226)
!680 = !DILocation(line: 0, scope: !669, inlinedAt: !679)
!681 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !682)
!682 = distinct !DILocation(line: 682, column: 5, scope: !669, inlinedAt: !679)
!683 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !682)
!684 = !DILocation(line: 512, column: 22, scope: !685, inlinedAt: !682)
!685 = distinct !DILexicalBlock(scope: !228, file: !6, line: 512, column: 22)
!686 = !DILocation(line: 0, scope: !233, inlinedAt: !687)
!687 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !682)
!688 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !687)
!689 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !687)
!690 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !687)
!691 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !687)
!692 = !DILocation(line: 513, column: 15, scope: !229, inlinedAt: !682)
!693 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !682)
!694 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !682)
!695 = !DILocation(line: 514, column: 30, scope: !696, inlinedAt: !682)
!696 = distinct !DILexicalBlock(scope: !246, file: !6, line: 514, column: 30)
!697 = !DILocation(line: 0, scope: !189, inlinedAt: !698)
!698 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !682)
!699 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !698)
!700 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !698)
!701 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !698)
!702 = !DILocation(line: 683, column: 5, scope: !703, inlinedAt: !679)
!703 = distinct !DILexicalBlock(scope: !704, file: !6, line: 683, column: 5)
!704 = distinct !DILexicalBlock(scope: !669, file: !6, line: 683, column: 5)
!705 = !DILocation(line: 683, column: 5, scope: !704, inlinedAt: !679)
!706 = !DILocation(line: 684, column: 33, scope: !707, inlinedAt: !679)
!707 = distinct !DILexicalBlock(scope: !669, file: !6, line: 684, column: 9)
!708 = !DILocation(line: 684, column: 28, scope: !707, inlinedAt: !679)
!709 = !DILocation(line: 684, column: 24, scope: !707, inlinedAt: !679)
!710 = !DILocation(line: 684, column: 19, scope: !707, inlinedAt: !679)
!711 = !DILocation(line: 684, column: 9, scope: !669, inlinedAt: !679)
!712 = !DILocation(line: 684, column: 41, scope: !713, inlinedAt: !679)
!713 = distinct !DILexicalBlock(scope: !707, file: !6, line: 684, column: 41)
!714 = !DILocation(line: 685, column: 9, scope: !715, inlinedAt: !679)
!715 = distinct !DILexicalBlock(scope: !669, file: !6, line: 685, column: 9)
!716 = !DILocation(line: 685, column: 19, scope: !715, inlinedAt: !679)
!717 = !DILocation(line: 685, column: 9, scope: !669, inlinedAt: !679)
!718 = !DILocation(line: 685, column: 32, scope: !719, inlinedAt: !679)
!719 = distinct !DILexicalBlock(scope: !715, file: !6, line: 685, column: 32)
!720 = !DILocation(line: 0, scope: !189, inlinedAt: !721)
!721 = distinct !DILocation(line: 686, column: 5, scope: !669, inlinedAt: !679)
!722 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !721)
!723 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !721)
!724 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !721)
!725 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !721)
!726 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !721)
!727 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !721)
!728 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !721)
!729 = !DILocation(line: 687, column: 33, scope: !730, inlinedAt: !679)
!730 = distinct !DILexicalBlock(scope: !731, file: !6, line: 687, column: 5)
!731 = distinct !DILexicalBlock(scope: !669, file: !6, line: 687, column: 5)
!732 = !DILocation(line: 687, column: 5, scope: !731, inlinedAt: !679)
!733 = !DILocation(line: 688, column: 13, scope: !734, inlinedAt: !679)
!734 = distinct !DILexicalBlock(scope: !735, file: !6, line: 688, column: 13)
!735 = distinct !DILexicalBlock(scope: !730, file: !6, line: 687, column: 56)
!736 = !DILocation(line: 688, column: 29, scope: !734, inlinedAt: !679)
!737 = !DILocation(line: 688, column: 23, scope: !734, inlinedAt: !679)
!738 = !DILocation(line: 688, column: 13, scope: !735, inlinedAt: !679)
!739 = !DILocation(line: 688, column: 34, scope: !740, inlinedAt: !679)
!740 = distinct !DILexicalBlock(scope: !734, file: !6, line: 688, column: 34)
!741 = !DILocation(line: 689, column: 13, scope: !742, inlinedAt: !679)
!742 = distinct !DILexicalBlock(scope: !735, file: !6, line: 689, column: 13)
!743 = !DILocation(line: 689, column: 23, scope: !742, inlinedAt: !679)
!744 = !DILocation(line: 689, column: 13, scope: !735, inlinedAt: !679)
!745 = !DILocation(line: 689, column: 31, scope: !746, inlinedAt: !679)
!746 = distinct !DILexicalBlock(scope: !742, file: !6, line: 689, column: 31)
!747 = !DILocation(line: 690, column: 12, scope: !735, inlinedAt: !679)
!748 = !DILocation(line: 690, column: 21, scope: !735, inlinedAt: !679)
!749 = !{!130, !131, i64 32}
!750 = !DILocation(line: 691, column: 24, scope: !735, inlinedAt: !679)
!751 = !DILocation(line: 691, column: 34, scope: !735, inlinedAt: !679)
!752 = !DILocation(line: 691, column: 39, scope: !735, inlinedAt: !679)
!753 = !DILocation(line: 691, column: 12, scope: !735, inlinedAt: !679)
!754 = !DILocation(line: 691, column: 21, scope: !735, inlinedAt: !679)
!755 = !{!130, !131, i64 28}
!756 = !DILocation(line: 0, scope: !189, inlinedAt: !757)
!757 = distinct !DILocation(line: 692, column: 9, scope: !735, inlinedAt: !679)
!758 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !757)
!759 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !757)
!760 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !757)
!761 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !757)
!762 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !757)
!763 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !757)
!764 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !757)
!765 = !DILocation(line: 687, column: 46, scope: !730, inlinedAt: !679)
!766 = !DILocation(line: 687, column: 51, scope: !730, inlinedAt: !679)
!767 = distinct !{!767, !732, !768, !359}
!768 = !DILocation(line: 693, column: 5, scope: !731, inlinedAt: !679)
!769 = !DILocation(line: 694, column: 12, scope: !770, inlinedAt: !679)
!770 = distinct !DILexicalBlock(scope: !669, file: !6, line: 694, column: 9)
!771 = !DILocation(line: 694, column: 9, scope: !770, inlinedAt: !679)
!772 = !DILocation(line: 694, column: 19, scope: !770, inlinedAt: !679)
!773 = !DILocation(line: 694, column: 23, scope: !770, inlinedAt: !679)
!774 = !DILocation(line: 694, column: 33, scope: !770, inlinedAt: !679)
!775 = !DILocation(line: 694, column: 40, scope: !770, inlinedAt: !679)
!776 = !DILocation(line: 694, column: 43, scope: !770, inlinedAt: !679)
!777 = !DILocation(line: 694, column: 9, scope: !669, inlinedAt: !679)
!778 = !DILocation(line: 694, column: 54, scope: !779, inlinedAt: !679)
!779 = distinct !DILexicalBlock(scope: !770, file: !6, line: 694, column: 54)
!780 = !DILocation(line: 0, scope: !189, inlinedAt: !781)
!781 = distinct !DILocation(line: 695, column: 5, scope: !669, inlinedAt: !679)
!782 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !781)
!783 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !781)
!784 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !781)
!785 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !781)
!786 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !781)
!787 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !781)
!788 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !781)
!789 = !DILocation(line: 696, column: 5, scope: !790, inlinedAt: !679)
!790 = distinct !DILexicalBlock(scope: !669, file: !6, line: 696, column: 5)
!791 = !DILocation(line: 697, column: 42, scope: !792, inlinedAt: !679)
!792 = distinct !DILexicalBlock(scope: !793, file: !6, line: 697, column: 9)
!793 = distinct !DILexicalBlock(scope: !794, file: !6, line: 697, column: 9)
!794 = distinct !DILexicalBlock(scope: !795, file: !6, line: 696, column: 27)
!795 = distinct !DILexicalBlock(scope: !790, file: !6, line: 696, column: 5)
!796 = !DILocation(line: 0, scope: !790, inlinedAt: !679)
!797 = !DILocation(line: 697, column: 37, scope: !792, inlinedAt: !679)
!798 = !DILocation(line: 697, column: 9, scope: !793, inlinedAt: !679)
!799 = !DILocation(line: 698, column: 37, scope: !800, inlinedAt: !679)
!800 = distinct !DILexicalBlock(scope: !801, file: !6, line: 698, column: 13)
!801 = distinct !DILexicalBlock(scope: !792, file: !6, line: 698, column: 13)
!802 = !DILocation(line: 698, column: 32, scope: !800, inlinedAt: !679)
!803 = !DILocation(line: 698, column: 13, scope: !801, inlinedAt: !679)
!804 = !DILocation(line: 699, column: 41, scope: !805, inlinedAt: !679)
!805 = distinct !DILexicalBlock(scope: !806, file: !6, line: 699, column: 17)
!806 = distinct !DILexicalBlock(scope: !800, file: !6, line: 699, column: 17)
!807 = !DILocation(line: 699, column: 36, scope: !805, inlinedAt: !679)
!808 = !DILocation(line: 699, column: 17, scope: !806, inlinedAt: !679)
!809 = !DILocation(line: 699, column: 47, scope: !805, inlinedAt: !679)
!810 = distinct !{!810, !808, !811, !359}
!811 = !DILocation(line: 702, column: 17, scope: !806, inlinedAt: !679)
!812 = !DILocation(line: 700, column: 42, scope: !813, inlinedAt: !679)
!813 = distinct !DILexicalBlock(scope: !805, file: !6, line: 699, column: 54)
!814 = !DILocation(line: 700, column: 60, scope: !813, inlinedAt: !679)
!815 = !DILocation(line: 700, column: 55, scope: !813, inlinedAt: !679)
!816 = !DILocation(line: 700, column: 64, scope: !813, inlinedAt: !679)
!817 = !DILocation(line: 700, column: 76, scope: !813, inlinedAt: !679)
!818 = !DILocation(line: 700, column: 71, scope: !813, inlinedAt: !679)
!819 = !DILocation(line: 700, column: 89, scope: !813, inlinedAt: !679)
!820 = !DILocation(line: 700, column: 83, scope: !813, inlinedAt: !679)
!821 = !DILocation(line: 700, column: 98, scope: !813, inlinedAt: !679)
!822 = !DILocation(line: 700, column: 105, scope: !813, inlinedAt: !679)
!823 = !DILocation(line: 700, column: 39, scope: !813, inlinedAt: !679)
!824 = !DILocalVariable(name: "c", arg: 1, scope: !825, file: !6, line: 658, type: !223)
!825 = distinct !DISubprogram(name: "njDecodeBlock", scope: !6, file: !6, line: 658, type: !826, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !223, !21}
!828 = !{!824, !829, !830, !831, !832}
!829 = !DILocalVariable(name: "out", arg: 2, scope: !825, file: !6, line: 658, type: !21)
!830 = !DILocalVariable(name: "code", scope: !825, file: !6, line: 659, type: !20)
!831 = !DILocalVariable(name: "value", scope: !825, file: !6, line: 660, type: !22)
!832 = !DILocalVariable(name: "coef", scope: !825, file: !6, line: 660, type: !22)
!833 = !DILocation(line: 0, scope: !825, inlinedAt: !834)
!834 = distinct !DILocation(line: 700, column: 21, scope: !813, inlinedAt: !679)
!835 = !DILocation(line: 659, column: 5, scope: !825, inlinedAt: !834)
!836 = !DILocation(line: 659, column: 19, scope: !825, inlinedAt: !834)
!837 = !DILocation(line: 661, column: 5, scope: !825, inlinedAt: !834)
!838 = !DILocation(line: 662, column: 41, scope: !825, inlinedAt: !834)
!839 = !DILocation(line: 662, column: 28, scope: !825, inlinedAt: !834)
!840 = !DILocation(line: 662, column: 18, scope: !825, inlinedAt: !834)
!841 = !DILocation(line: 662, column: 15, scope: !825, inlinedAt: !834)
!842 = !{!130, !131, i64 36}
!843 = !DILocation(line: 663, column: 44, scope: !825, inlinedAt: !834)
!844 = !DILocation(line: 663, column: 33, scope: !825, inlinedAt: !834)
!845 = !DILocation(line: 663, column: 31, scope: !825, inlinedAt: !834)
!846 = !DILocation(line: 663, column: 17, scope: !825, inlinedAt: !834)
!847 = !{!131, !131, i64 0}
!848 = !DILocation(line: 664, column: 5, scope: !825, inlinedAt: !834)
!849 = !DILocation(line: 665, column: 40, scope: !850, inlinedAt: !834)
!850 = distinct !DILexicalBlock(scope: !825, file: !6, line: 664, column: 8)
!851 = !DILocation(line: 665, column: 27, scope: !850, inlinedAt: !834)
!852 = !DILocation(line: 665, column: 17, scope: !850, inlinedAt: !834)
!853 = !DILocation(line: 666, column: 14, scope: !854, inlinedAt: !834)
!854 = distinct !DILexicalBlock(scope: !850, file: !6, line: 666, column: 13)
!855 = !DILocation(line: 666, column: 13, scope: !850, inlinedAt: !834)
!856 = !DILocation(line: 667, column: 15, scope: !857, inlinedAt: !834)
!857 = distinct !DILexicalBlock(scope: !850, file: !6, line: 667, column: 13)
!858 = !DILocation(line: 667, column: 20, scope: !857, inlinedAt: !834)
!859 = !DILocation(line: 667, column: 28, scope: !857, inlinedAt: !834)
!860 = !DILocation(line: 668, column: 29, scope: !850, inlinedAt: !834)
!861 = !DILocation(line: 668, column: 14, scope: !850, inlinedAt: !834)
!862 = !DILocation(line: 669, column: 18, scope: !863, inlinedAt: !834)
!863 = distinct !DILexicalBlock(scope: !850, file: !6, line: 669, column: 13)
!864 = !DILocation(line: 669, column: 13, scope: !850, inlinedAt: !834)
!865 = !DILocation(line: 670, column: 57, scope: !850, inlinedAt: !834)
!866 = !DILocation(line: 670, column: 46, scope: !850, inlinedAt: !834)
!867 = !DILocation(line: 670, column: 44, scope: !850, inlinedAt: !834)
!868 = !DILocation(line: 670, column: 24, scope: !850, inlinedAt: !834)
!869 = !DILocation(line: 670, column: 9, scope: !850, inlinedAt: !834)
!870 = !DILocation(line: 670, column: 36, scope: !850, inlinedAt: !834)
!871 = !DILocation(line: 671, column: 19, scope: !825, inlinedAt: !834)
!872 = !DILocation(line: 671, column: 5, scope: !850, inlinedAt: !834)
!873 = distinct !{!873, !848, !874, !359}
!874 = !DILocation(line: 671, column: 23, scope: !825, inlinedAt: !834)
!875 = !DILocation(line: 672, column: 5, scope: !876, inlinedAt: !834)
!876 = distinct !DILexicalBlock(scope: !825, file: !6, line: 672, column: 5)
!877 = !DILocation(line: 673, column: 20, scope: !878, inlinedAt: !834)
!878 = distinct !DILexicalBlock(scope: !876, file: !6, line: 672, column: 5)
!879 = !DILocalVariable(name: "blk", arg: 1, scope: !880, file: !6, line: 350, type: !883)
!880 = distinct !DISubprogram(name: "njRowIDCT", scope: !6, file: !6, line: 350, type: !881, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!884 = !{!879, !885, !886, !887, !888, !889, !890, !891, !892, !893}
!885 = !DILocalVariable(name: "x0", scope: !880, file: !6, line: 351, type: !22)
!886 = !DILocalVariable(name: "x1", scope: !880, file: !6, line: 351, type: !22)
!887 = !DILocalVariable(name: "x2", scope: !880, file: !6, line: 351, type: !22)
!888 = !DILocalVariable(name: "x3", scope: !880, file: !6, line: 351, type: !22)
!889 = !DILocalVariable(name: "x4", scope: !880, file: !6, line: 351, type: !22)
!890 = !DILocalVariable(name: "x5", scope: !880, file: !6, line: 351, type: !22)
!891 = !DILocalVariable(name: "x6", scope: !880, file: !6, line: 351, type: !22)
!892 = !DILocalVariable(name: "x7", scope: !880, file: !6, line: 351, type: !22)
!893 = !DILocalVariable(name: "x8", scope: !880, file: !6, line: 351, type: !22)
!894 = !DILocation(line: 0, scope: !880, inlinedAt: !895)
!895 = distinct !DILocation(line: 673, column: 9, scope: !878, inlinedAt: !834)
!896 = !DILocation(line: 352, column: 17, scope: !897, inlinedAt: !895)
!897 = distinct !DILexicalBlock(scope: !880, file: !6, line: 352, column: 9)
!898 = !DILocation(line: 352, column: 24, scope: !897, inlinedAt: !895)
!899 = !DILocation(line: 353, column: 17, scope: !897, inlinedAt: !895)
!900 = !DILocation(line: 353, column: 9, scope: !897, inlinedAt: !895)
!901 = !DILocation(line: 354, column: 17, scope: !897, inlinedAt: !895)
!902 = !DILocation(line: 354, column: 9, scope: !897, inlinedAt: !895)
!903 = !DILocation(line: 355, column: 17, scope: !897, inlinedAt: !895)
!904 = !DILocation(line: 355, column: 9, scope: !897, inlinedAt: !895)
!905 = !DILocation(line: 356, column: 17, scope: !897, inlinedAt: !895)
!906 = !DILocation(line: 356, column: 9, scope: !897, inlinedAt: !895)
!907 = !DILocation(line: 357, column: 17, scope: !897, inlinedAt: !895)
!908 = !DILocation(line: 357, column: 9, scope: !897, inlinedAt: !895)
!909 = !DILocation(line: 358, column: 17, scope: !897, inlinedAt: !895)
!910 = !DILocation(line: 358, column: 9, scope: !897, inlinedAt: !895)
!911 = !DILocation(line: 352, column: 9, scope: !880, inlinedAt: !895)
!912 = !DILocation(line: 360, column: 88, scope: !913, inlinedAt: !895)
!913 = distinct !DILexicalBlock(scope: !897, file: !6, line: 359, column: 5)
!914 = !DILocation(line: 361, column: 9, scope: !913, inlinedAt: !895)
!915 = !DILocation(line: 363, column: 18, scope: !880, inlinedAt: !895)
!916 = !DILocation(line: 363, column: 25, scope: !880, inlinedAt: !895)
!917 = !DILocation(line: 364, column: 19, scope: !880, inlinedAt: !895)
!918 = !DILocation(line: 364, column: 13, scope: !880, inlinedAt: !895)
!919 = !DILocation(line: 365, column: 25, scope: !880, inlinedAt: !895)
!920 = !DILocation(line: 365, column: 13, scope: !880, inlinedAt: !895)
!921 = !DILocation(line: 366, column: 25, scope: !880, inlinedAt: !895)
!922 = !DILocation(line: 366, column: 13, scope: !880, inlinedAt: !895)
!923 = !DILocation(line: 367, column: 19, scope: !880, inlinedAt: !895)
!924 = !DILocation(line: 367, column: 13, scope: !880, inlinedAt: !895)
!925 = !DILocation(line: 368, column: 25, scope: !880, inlinedAt: !895)
!926 = !DILocation(line: 368, column: 13, scope: !880, inlinedAt: !895)
!927 = !DILocation(line: 369, column: 25, scope: !880, inlinedAt: !895)
!928 = !DILocation(line: 369, column: 13, scope: !880, inlinedAt: !895)
!929 = !DILocation(line: 370, column: 13, scope: !880, inlinedAt: !895)
!930 = !DILocation(line: 371, column: 8, scope: !880, inlinedAt: !895)
!931 = !DILocation(line: 372, column: 19, scope: !880, inlinedAt: !895)
!932 = !DILocation(line: 372, column: 13, scope: !880, inlinedAt: !895)
!933 = !DILocation(line: 373, column: 25, scope: !880, inlinedAt: !895)
!934 = !DILocation(line: 373, column: 13, scope: !880, inlinedAt: !895)
!935 = !DILocation(line: 374, column: 25, scope: !880, inlinedAt: !895)
!936 = !DILocation(line: 374, column: 13, scope: !880, inlinedAt: !895)
!937 = !DILocation(line: 375, column: 13, scope: !880, inlinedAt: !895)
!938 = !DILocation(line: 376, column: 8, scope: !880, inlinedAt: !895)
!939 = !DILocation(line: 377, column: 13, scope: !880, inlinedAt: !895)
!940 = !DILocation(line: 378, column: 8, scope: !880, inlinedAt: !895)
!941 = !DILocation(line: 379, column: 13, scope: !880, inlinedAt: !895)
!942 = !DILocation(line: 380, column: 8, scope: !880, inlinedAt: !895)
!943 = !DILocation(line: 381, column: 13, scope: !880, inlinedAt: !895)
!944 = !DILocation(line: 382, column: 8, scope: !880, inlinedAt: !895)
!945 = !DILocation(line: 383, column: 21, scope: !880, inlinedAt: !895)
!946 = !DILocation(line: 383, column: 15, scope: !880, inlinedAt: !895)
!947 = !DILocation(line: 383, column: 27, scope: !880, inlinedAt: !895)
!948 = !DILocation(line: 383, column: 34, scope: !880, inlinedAt: !895)
!949 = !DILocation(line: 384, column: 21, scope: !880, inlinedAt: !895)
!950 = !DILocation(line: 384, column: 15, scope: !880, inlinedAt: !895)
!951 = !DILocation(line: 384, column: 27, scope: !880, inlinedAt: !895)
!952 = !DILocation(line: 384, column: 34, scope: !880, inlinedAt: !895)
!953 = !DILocation(line: 385, column: 18, scope: !880, inlinedAt: !895)
!954 = !DILocation(line: 385, column: 24, scope: !880, inlinedAt: !895)
!955 = !DILocation(line: 386, column: 18, scope: !880, inlinedAt: !895)
!956 = !DILocation(line: 386, column: 24, scope: !880, inlinedAt: !895)
!957 = !DILocation(line: 387, column: 18, scope: !880, inlinedAt: !895)
!958 = !DILocation(line: 387, column: 24, scope: !880, inlinedAt: !895)
!959 = !DILocation(line: 388, column: 18, scope: !880, inlinedAt: !895)
!960 = !DILocation(line: 388, column: 24, scope: !880, inlinedAt: !895)
!961 = !DILocation(line: 389, column: 18, scope: !880, inlinedAt: !895)
!962 = !DILocation(line: 389, column: 24, scope: !880, inlinedAt: !895)
!963 = !DILocation(line: 390, column: 18, scope: !880, inlinedAt: !895)
!964 = !DILocation(line: 390, column: 24, scope: !880, inlinedAt: !895)
!965 = !DILocation(line: 391, column: 18, scope: !880, inlinedAt: !895)
!966 = !DILocation(line: 391, column: 24, scope: !880, inlinedAt: !895)
!967 = !DILocation(line: 392, column: 18, scope: !880, inlinedAt: !895)
!968 = !DILocation(line: 392, column: 24, scope: !880, inlinedAt: !895)
!969 = !DILocation(line: 393, column: 1, scope: !880, inlinedAt: !895)
!970 = !DILocation(line: 672, column: 38, scope: !878, inlinedAt: !834)
!971 = !DILocation(line: 672, column: 26, scope: !878, inlinedAt: !834)
!972 = distinct !{!972, !875, !973, !359}
!973 = !DILocation(line: 673, column: 34, scope: !876, inlinedAt: !834)
!974 = !DILocation(line: 675, column: 20, scope: !975, inlinedAt: !834)
!975 = distinct !DILexicalBlock(scope: !976, file: !6, line: 674, column: 5)
!976 = distinct !DILexicalBlock(scope: !825, file: !6, line: 674, column: 5)
!977 = !DILocation(line: 675, column: 37, scope: !975, inlinedAt: !834)
!978 = !DILocation(line: 675, column: 51, scope: !975, inlinedAt: !834)
!979 = !DILocalVariable(name: "blk", arg: 1, scope: !980, file: !6, line: 395, type: !983)
!980 = distinct !DISubprogram(name: "njColIDCT", scope: !6, file: !6, line: 395, type: !981, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !983, !21, !22}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!984 = !{!979, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995}
!985 = !DILocalVariable(name: "out", arg: 2, scope: !980, file: !6, line: 395, type: !21)
!986 = !DILocalVariable(name: "stride", arg: 3, scope: !980, file: !6, line: 395, type: !22)
!987 = !DILocalVariable(name: "x0", scope: !980, file: !6, line: 396, type: !22)
!988 = !DILocalVariable(name: "x1", scope: !980, file: !6, line: 396, type: !22)
!989 = !DILocalVariable(name: "x2", scope: !980, file: !6, line: 396, type: !22)
!990 = !DILocalVariable(name: "x3", scope: !980, file: !6, line: 396, type: !22)
!991 = !DILocalVariable(name: "x4", scope: !980, file: !6, line: 396, type: !22)
!992 = !DILocalVariable(name: "x5", scope: !980, file: !6, line: 396, type: !22)
!993 = !DILocalVariable(name: "x6", scope: !980, file: !6, line: 396, type: !22)
!994 = !DILocalVariable(name: "x7", scope: !980, file: !6, line: 396, type: !22)
!995 = !DILocalVariable(name: "x8", scope: !980, file: !6, line: 396, type: !22)
!996 = !DILocation(line: 0, scope: !980, inlinedAt: !997)
!997 = distinct !DILocation(line: 675, column: 9, scope: !975, inlinedAt: !834)
!998 = !DILocation(line: 397, column: 17, scope: !999, inlinedAt: !997)
!999 = distinct !DILexicalBlock(scope: !980, file: !6, line: 397, column: 9)
!1000 = !DILocation(line: 397, column: 26, scope: !999, inlinedAt: !997)
!1001 = !DILocation(line: 398, column: 17, scope: !999, inlinedAt: !997)
!1002 = !DILocation(line: 398, column: 9, scope: !999, inlinedAt: !997)
!1003 = !DILocation(line: 399, column: 17, scope: !999, inlinedAt: !997)
!1004 = !DILocation(line: 399, column: 9, scope: !999, inlinedAt: !997)
!1005 = !DILocation(line: 400, column: 17, scope: !999, inlinedAt: !997)
!1006 = !DILocation(line: 400, column: 9, scope: !999, inlinedAt: !997)
!1007 = !DILocation(line: 401, column: 17, scope: !999, inlinedAt: !997)
!1008 = !DILocation(line: 401, column: 9, scope: !999, inlinedAt: !997)
!1009 = !DILocation(line: 402, column: 17, scope: !999, inlinedAt: !997)
!1010 = !DILocation(line: 402, column: 9, scope: !999, inlinedAt: !997)
!1011 = !DILocation(line: 403, column: 17, scope: !999, inlinedAt: !997)
!1012 = !DILocation(line: 403, column: 9, scope: !999, inlinedAt: !997)
!1013 = !DILocation(line: 397, column: 9, scope: !980, inlinedAt: !997)
!1014 = !DILocation(line: 405, column: 30, scope: !1015, inlinedAt: !997)
!1015 = distinct !DILexicalBlock(scope: !999, file: !6, line: 404, column: 5)
!1016 = !DILocation(line: 405, column: 36, scope: !1015, inlinedAt: !997)
!1017 = !DILocalVariable(name: "x", arg: 1, scope: !1018, file: !6, line: 339, type: !157)
!1018 = distinct !DISubprogram(name: "njClip", scope: !6, file: !6, line: 339, type: !1019, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!20, !157}
!1021 = !{!1017}
!1022 = !DILocation(line: 0, scope: !1018, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 405, column: 14, scope: !1015, inlinedAt: !997)
!1024 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1023)
!1025 = !DILocation(line: 407, column: 18, scope: !1026, inlinedAt: !997)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !6, line: 406, column: 34)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !6, line: 406, column: 9)
!1028 = distinct !DILexicalBlock(scope: !1015, file: !6, line: 406, column: 9)
!1029 = !DILocation(line: 408, column: 17, scope: !1026, inlinedAt: !997)
!1030 = !DILocation(line: 442, column: 1, scope: !980, inlinedAt: !997)
!1031 = !DILocation(line: 412, column: 18, scope: !980, inlinedAt: !997)
!1032 = !DILocation(line: 412, column: 24, scope: !980, inlinedAt: !997)
!1033 = !DILocation(line: 413, column: 19, scope: !980, inlinedAt: !997)
!1034 = !DILocation(line: 413, column: 13, scope: !980, inlinedAt: !997)
!1035 = !DILocation(line: 413, column: 25, scope: !980, inlinedAt: !997)
!1036 = !DILocation(line: 414, column: 26, scope: !980, inlinedAt: !997)
!1037 = !DILocation(line: 414, column: 14, scope: !980, inlinedAt: !997)
!1038 = !DILocation(line: 414, column: 32, scope: !980, inlinedAt: !997)
!1039 = !DILocation(line: 415, column: 26, scope: !980, inlinedAt: !997)
!1040 = !DILocation(line: 415, column: 14, scope: !980, inlinedAt: !997)
!1041 = !DILocation(line: 415, column: 32, scope: !980, inlinedAt: !997)
!1042 = !DILocation(line: 416, column: 19, scope: !980, inlinedAt: !997)
!1043 = !DILocation(line: 416, column: 13, scope: !980, inlinedAt: !997)
!1044 = !DILocation(line: 416, column: 25, scope: !980, inlinedAt: !997)
!1045 = !DILocation(line: 417, column: 26, scope: !980, inlinedAt: !997)
!1046 = !DILocation(line: 417, column: 14, scope: !980, inlinedAt: !997)
!1047 = !DILocation(line: 417, column: 32, scope: !980, inlinedAt: !997)
!1048 = !DILocation(line: 418, column: 26, scope: !980, inlinedAt: !997)
!1049 = !DILocation(line: 418, column: 14, scope: !980, inlinedAt: !997)
!1050 = !DILocation(line: 418, column: 32, scope: !980, inlinedAt: !997)
!1051 = !DILocation(line: 419, column: 13, scope: !980, inlinedAt: !997)
!1052 = !DILocation(line: 420, column: 8, scope: !980, inlinedAt: !997)
!1053 = !DILocation(line: 421, column: 19, scope: !980, inlinedAt: !997)
!1054 = !DILocation(line: 421, column: 13, scope: !980, inlinedAt: !997)
!1055 = !DILocation(line: 421, column: 25, scope: !980, inlinedAt: !997)
!1056 = !DILocation(line: 422, column: 26, scope: !980, inlinedAt: !997)
!1057 = !DILocation(line: 422, column: 14, scope: !980, inlinedAt: !997)
!1058 = !DILocation(line: 422, column: 32, scope: !980, inlinedAt: !997)
!1059 = !DILocation(line: 423, column: 26, scope: !980, inlinedAt: !997)
!1060 = !DILocation(line: 423, column: 14, scope: !980, inlinedAt: !997)
!1061 = !DILocation(line: 423, column: 32, scope: !980, inlinedAt: !997)
!1062 = !DILocation(line: 424, column: 13, scope: !980, inlinedAt: !997)
!1063 = !DILocation(line: 425, column: 8, scope: !980, inlinedAt: !997)
!1064 = !DILocation(line: 426, column: 13, scope: !980, inlinedAt: !997)
!1065 = !DILocation(line: 427, column: 8, scope: !980, inlinedAt: !997)
!1066 = !DILocation(line: 428, column: 13, scope: !980, inlinedAt: !997)
!1067 = !DILocation(line: 429, column: 8, scope: !980, inlinedAt: !997)
!1068 = !DILocation(line: 430, column: 13, scope: !980, inlinedAt: !997)
!1069 = !DILocation(line: 431, column: 8, scope: !980, inlinedAt: !997)
!1070 = !DILocation(line: 432, column: 21, scope: !980, inlinedAt: !997)
!1071 = !DILocation(line: 432, column: 15, scope: !980, inlinedAt: !997)
!1072 = !DILocation(line: 432, column: 27, scope: !980, inlinedAt: !997)
!1073 = !DILocation(line: 432, column: 34, scope: !980, inlinedAt: !997)
!1074 = !DILocation(line: 433, column: 21, scope: !980, inlinedAt: !997)
!1075 = !DILocation(line: 433, column: 15, scope: !980, inlinedAt: !997)
!1076 = !DILocation(line: 433, column: 27, scope: !980, inlinedAt: !997)
!1077 = !DILocation(line: 433, column: 34, scope: !980, inlinedAt: !997)
!1078 = !DILocation(line: 434, column: 24, scope: !980, inlinedAt: !997)
!1079 = !DILocation(line: 434, column: 30, scope: !980, inlinedAt: !997)
!1080 = !DILocation(line: 0, scope: !1018, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 434, column: 12, scope: !980, inlinedAt: !997)
!1082 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1081)
!1083 = !DILocation(line: 434, column: 10, scope: !980, inlinedAt: !997)
!1084 = !DILocation(line: 434, column: 50, scope: !980, inlinedAt: !997)
!1085 = !DILocation(line: 435, column: 24, scope: !980, inlinedAt: !997)
!1086 = !DILocation(line: 435, column: 30, scope: !980, inlinedAt: !997)
!1087 = !DILocation(line: 0, scope: !1018, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 435, column: 12, scope: !980, inlinedAt: !997)
!1089 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1088)
!1090 = !DILocation(line: 435, column: 10, scope: !980, inlinedAt: !997)
!1091 = !DILocation(line: 435, column: 50, scope: !980, inlinedAt: !997)
!1092 = !DILocation(line: 436, column: 24, scope: !980, inlinedAt: !997)
!1093 = !DILocation(line: 436, column: 30, scope: !980, inlinedAt: !997)
!1094 = !DILocation(line: 0, scope: !1018, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 436, column: 12, scope: !980, inlinedAt: !997)
!1096 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1095)
!1097 = !DILocation(line: 436, column: 10, scope: !980, inlinedAt: !997)
!1098 = !DILocation(line: 436, column: 50, scope: !980, inlinedAt: !997)
!1099 = !DILocation(line: 437, column: 24, scope: !980, inlinedAt: !997)
!1100 = !DILocation(line: 437, column: 30, scope: !980, inlinedAt: !997)
!1101 = !DILocation(line: 0, scope: !1018, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 437, column: 12, scope: !980, inlinedAt: !997)
!1103 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1102)
!1104 = !DILocation(line: 437, column: 10, scope: !980, inlinedAt: !997)
!1105 = !DILocation(line: 437, column: 50, scope: !980, inlinedAt: !997)
!1106 = !DILocation(line: 438, column: 24, scope: !980, inlinedAt: !997)
!1107 = !DILocation(line: 438, column: 30, scope: !980, inlinedAt: !997)
!1108 = !DILocation(line: 0, scope: !1018, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 438, column: 12, scope: !980, inlinedAt: !997)
!1110 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1109)
!1111 = !DILocation(line: 438, column: 10, scope: !980, inlinedAt: !997)
!1112 = !DILocation(line: 438, column: 50, scope: !980, inlinedAt: !997)
!1113 = !DILocation(line: 439, column: 24, scope: !980, inlinedAt: !997)
!1114 = !DILocation(line: 439, column: 30, scope: !980, inlinedAt: !997)
!1115 = !DILocation(line: 0, scope: !1018, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 439, column: 12, scope: !980, inlinedAt: !997)
!1117 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1116)
!1118 = !DILocation(line: 439, column: 10, scope: !980, inlinedAt: !997)
!1119 = !DILocation(line: 439, column: 50, scope: !980, inlinedAt: !997)
!1120 = !DILocation(line: 440, column: 24, scope: !980, inlinedAt: !997)
!1121 = !DILocation(line: 440, column: 30, scope: !980, inlinedAt: !997)
!1122 = !DILocation(line: 0, scope: !1018, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 440, column: 12, scope: !980, inlinedAt: !997)
!1124 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1123)
!1125 = !DILocation(line: 440, column: 10, scope: !980, inlinedAt: !997)
!1126 = !DILocation(line: 440, column: 50, scope: !980, inlinedAt: !997)
!1127 = !DILocation(line: 441, column: 24, scope: !980, inlinedAt: !997)
!1128 = !DILocation(line: 441, column: 30, scope: !980, inlinedAt: !997)
!1129 = !DILocation(line: 0, scope: !1018, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 441, column: 12, scope: !980, inlinedAt: !997)
!1131 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1130)
!1132 = !DILocation(line: 441, column: 10, scope: !980, inlinedAt: !997)
!1133 = !DILocation(line: 674, column: 32, scope: !975, inlinedAt: !834)
!1134 = !DILocation(line: 674, column: 26, scope: !975, inlinedAt: !834)
!1135 = !DILocation(line: 674, column: 5, scope: !976, inlinedAt: !834)
!1136 = distinct !{!1136, !1135, !1137, !359}
!1137 = !DILocation(line: 675, column: 57, scope: !976, inlinedAt: !834)
!1138 = !DILocation(line: 0, scope: !850, inlinedAt: !834)
!1139 = !DILocation(line: 676, column: 1, scope: !825, inlinedAt: !834)
!1140 = !DILocation(line: 701, column: 21, scope: !1141, inlinedAt: !679)
!1141 = distinct !DILexicalBlock(scope: !813, file: !6, line: 701, column: 21)
!1142 = !DILocation(line: 701, column: 21, scope: !1143, inlinedAt: !679)
!1143 = distinct !DILexicalBlock(scope: !1141, file: !6, line: 701, column: 21)
!1144 = distinct !{!1144, !199, !1145, !359}
!1145 = !DILocation(line: 903, column: 5, scope: !152)
!1146 = !DILocation(line: 698, column: 43, scope: !800, inlinedAt: !679)
!1147 = distinct !{!1147, !803, !1148, !359}
!1148 = !DILocation(line: 702, column: 17, scope: !801, inlinedAt: !679)
!1149 = !DILocation(line: 697, column: 50, scope: !792, inlinedAt: !679)
!1150 = !DILocation(line: 697, column: 55, scope: !792, inlinedAt: !679)
!1151 = distinct !{!1151, !798, !1152, !359}
!1152 = !DILocation(line: 702, column: 17, scope: !793, inlinedAt: !679)
!1153 = !DILocation(line: 703, column: 13, scope: !1154, inlinedAt: !679)
!1154 = distinct !DILexicalBlock(scope: !794, file: !6, line: 703, column: 13)
!1155 = !DILocation(line: 703, column: 25, scope: !1154, inlinedAt: !679)
!1156 = !DILocation(line: 703, column: 19, scope: !1154, inlinedAt: !679)
!1157 = !DILocation(line: 703, column: 13, scope: !794, inlinedAt: !679)
!1158 = !DILocation(line: 705, column: 17, scope: !1159, inlinedAt: !679)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !6, line: 705, column: 17)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !6, line: 703, column: 34)
!1161 = !DILocation(line: 705, column: 29, scope: !1159, inlinedAt: !679)
!1162 = !DILocation(line: 705, column: 23, scope: !1159, inlinedAt: !679)
!1163 = !DILocation(line: 705, column: 17, scope: !1160, inlinedAt: !679)
!1164 = !DILocation(line: 0, scope: !1154, inlinedAt: !679)
!1165 = !DILocation(line: 707, column: 16, scope: !1166, inlinedAt: !679)
!1166 = distinct !DILexicalBlock(scope: !794, file: !6, line: 707, column: 13)
!1167 = !DILocation(line: 707, column: 13, scope: !1166, inlinedAt: !679)
!1168 = !DILocation(line: 707, column: 28, scope: !1166, inlinedAt: !679)
!1169 = distinct !{!1169, !789, !1170}
!1170 = !DILocation(line: 716, column: 5, scope: !790, inlinedAt: !679)
!1171 = !DILocation(line: 707, column: 33, scope: !1166, inlinedAt: !679)
!1172 = !DILocation(line: 707, column: 13, scope: !794, inlinedAt: !679)
!1173 = !DILocation(line: 497, column: 16, scope: !1174, inlinedAt: !1175)
!1174 = distinct !DISubprogram(name: "njByteAlign", scope: !6, file: !6, line: 496, type: !27, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1175 = distinct !DILocation(line: 708, column: 13, scope: !1176, inlinedAt: !679)
!1176 = distinct !DILexicalBlock(scope: !1166, file: !6, line: 707, column: 46)
!1177 = !{!141, !131, i64 524756}
!1178 = !DILocation(line: 709, column: 17, scope: !1176, inlinedAt: !679)
!1179 = !DILocation(line: 710, column: 21, scope: !1180, inlinedAt: !679)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !6, line: 710, column: 17)
!1181 = !DILocation(line: 710, column: 31, scope: !1180, inlinedAt: !679)
!1182 = !DILocation(line: 710, column: 42, scope: !1180, inlinedAt: !679)
!1183 = !DILocation(line: 710, column: 67, scope: !1184, inlinedAt: !679)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !6, line: 710, column: 67)
!1185 = !DILocation(line: 711, column: 32, scope: !1176, inlinedAt: !679)
!1186 = !DILocation(line: 712, column: 27, scope: !1176, inlinedAt: !679)
!1187 = !DILocation(line: 714, column: 35, scope: !1188, inlinedAt: !679)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 713, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1176, file: !6, line: 713, column: 13)
!1190 = !DILocation(line: 711, column: 37, scope: !1176, inlinedAt: !679)
!1191 = !DILocation(line: 696, column: 5, scope: !795, inlinedAt: !679)
!1192 = !DILocation(line: 717, column: 14, scope: !669, inlinedAt: !679)
!1193 = !DILocation(line: 718, column: 1, scope: !669, inlinedAt: !679)
!1194 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 519, column: 5, scope: !1196, inlinedAt: !1197)
!1196 = distinct !DISubprogram(name: "njSkipMarker", scope: !6, file: !6, line: 518, type: !27, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1197 = distinct !DILocation(line: 896, column: 24, scope: !226)
!1198 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !1195)
!1199 = !DILocation(line: 512, column: 22, scope: !685, inlinedAt: !1195)
!1200 = !DILocation(line: 0, scope: !233, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !1195)
!1202 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !1201)
!1203 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !1201)
!1204 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !1201)
!1205 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !1201)
!1206 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !1195)
!1207 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !1195)
!1208 = !DILocation(line: 514, column: 30, scope: !696, inlinedAt: !1195)
!1209 = !DILocation(line: 0, scope: !189, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !1195)
!1211 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !1210)
!1212 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !1210)
!1213 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !1210)
!1214 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 520, column: 5, scope: !1196, inlinedAt: !1197)
!1216 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !1215)
!1217 = !DILocation(line: 520, column: 15, scope: !1196, inlinedAt: !1197)
!1218 = !DILocation(line: 0, scope: !189, inlinedAt: !1215)
!1219 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !1215)
!1220 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !1215)
!1221 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !1215)
!1222 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !1215)
!1223 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !1215)
!1224 = !DILocation(line: 898, column: 33, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !226, file: !6, line: 898, column: 21)
!1226 = !DILocation(line: 898, column: 41, scope: !1225)
!1227 = !DILocation(line: 898, column: 21, scope: !226)
!1228 = !DILocation(line: 512, column: 17, scope: !228, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 519, column: 5, scope: !1196, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 899, column: 21, scope: !1225)
!1231 = !DILocation(line: 512, column: 9, scope: !229, inlinedAt: !1229)
!1232 = !DILocation(line: 512, column: 22, scope: !685, inlinedAt: !1229)
!1233 = !DILocation(line: 0, scope: !233, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 513, column: 17, scope: !229, inlinedAt: !1229)
!1235 = !DILocation(line: 508, column: 13, scope: !233, inlinedAt: !1234)
!1236 = !DILocation(line: 508, column: 20, scope: !233, inlinedAt: !1234)
!1237 = !DILocation(line: 508, column: 28, scope: !233, inlinedAt: !1234)
!1238 = !DILocation(line: 508, column: 26, scope: !233, inlinedAt: !1234)
!1239 = !DILocation(line: 514, column: 19, scope: !246, inlinedAt: !1229)
!1240 = !DILocation(line: 514, column: 9, scope: !229, inlinedAt: !1229)
!1241 = !DILocation(line: 514, column: 30, scope: !696, inlinedAt: !1229)
!1242 = !DILocation(line: 0, scope: !189, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 515, column: 5, scope: !229, inlinedAt: !1229)
!1244 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !1243)
!1245 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !1243)
!1246 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !1243)
!1247 = !DILocation(line: 502, column: 13, scope: !189, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 520, column: 5, scope: !1196, inlinedAt: !1230)
!1249 = !DILocation(line: 501, column: 12, scope: !189, inlinedAt: !1248)
!1250 = !DILocation(line: 520, column: 15, scope: !1196, inlinedAt: !1230)
!1251 = !DILocation(line: 0, scope: !189, inlinedAt: !1248)
!1252 = !DILocation(line: 503, column: 15, scope: !189, inlinedAt: !1248)
!1253 = !DILocation(line: 504, column: 17, scope: !295, inlinedAt: !1248)
!1254 = !DILocation(line: 504, column: 9, scope: !189, inlinedAt: !1248)
!1255 = !DILocation(line: 504, column: 31, scope: !295, inlinedAt: !1248)
!1256 = !DILocation(line: 504, column: 22, scope: !295, inlinedAt: !1248)
!1257 = !DILocation(line: 905, column: 14, scope: !152)
!1258 = !DILocalVariable(name: "i", scope: !1259, file: !6, line: 818, type: !22)
!1259 = distinct !DISubprogram(name: "njConvert", scope: !6, file: !6, line: 817, type: !27, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1260)
!1260 = !{!1258, !1261, !1262, !1265, !1266, !1267, !1268, !1269, !1270, !1277, !1278, !1279, !1282, !1283}
!1261 = !DILocalVariable(name: "c", scope: !1259, file: !6, line: 819, type: !223)
!1262 = !DILocalVariable(name: "x", scope: !1263, file: !6, line: 836, type: !22)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !6, line: 834, column: 24)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !6, line: 834, column: 9)
!1265 = !DILocalVariable(name: "yy", scope: !1263, file: !6, line: 836, type: !22)
!1266 = !DILocalVariable(name: "prgb", scope: !1263, file: !6, line: 837, type: !21)
!1267 = !DILocalVariable(name: "py", scope: !1263, file: !6, line: 838, type: !18)
!1268 = !DILocalVariable(name: "pcb", scope: !1263, file: !6, line: 839, type: !18)
!1269 = !DILocalVariable(name: "pcr", scope: !1263, file: !6, line: 840, type: !18)
!1270 = !DILocalVariable(name: "y", scope: !1271, file: !6, line: 843, type: !22)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !6, line: 842, column: 46)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !6, line: 842, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 842, column: 13)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 841, column: 42)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !6, line: 841, column: 9)
!1276 = distinct !DILexicalBlock(scope: !1263, file: !6, line: 841, column: 9)
!1277 = !DILocalVariable(name: "cb", scope: !1271, file: !6, line: 844, type: !22)
!1278 = !DILocalVariable(name: "cr", scope: !1271, file: !6, line: 845, type: !22)
!1279 = !DILocalVariable(name: "pin", scope: !1280, file: !6, line: 856, type: !21)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !6, line: 854, column: 55)
!1281 = distinct !DILexicalBlock(scope: !1264, file: !6, line: 854, column: 16)
!1282 = !DILocalVariable(name: "pout", scope: !1280, file: !6, line: 857, type: !21)
!1283 = !DILocalVariable(name: "y", scope: !1280, file: !6, line: 858, type: !22)
!1284 = !DILocation(line: 0, scope: !1259, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 906, column: 5, scope: !152)
!1286 = !DILocation(line: 820, column: 38, scope: !1287, inlinedAt: !1285)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !6, line: 820, column: 5)
!1288 = distinct !DILexicalBlock(scope: !1259, file: !6, line: 820, column: 5)
!1289 = !DILocation(line: 820, column: 33, scope: !1287, inlinedAt: !1285)
!1290 = !DILocation(line: 820, column: 5, scope: !1288, inlinedAt: !1285)
!1291 = !DILocation(line: 822, column: 13, scope: !1292, inlinedAt: !1285)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !6, line: 820, column: 56)
!1293 = !DILocation(line: 822, column: 24, scope: !1292, inlinedAt: !1285)
!1294 = !DILocation(line: 822, column: 35, scope: !1292, inlinedAt: !1285)
!1295 = !DILocation(line: 822, column: 30, scope: !1292, inlinedAt: !1285)
!1296 = !DILocation(line: 822, column: 42, scope: !1292, inlinedAt: !1285)
!1297 = !DILocation(line: 822, column: 49, scope: !1292, inlinedAt: !1285)
!1298 = !DILocation(line: 822, column: 61, scope: !1292, inlinedAt: !1285)
!1299 = !DILocation(line: 822, column: 56, scope: !1292, inlinedAt: !1285)
!1300 = !DILocalVariable(name: "c", arg: 1, scope: !1301, file: !6, line: 736, type: !223)
!1301 = distinct !DISubprogram(name: "njUpsampleH", scope: !6, file: !6, line: 736, type: !1302, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !223}
!1304 = !{!1300, !1305, !1306, !1307, !1308, !1309, !1310}
!1305 = !DILocalVariable(name: "xmax", scope: !1301, file: !6, line: 737, type: !157)
!1306 = !DILocalVariable(name: "out", scope: !1301, file: !6, line: 738, type: !21)
!1307 = !DILocalVariable(name: "lin", scope: !1301, file: !6, line: 738, type: !21)
!1308 = !DILocalVariable(name: "lout", scope: !1301, file: !6, line: 738, type: !21)
!1309 = !DILocalVariable(name: "x", scope: !1301, file: !6, line: 739, type: !22)
!1310 = !DILocalVariable(name: "y", scope: !1301, file: !6, line: 739, type: !22)
!1311 = !DILocation(line: 0, scope: !1301, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 823, column: 42, scope: !1313, inlinedAt: !1285)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !6, line: 823, column: 21)
!1314 = distinct !DILexicalBlock(scope: !1292, file: !6, line: 822, column: 70)
!1315 = !DILocation(line: 737, column: 31, scope: !1301, inlinedAt: !1312)
!1316 = !DILocation(line: 740, column: 54, scope: !1301, inlinedAt: !1312)
!1317 = !DILocation(line: 740, column: 49, scope: !1301, inlinedAt: !1312)
!1318 = !DILocation(line: 740, column: 62, scope: !1301, inlinedAt: !1312)
!1319 = !DILocation(line: 740, column: 39, scope: !1301, inlinedAt: !1312)
!1320 = !DILocation(line: 740, column: 28, scope: !1301, inlinedAt: !1312)
!1321 = !DILocation(line: 741, column: 10, scope: !1322, inlinedAt: !1312)
!1322 = distinct !DILexicalBlock(scope: !1301, file: !6, line: 741, column: 9)
!1323 = !DILocation(line: 741, column: 9, scope: !1301, inlinedAt: !1312)
!1324 = !DILocation(line: 741, column: 15, scope: !1325, inlinedAt: !1312)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !6, line: 741, column: 15)
!1326 = !DILocation(line: 824, column: 17, scope: !1327, inlinedAt: !1285)
!1327 = distinct !DILexicalBlock(scope: !1314, file: !6, line: 824, column: 17)
!1328 = !DILocation(line: 742, column: 14, scope: !1301, inlinedAt: !1312)
!1329 = !DILocation(line: 744, column: 5, scope: !1330, inlinedAt: !1312)
!1330 = distinct !DILexicalBlock(scope: !1301, file: !6, line: 744, column: 5)
!1331 = !DILocation(line: 745, column: 19, scope: !1332, inlinedAt: !1312)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !6, line: 744, column: 35)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !6, line: 744, column: 5)
!1334 = !DILocation(line: 0, scope: !1018, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 745, column: 19, scope: !1332, inlinedAt: !1312)
!1336 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1335)
!1337 = !DILocation(line: 745, column: 17, scope: !1332, inlinedAt: !1312)
!1338 = !DILocation(line: 746, column: 19, scope: !1332, inlinedAt: !1312)
!1339 = !DILocation(line: 0, scope: !1018, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 746, column: 19, scope: !1332, inlinedAt: !1312)
!1341 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1340)
!1342 = !DILocation(line: 746, column: 9, scope: !1332, inlinedAt: !1312)
!1343 = !DILocation(line: 746, column: 17, scope: !1332, inlinedAt: !1312)
!1344 = !DILocation(line: 747, column: 19, scope: !1332, inlinedAt: !1312)
!1345 = !DILocation(line: 0, scope: !1018, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 747, column: 19, scope: !1332, inlinedAt: !1312)
!1347 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1346)
!1348 = !DILocation(line: 747, column: 9, scope: !1332, inlinedAt: !1312)
!1349 = !DILocation(line: 747, column: 17, scope: !1332, inlinedAt: !1312)
!1350 = !DILocation(line: 748, column: 9, scope: !1351, inlinedAt: !1312)
!1351 = distinct !DILexicalBlock(scope: !1332, file: !6, line: 748, column: 9)
!1352 = !DILocation(line: 749, column: 34, scope: !1353, inlinedAt: !1312)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !6, line: 748, column: 38)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !6, line: 748, column: 9)
!1355 = !DILocation(line: 0, scope: !1018, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 749, column: 34, scope: !1353, inlinedAt: !1312)
!1357 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1356)
!1358 = !DILocation(line: 749, column: 13, scope: !1353, inlinedAt: !1312)
!1359 = !DILocation(line: 749, column: 32, scope: !1353, inlinedAt: !1312)
!1360 = !DILocation(line: 750, column: 34, scope: !1353, inlinedAt: !1312)
!1361 = !DILocation(line: 0, scope: !1018, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 750, column: 34, scope: !1353, inlinedAt: !1312)
!1363 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1362)
!1364 = !DILocation(line: 750, column: 27, scope: !1353, inlinedAt: !1312)
!1365 = !DILocation(line: 750, column: 13, scope: !1353, inlinedAt: !1312)
!1366 = !DILocation(line: 750, column: 32, scope: !1353, inlinedAt: !1312)
!1367 = !DILocation(line: 748, column: 24, scope: !1354, inlinedAt: !1312)
!1368 = distinct !{!1368, !1350, !1369, !359}
!1369 = !DILocation(line: 751, column: 9, scope: !1351, inlinedAt: !1312)
!1370 = !DILocation(line: 752, column: 13, scope: !1332, inlinedAt: !1312)
!1371 = !DILocation(line: 753, column: 14, scope: !1332, inlinedAt: !1312)
!1372 = !DILocation(line: 754, column: 20, scope: !1332, inlinedAt: !1312)
!1373 = !DILocation(line: 0, scope: !1018, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 754, column: 20, scope: !1332, inlinedAt: !1312)
!1375 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1374)
!1376 = !DILocation(line: 754, column: 9, scope: !1332, inlinedAt: !1312)
!1377 = !DILocation(line: 754, column: 18, scope: !1332, inlinedAt: !1312)
!1378 = !DILocation(line: 755, column: 20, scope: !1332, inlinedAt: !1312)
!1379 = !DILocation(line: 0, scope: !1018, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 755, column: 20, scope: !1332, inlinedAt: !1312)
!1381 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1380)
!1382 = !DILocation(line: 755, column: 9, scope: !1332, inlinedAt: !1312)
!1383 = !DILocation(line: 755, column: 18, scope: !1332, inlinedAt: !1312)
!1384 = !DILocation(line: 756, column: 20, scope: !1332, inlinedAt: !1312)
!1385 = !DILocation(line: 0, scope: !1018, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 756, column: 20, scope: !1332, inlinedAt: !1312)
!1387 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1386)
!1388 = !DILocation(line: 756, column: 9, scope: !1332, inlinedAt: !1312)
!1389 = !DILocation(line: 756, column: 18, scope: !1332, inlinedAt: !1312)
!1390 = !DILocation(line: 744, column: 30, scope: !1333, inlinedAt: !1312)
!1391 = distinct !{!1391, !1329, !1392, !359}
!1392 = !DILocation(line: 757, column: 5, scope: !1330, inlinedAt: !1312)
!1393 = !DILocation(line: 758, column: 14, scope: !1301, inlinedAt: !1312)
!1394 = !DILocation(line: 759, column: 15, scope: !1301, inlinedAt: !1312)
!1395 = !DILocation(line: 760, column: 5, scope: !1301, inlinedAt: !1312)
!1396 = !DILocation(line: 761, column: 15, scope: !1301, inlinedAt: !1312)
!1397 = !DILocation(line: 824, column: 17, scope: !1398, inlinedAt: !1285)
!1398 = distinct !DILexicalBlock(scope: !1327, file: !6, line: 824, column: 17)
!1399 = !DILocation(line: 825, column: 24, scope: !1400, inlinedAt: !1285)
!1400 = distinct !DILexicalBlock(scope: !1314, file: !6, line: 825, column: 21)
!1401 = !DILocation(line: 825, column: 36, scope: !1400, inlinedAt: !1285)
!1402 = !DILocation(line: 825, column: 31, scope: !1400, inlinedAt: !1285)
!1403 = !DILocation(line: 825, column: 21, scope: !1314, inlinedAt: !1285)
!1404 = !DILocalVariable(name: "c", arg: 1, scope: !1405, file: !6, line: 764, type: !223)
!1405 = distinct !DISubprogram(name: "njUpsampleV", scope: !6, file: !6, line: 764, type: !1302, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1406)
!1406 = !{!1404, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1407 = !DILocalVariable(name: "w", scope: !1405, file: !6, line: 765, type: !157)
!1408 = !DILocalVariable(name: "s1", scope: !1405, file: !6, line: 765, type: !157)
!1409 = !DILocalVariable(name: "s2", scope: !1405, file: !6, line: 765, type: !157)
!1410 = !DILocalVariable(name: "out", scope: !1405, file: !6, line: 766, type: !21)
!1411 = !DILocalVariable(name: "cin", scope: !1405, file: !6, line: 766, type: !21)
!1412 = !DILocalVariable(name: "cout", scope: !1405, file: !6, line: 766, type: !21)
!1413 = !DILocalVariable(name: "x", scope: !1405, file: !6, line: 767, type: !22)
!1414 = !DILocalVariable(name: "y", scope: !1405, file: !6, line: 767, type: !22)
!1415 = !DILocation(line: 0, scope: !1405, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 825, column: 44, scope: !1400, inlinedAt: !1285)
!1417 = !DILocation(line: 765, column: 22, scope: !1405, inlinedAt: !1416)
!1418 = !DILocation(line: 765, column: 37, scope: !1405, inlinedAt: !1416)
!1419 = !DILocation(line: 765, column: 53, scope: !1405, inlinedAt: !1416)
!1420 = !DILocation(line: 768, column: 49, scope: !1405, inlinedAt: !1416)
!1421 = !DILocation(line: 768, column: 62, scope: !1405, inlinedAt: !1416)
!1422 = !DILocation(line: 768, column: 39, scope: !1405, inlinedAt: !1416)
!1423 = !DILocation(line: 768, column: 28, scope: !1405, inlinedAt: !1416)
!1424 = !DILocation(line: 769, column: 10, scope: !1425, inlinedAt: !1416)
!1425 = distinct !DILexicalBlock(scope: !1405, file: !6, line: 769, column: 9)
!1426 = !DILocation(line: 769, column: 9, scope: !1405, inlinedAt: !1416)
!1427 = !DILocation(line: 770, column: 20, scope: !1428, inlinedAt: !1416)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !6, line: 770, column: 5)
!1429 = distinct !DILexicalBlock(scope: !1405, file: !6, line: 770, column: 5)
!1430 = !DILocation(line: 770, column: 5, scope: !1429, inlinedAt: !1416)
!1431 = !DILocation(line: 769, column: 15, scope: !1432, inlinedAt: !1416)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !6, line: 769, column: 15)
!1433 = !DILocation(line: 826, column: 17, scope: !1434, inlinedAt: !1285)
!1434 = distinct !DILexicalBlock(scope: !1314, file: !6, line: 826, column: 17)
!1435 = !DILocation(line: 771, column: 16, scope: !1436, inlinedAt: !1416)
!1436 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 770, column: 31)
!1437 = !DILocation(line: 772, column: 17, scope: !1436, inlinedAt: !1416)
!1438 = !DILocation(line: 773, column: 17, scope: !1436, inlinedAt: !1416)
!1439 = !DILocation(line: 0, scope: !1018, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 773, column: 17, scope: !1436, inlinedAt: !1416)
!1441 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1440)
!1442 = !DILocation(line: 773, column: 15, scope: !1436, inlinedAt: !1416)
!1443 = !DILocation(line: 773, column: 59, scope: !1436, inlinedAt: !1416)
!1444 = !DILocation(line: 774, column: 17, scope: !1436, inlinedAt: !1416)
!1445 = !DILocation(line: 0, scope: !1018, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 774, column: 17, scope: !1436, inlinedAt: !1416)
!1447 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1446)
!1448 = !DILocation(line: 774, column: 15, scope: !1436, inlinedAt: !1416)
!1449 = !DILocation(line: 774, column: 76, scope: !1436, inlinedAt: !1416)
!1450 = !DILocation(line: 775, column: 17, scope: !1436, inlinedAt: !1416)
!1451 = !DILocation(line: 0, scope: !1018, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 775, column: 17, scope: !1436, inlinedAt: !1416)
!1453 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1452)
!1454 = !DILocation(line: 775, column: 15, scope: !1436, inlinedAt: !1416)
!1455 = !DILocation(line: 0, scope: !1436, inlinedAt: !1416)
!1456 = !DILocation(line: 777, column: 9, scope: !1457, inlinedAt: !1416)
!1457 = distinct !DILexicalBlock(scope: !1436, file: !6, line: 777, column: 9)
!1458 = !DILocation(line: 778, column: 21, scope: !1459, inlinedAt: !1416)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !6, line: 777, column: 43)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !6, line: 777, column: 9)
!1461 = !DILocation(line: 0, scope: !1018, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 778, column: 21, scope: !1459, inlinedAt: !1416)
!1463 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1462)
!1464 = !DILocation(line: 778, column: 19, scope: !1459, inlinedAt: !1416)
!1465 = !DILocation(line: 778, column: 98, scope: !1459, inlinedAt: !1416)
!1466 = !DILocation(line: 779, column: 21, scope: !1459, inlinedAt: !1416)
!1467 = !DILocation(line: 0, scope: !1018, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 779, column: 21, scope: !1459, inlinedAt: !1416)
!1469 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1468)
!1470 = !DILocation(line: 779, column: 19, scope: !1459, inlinedAt: !1416)
!1471 = !DILocation(line: 777, column: 38, scope: !1460, inlinedAt: !1416)
!1472 = distinct !{!1472, !1456, !1473, !359}
!1473 = !DILocation(line: 781, column: 9, scope: !1457, inlinedAt: !1416)
!1474 = !DILocation(line: 782, column: 13, scope: !1436, inlinedAt: !1416)
!1475 = !DILocation(line: 783, column: 17, scope: !1436, inlinedAt: !1416)
!1476 = !DILocation(line: 0, scope: !1018, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 783, column: 17, scope: !1436, inlinedAt: !1416)
!1478 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1477)
!1479 = !DILocation(line: 783, column: 15, scope: !1436, inlinedAt: !1416)
!1480 = !DILocation(line: 783, column: 78, scope: !1436, inlinedAt: !1416)
!1481 = !DILocation(line: 784, column: 17, scope: !1436, inlinedAt: !1416)
!1482 = !DILocation(line: 0, scope: !1018, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 784, column: 17, scope: !1436, inlinedAt: !1416)
!1484 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1483)
!1485 = !DILocation(line: 784, column: 15, scope: !1436, inlinedAt: !1416)
!1486 = !DILocation(line: 784, column: 78, scope: !1436, inlinedAt: !1416)
!1487 = !DILocation(line: 785, column: 17, scope: !1436, inlinedAt: !1416)
!1488 = !DILocation(line: 0, scope: !1018, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 785, column: 17, scope: !1436, inlinedAt: !1416)
!1490 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1489)
!1491 = !DILocation(line: 785, column: 15, scope: !1436, inlinedAt: !1416)
!1492 = !DILocation(line: 770, column: 26, scope: !1428, inlinedAt: !1416)
!1493 = distinct !{!1493, !1430, !1494, !359}
!1494 = !DILocation(line: 786, column: 5, scope: !1429, inlinedAt: !1416)
!1495 = !DILocation(line: 787, column: 15, scope: !1405, inlinedAt: !1416)
!1496 = !DILocation(line: 788, column: 15, scope: !1405, inlinedAt: !1416)
!1497 = !DILocation(line: 789, column: 5, scope: !1405, inlinedAt: !1416)
!1498 = !DILocation(line: 790, column: 15, scope: !1405, inlinedAt: !1416)
!1499 = !DILocation(line: 826, column: 17, scope: !1500, inlinedAt: !1285)
!1500 = distinct !DILexicalBlock(scope: !1434, file: !6, line: 826, column: 17)
!1501 = !DILocation(line: 791, column: 1, scope: !1405, inlinedAt: !1416)
!1502 = distinct !{!1502, !1291, !1503, !359}
!1503 = !DILocation(line: 827, column: 13, scope: !1292, inlinedAt: !1285)
!1504 = !DILocation(line: 820, column: 46, scope: !1287, inlinedAt: !1285)
!1505 = !DILocation(line: 820, column: 51, scope: !1287, inlinedAt: !1285)
!1506 = distinct !{!1506, !1290, !1507, !359}
!1507 = !DILocation(line: 833, column: 5, scope: !1288, inlinedAt: !1285)
!1508 = !DILocation(line: 834, column: 18, scope: !1264, inlinedAt: !1285)
!1509 = !DILocation(line: 834, column: 9, scope: !1259, inlinedAt: !1285)
!1510 = !DILocation(line: 0, scope: !1263, inlinedAt: !1285)
!1511 = !DILocation(line: 841, column: 9, scope: !1276, inlinedAt: !1285)
!1512 = !DILocation(line: 840, column: 47, scope: !1263, inlinedAt: !1285)
!1513 = !DILocation(line: 839, column: 47, scope: !1263, inlinedAt: !1285)
!1514 = !DILocation(line: 838, column: 47, scope: !1263, inlinedAt: !1285)
!1515 = !DILocation(line: 837, column: 34, scope: !1263, inlinedAt: !1285)
!1516 = !DILocation(line: 842, column: 33, scope: !1272, inlinedAt: !1285)
!1517 = !DILocation(line: 842, column: 28, scope: !1272, inlinedAt: !1285)
!1518 = !DILocation(line: 842, column: 13, scope: !1273, inlinedAt: !1285)
!1519 = !DILocation(line: 843, column: 34, scope: !1271, inlinedAt: !1285)
!1520 = !DILocation(line: 843, column: 40, scope: !1271, inlinedAt: !1285)
!1521 = !DILocation(line: 0, scope: !1271, inlinedAt: !1285)
!1522 = !DILocation(line: 844, column: 35, scope: !1271, inlinedAt: !1285)
!1523 = !DILocation(line: 844, column: 42, scope: !1271, inlinedAt: !1285)
!1524 = !DILocation(line: 845, column: 35, scope: !1271, inlinedAt: !1285)
!1525 = !DILocation(line: 845, column: 42, scope: !1271, inlinedAt: !1285)
!1526 = !DILocation(line: 846, column: 54, scope: !1271, inlinedAt: !1285)
!1527 = !DILocation(line: 846, column: 48, scope: !1271, inlinedAt: !1285)
!1528 = !DILocation(line: 846, column: 59, scope: !1271, inlinedAt: !1285)
!1529 = !DILocation(line: 846, column: 66, scope: !1271, inlinedAt: !1285)
!1530 = !DILocation(line: 0, scope: !1018, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 846, column: 27, scope: !1271, inlinedAt: !1285)
!1532 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1531)
!1533 = !DILocation(line: 846, column: 22, scope: !1271, inlinedAt: !1285)
!1534 = !DILocation(line: 846, column: 25, scope: !1271, inlinedAt: !1285)
!1535 = !DILocation(line: 847, column: 43, scope: !1271, inlinedAt: !1285)
!1536 = !DILocation(line: 847, column: 54, scope: !1271, inlinedAt: !1285)
!1537 = !DILocation(line: 847, column: 48, scope: !1271, inlinedAt: !1285)
!1538 = !DILocation(line: 847, column: 59, scope: !1271, inlinedAt: !1285)
!1539 = !DILocation(line: 847, column: 66, scope: !1271, inlinedAt: !1285)
!1540 = !DILocation(line: 0, scope: !1018, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 847, column: 27, scope: !1271, inlinedAt: !1285)
!1542 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1541)
!1543 = !DILocation(line: 847, column: 22, scope: !1271, inlinedAt: !1285)
!1544 = !DILocation(line: 847, column: 25, scope: !1271, inlinedAt: !1285)
!1545 = !DILocation(line: 848, column: 43, scope: !1271, inlinedAt: !1285)
!1546 = !DILocation(line: 848, column: 59, scope: !1271, inlinedAt: !1285)
!1547 = !DILocation(line: 848, column: 66, scope: !1271, inlinedAt: !1285)
!1548 = !DILocation(line: 0, scope: !1018, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 848, column: 27, scope: !1271, inlinedAt: !1285)
!1550 = !DILocation(line: 340, column: 12, scope: !1018, inlinedAt: !1549)
!1551 = !DILocation(line: 848, column: 22, scope: !1271, inlinedAt: !1285)
!1552 = !DILocation(line: 848, column: 25, scope: !1271, inlinedAt: !1285)
!1553 = !DILocation(line: 842, column: 41, scope: !1272, inlinedAt: !1285)
!1554 = distinct !{!1554, !1518, !1555, !359}
!1555 = !DILocation(line: 849, column: 13, scope: !1273, inlinedAt: !1285)
!1556 = !DILocation(line: 850, column: 30, scope: !1274, inlinedAt: !1285)
!1557 = !DILocation(line: 850, column: 16, scope: !1274, inlinedAt: !1285)
!1558 = !DILocation(line: 851, column: 31, scope: !1274, inlinedAt: !1285)
!1559 = !DILocation(line: 851, column: 17, scope: !1274, inlinedAt: !1285)
!1560 = !DILocation(line: 852, column: 31, scope: !1274, inlinedAt: !1285)
!1561 = !DILocation(line: 852, column: 17, scope: !1274, inlinedAt: !1285)
!1562 = !DILocation(line: 841, column: 36, scope: !1275, inlinedAt: !1285)
!1563 = distinct !{!1563, !1511, !1564, !359}
!1564 = !DILocation(line: 853, column: 9, scope: !1276, inlinedAt: !1285)
!1565 = !DILocation(line: 854, column: 27, scope: !1281, inlinedAt: !1285)
!1566 = !DILocation(line: 854, column: 47, scope: !1281, inlinedAt: !1285)
!1567 = !DILocation(line: 854, column: 33, scope: !1281, inlinedAt: !1285)
!1568 = !DILocation(line: 854, column: 16, scope: !1264, inlinedAt: !1285)
!1569 = !DILocation(line: 0, scope: !1280, inlinedAt: !1285)
!1570 = !DILocation(line: 859, column: 29, scope: !1571, inlinedAt: !1285)
!1571 = distinct !DILexicalBlock(scope: !1280, file: !6, line: 859, column: 9)
!1572 = !DILocation(line: 859, scope: !1571, inlinedAt: !1285)
!1573 = !DILocation(line: 859, column: 9, scope: !1571, inlinedAt: !1285)
!1574 = !DILocation(line: 856, column: 42, scope: !1280, inlinedAt: !1285)
!1575 = !DILocation(line: 857, column: 32, scope: !1280, inlinedAt: !1285)
!1576 = !DILocation(line: 856, column: 31, scope: !1280, inlinedAt: !1285)
!1577 = !DILocation(line: 860, column: 34, scope: !1578, inlinedAt: !1285)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !6, line: 859, column: 51)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !6, line: 859, column: 9)
!1580 = !DILocation(line: 860, column: 13, scope: !1578, inlinedAt: !1285)
!1581 = !DILocation(line: 861, column: 31, scope: !1578, inlinedAt: !1285)
!1582 = !DILocation(line: 861, column: 17, scope: !1578, inlinedAt: !1285)
!1583 = !DILocation(line: 862, column: 32, scope: !1578, inlinedAt: !1285)
!1584 = !DILocation(line: 862, column: 18, scope: !1578, inlinedAt: !1285)
!1585 = !DILocation(line: 860, column: 45, scope: !1578, inlinedAt: !1285)
!1586 = distinct !{!1586, !1573, !1587, !359}
!1587 = !DILocation(line: 863, column: 9, scope: !1571, inlinedAt: !1285)
!1588 = !DILocation(line: 864, column: 40, scope: !1280, inlinedAt: !1285)
!1589 = !DILocation(line: 864, column: 27, scope: !1280, inlinedAt: !1285)
!1590 = !DILocation(line: 865, column: 5, scope: !1280, inlinedAt: !1285)
!1591 = !DILocation(line: 907, column: 15, scope: !152)
!1592 = !DILocation(line: 907, column: 5, scope: !152)
!1593 = !DILocation(line: 908, column: 1, scope: !152)
!1594 = distinct !DISubprogram(name: "njGetWidth", scope: !6, file: !6, line: 910, type: !1595, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!22}
!1597 = !DILocation(line: 910, column: 45, scope: !1594)
!1598 = !DILocation(line: 910, column: 35, scope: !1594)
!1599 = distinct !DISubprogram(name: "njGetHeight", scope: !6, file: !6, line: 911, type: !1595, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1600 = !DILocation(line: 911, column: 45, scope: !1599)
!1601 = !DILocation(line: 911, column: 35, scope: !1599)
!1602 = distinct !DISubprogram(name: "njIsColor", scope: !6, file: !6, line: 912, type: !1595, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1603 = !DILocation(line: 912, column: 46, scope: !1602)
!1604 = !DILocation(line: 912, column: 52, scope: !1602)
!1605 = !DILocation(line: 912, column: 35, scope: !1602)
!1606 = distinct !DISubprogram(name: "njGetImage", scope: !6, file: !6, line: 913, type: !1607, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!21}
!1609 = !DILocation(line: 913, column: 46, scope: !1606)
!1610 = !DILocation(line: 913, column: 52, scope: !1606)
!1611 = !DILocation(line: 913, column: 42, scope: !1606)
!1612 = !DILocation(line: 913, column: 35, scope: !1606)
!1613 = distinct !DISubprogram(name: "njGetImageSize", scope: !6, file: !6, line: 914, type: !1595, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!1614 = !DILocation(line: 914, column: 45, scope: !1613)
!1615 = !DILocation(line: 914, column: 56, scope: !1613)
!1616 = !DILocation(line: 914, column: 51, scope: !1613)
!1617 = !DILocation(line: 914, column: 68, scope: !1613)
!1618 = !DILocation(line: 914, column: 63, scope: !1613)
!1619 = !DILocation(line: 914, column: 35, scope: !1613)
!1620 = !DISubprogram(name: "malloc", scope: !149, file: !149, line: 540, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !118)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!17, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1624, line: 46, baseType: !1625)
!1624 = !DIFile(filename: "/opt/compiler-explorer/clang-16.0.0/lib/clang/16/include/stddef.h", directory: "")
!1625 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1626 = distinct !DISubprogram(name: "njGetBits", scope: !6, file: !6, line: 490, type: !1627, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!22, !22}
!1629 = !{!1630, !1631}
!1630 = !DILocalVariable(name: "bits", arg: 1, scope: !1626, file: !6, line: 490, type: !22)
!1631 = !DILocalVariable(name: "res", scope: !1626, file: !6, line: 491, type: !22)
!1632 = !DILocation(line: 0, scope: !1626)
!1633 = !DILocation(line: 491, column: 15, scope: !1626)
!1634 = !DILocalVariable(name: "bits", arg: 1, scope: !1635, file: !6, line: 484, type: !22)
!1635 = distinct !DISubprogram(name: "njSkipBits", scope: !6, file: !6, line: 484, type: !190, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1636 = !{!1634}
!1637 = !DILocation(line: 0, scope: !1635, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 492, column: 5, scope: !1626)
!1639 = !DILocation(line: 485, column: 12, scope: !1640, inlinedAt: !1638)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !6, line: 485, column: 9)
!1641 = !DILocation(line: 485, column: 20, scope: !1640, inlinedAt: !1638)
!1642 = !DILocation(line: 485, column: 9, scope: !1635, inlinedAt: !1638)
!1643 = !DILocation(line: 486, column: 16, scope: !1640, inlinedAt: !1638)
!1644 = !DILocation(line: 487, column: 16, scope: !1635, inlinedAt: !1638)
!1645 = !DILocation(line: 486, column: 9, scope: !1640, inlinedAt: !1638)
!1646 = !DILocation(line: 493, column: 5, scope: !1626)
!1647 = distinct !DISubprogram(name: "njGetVLC", scope: !6, file: !6, line: 643, type: !1648, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!22, !37, !21}
!1650 = !{!1651, !1652, !1653, !1654}
!1651 = !DILocalVariable(name: "vlc", arg: 1, scope: !1647, file: !6, line: 643, type: !37)
!1652 = !DILocalVariable(name: "code", arg: 2, scope: !1647, file: !6, line: 643, type: !21)
!1653 = !DILocalVariable(name: "value", scope: !1647, file: !6, line: 644, type: !22)
!1654 = !DILocalVariable(name: "bits", scope: !1647, file: !6, line: 645, type: !22)
!1655 = !DILocation(line: 0, scope: !1647)
!1656 = !DILocation(line: 644, column: 17, scope: !1647)
!1657 = !DILocation(line: 645, column: 16, scope: !1647)
!1658 = !DILocation(line: 645, column: 27, scope: !1647)
!1659 = !DILocation(line: 646, column: 10, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1647, file: !6, line: 646, column: 9)
!1661 = !DILocation(line: 646, column: 9, scope: !1647)
!1662 = !DILocation(line: 646, column: 27, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !6, line: 646, column: 16)
!1664 = !DILocation(line: 646, column: 46, scope: !1663)
!1665 = !DILocation(line: 0, scope: !1635, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 647, column: 5, scope: !1647)
!1667 = !DILocation(line: 485, column: 12, scope: !1640, inlinedAt: !1666)
!1668 = !DILocation(line: 485, column: 20, scope: !1640, inlinedAt: !1666)
!1669 = !DILocation(line: 485, column: 9, scope: !1635, inlinedAt: !1666)
!1670 = !DILocation(line: 486, column: 16, scope: !1640, inlinedAt: !1666)
!1671 = !DILocation(line: 487, column: 16, scope: !1635, inlinedAt: !1666)
!1672 = !DILocation(line: 486, column: 9, scope: !1640, inlinedAt: !1666)
!1673 = !DILocation(line: 648, column: 24, scope: !1647)
!1674 = !DILocation(line: 649, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1647, file: !6, line: 649, column: 9)
!1676 = !DILocation(line: 649, column: 9, scope: !1647)
!1677 = !DILocation(line: 649, column: 21, scope: !1675)
!1678 = !DILocation(line: 649, column: 15, scope: !1675)
!1679 = !DILocation(line: 650, column: 18, scope: !1647)
!1680 = !DILocation(line: 651, column: 10, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1647, file: !6, line: 651, column: 9)
!1682 = !DILocation(line: 651, column: 9, scope: !1647)
!1683 = !DILocation(line: 0, scope: !1626, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 652, column: 13, scope: !1647)
!1685 = !DILocation(line: 491, column: 15, scope: !1626, inlinedAt: !1684)
!1686 = !DILocation(line: 0, scope: !1635, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 492, column: 5, scope: !1626, inlinedAt: !1684)
!1688 = !DILocation(line: 485, column: 12, scope: !1640, inlinedAt: !1687)
!1689 = !DILocation(line: 485, column: 20, scope: !1640, inlinedAt: !1687)
!1690 = !DILocation(line: 485, column: 9, scope: !1635, inlinedAt: !1687)
!1691 = !DILocation(line: 486, column: 16, scope: !1640, inlinedAt: !1687)
!1692 = !DILocation(line: 487, column: 16, scope: !1635, inlinedAt: !1687)
!1693 = !DILocation(line: 486, column: 9, scope: !1640, inlinedAt: !1687)
!1694 = !DILocation(line: 653, column: 29, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1647, file: !6, line: 653, column: 9)
!1696 = !DILocation(line: 653, column: 20, scope: !1695)
!1697 = !DILocation(line: 653, column: 15, scope: !1695)
!1698 = !DILocation(line: 653, column: 9, scope: !1647)
!1699 = !DILocation(line: 655, column: 5, scope: !1647)
!1700 = !DILocation(line: 656, column: 1, scope: !1647)
!1701 = distinct !DISubprogram(name: "njShowBits", scope: !6, file: !6, line: 447, type: !1627, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DILocalVariable(name: "bits", arg: 1, scope: !1701, file: !6, line: 447, type: !22)
!1704 = !DILocalVariable(name: "newbyte", scope: !1701, file: !6, line: 448, type: !20)
!1705 = !DILocalVariable(name: "marker", scope: !1706, file: !6, line: 462, type: !20)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !6, line: 461, column: 26)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !6, line: 461, column: 17)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !6, line: 460, column: 30)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !6, line: 460, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1701, file: !6, line: 450, column: 31)
!1711 = !DILocation(line: 0, scope: !1701)
!1712 = !{!141, !131, i64 524752}
!1713 = !DILocation(line: 450, column: 23, scope: !1701)
!1714 = !DILocation(line: 450, column: 5, scope: !1701)
!1715 = !DILocation(line: 451, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1710, file: !6, line: 451, column: 13)
!1717 = !DILocation(line: 451, column: 13, scope: !1710)
!1718 = !DILocation(line: 452, column: 30, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1716, file: !6, line: 451, column: 27)
!1720 = !DILocation(line: 452, column: 36, scope: !1719)
!1721 = !DILocation(line: 452, column: 20, scope: !1719)
!1722 = !DILocation(line: 453, column: 24, scope: !1719)
!1723 = !DILocation(line: 454, column: 13, scope: !1719)
!1724 = distinct !{!1724, !1714, !1725, !359}
!1725 = !DILocation(line: 480, column: 5, scope: !1701)
!1726 = !DILocation(line: 456, column: 26, scope: !1710)
!1727 = !DILocation(line: 456, column: 19, scope: !1710)
!1728 = !DILocation(line: 457, column: 16, scope: !1710)
!1729 = !DILocation(line: 458, column: 20, scope: !1710)
!1730 = !DILocation(line: 459, column: 26, scope: !1710)
!1731 = !DILocation(line: 459, column: 34, scope: !1710)
!1732 = !DILocation(line: 459, column: 32, scope: !1710)
!1733 = !DILocation(line: 459, column: 16, scope: !1710)
!1734 = !DILocation(line: 460, column: 21, scope: !1709)
!1735 = !DILocation(line: 460, column: 13, scope: !1710)
!1736 = !DILocation(line: 461, column: 17, scope: !1707)
!1737 = !DILocation(line: 461, column: 17, scope: !1708)
!1738 = !DILocation(line: 462, column: 47, scope: !1706)
!1739 = !DILocation(line: 462, column: 40, scope: !1706)
!1740 = !DILocation(line: 0, scope: !1706)
!1741 = !DILocation(line: 463, column: 24, scope: !1706)
!1742 = !DILocation(line: 464, column: 25, scope: !1706)
!1743 = !DILocation(line: 464, column: 17, scope: !1706)
!1744 = !DILocation(line: 468, column: 40, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1706, file: !6, line: 464, column: 33)
!1746 = !DILocation(line: 468, column: 45, scope: !1745)
!1747 = !DILocation(line: 470, column: 37, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !6, line: 470, column: 29)
!1749 = !DILocation(line: 470, column: 45, scope: !1748)
!1750 = !DILocation(line: 470, column: 29, scope: !1745)
!1751 = !DILocation(line: 471, column: 38, scope: !1748)
!1752 = !DILocation(line: 471, column: 29, scope: !1748)
!1753 = !DILocation(line: 473, column: 46, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1748, file: !6, line: 472, column: 30)
!1755 = !DILocation(line: 473, column: 52, scope: !1754)
!1756 = !DILocation(line: 473, column: 36, scope: !1754)
!1757 = !DILocation(line: 474, column: 40, scope: !1754)
!1758 = !DILocation(line: 478, column: 26, scope: !1707)
!1759 = !DILocation(line: 481, column: 16, scope: !1701)
!1760 = !DILocation(line: 450, column: 15, scope: !1701)
!1761 = !DILocation(line: 481, column: 35, scope: !1701)
!1762 = !DILocation(line: 481, column: 20, scope: !1701)
!1763 = !DILocation(line: 481, column: 59, scope: !1701)
!1764 = !DILocation(line: 481, column: 44, scope: !1701)
!1765 = !DILocation(line: 482, column: 1, scope: !1701)