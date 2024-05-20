; ModuleID = 'csv.c'
source_filename = "csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.CsvHandle_ = type { ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i64, ptr, i32, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @CsvOpen(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CsvOpen2(ptr noundef %0, i8 noundef signext 44, i8 noundef signext 34, i8 noundef signext 92)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @CsvOpen2(ptr nocapture noundef readonly %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #11
  %6 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.CsvHandle_, ptr %6, i64 0, i32 12
  store i8 %1, ptr %9, align 4, !tbaa !3
  %10 = getelementptr inbounds %struct.CsvHandle_, ptr %6, i64 0, i32 13
  store i8 %2, ptr %10, align 1, !tbaa !10
  %11 = getelementptr inbounds %struct.CsvHandle_, ptr %6, i64 0, i32 14
  store i8 %3, ptr %11, align 2, !tbaa !11
  %12 = tail call i64 @sysconf(i32 noundef 30) #11
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i64 %12, 41943039
  %16 = sub nsw i64 0, %12
  %17 = and i64 %15, %16
  %18 = getelementptr inbounds %struct.CsvHandle_, ptr %6, i64 0, i32 4
  store i64 %17, ptr %18, align 8, !tbaa !12
  %19 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #11
  %20 = getelementptr inbounds %struct.CsvHandle_, ptr %6, i64 0, i32 11
  store i32 %19, ptr %20, align 8, !tbaa !13
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = call i32 @fstat(i32 noundef %19, ptr noundef nonnull %5) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @close(i32 noundef %19) #11
  br label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.CsvHandle_, ptr %6, i64 0, i32 5
  store i64 %29, ptr %30, align 8, !tbaa !17
  br label %32

31:                                               ; preds = %14, %8, %4, %25
  tail call void @free(ptr noundef %6) #11
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ null, %31 ], [ %6, %27 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #11
  ret ptr %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare dso_local noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @CsvClose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !12
  %9 = tail call i32 @munmap(ptr noundef nonnull %4, i64 noundef %8) #11
  br label %10

10:                                               ; preds = %3, %6
  %11 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = tail call i32 @close(i32 noundef %12) #11
  %14 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void @free(ptr noundef %15) #11
  tail call void @free(ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CsvReadNextRow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 11
  %8 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct.CsvHandle_, ptr %0, i64 0, i32 10
  br label %14

14:                                               ; preds = %256, %1
  %15 = phi ptr [ null, %1 ], [ %53, %256 ]
  %16 = load i64, ptr %2, align 8, !tbaa !20
  %17 = load i64, ptr %3, align 8, !tbaa !21
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %46, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 8, !tbaa !18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %4, align 8, !tbaa !12
  %24 = tail call i32 @munmap(ptr noundef nonnull %20, i64 noundef %23) #11
  br label %25

25:                                               ; preds = %22, %19
  store ptr null, ptr %0, align 8, !tbaa !18
  %26 = load i64, ptr %5, align 8, !tbaa !22
  %27 = load i64, ptr %6, align 8, !tbaa !17
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, ptr %4, align 8, !tbaa !12
  %31 = load i32, ptr %7, align 8, !tbaa !13
  %32 = tail call ptr @mmap(ptr noundef null, i64 noundef %30, i32 noundef 3, i32 noundef 2, i32 noundef %31, i64 noundef %26) #11
  store ptr %32, ptr %0, align 8, !tbaa !18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = add i64 %30, %26
  store i64 0, ptr %2, align 8, !tbaa !20
  store i64 %35, ptr %5, align 8, !tbaa !22
  %36 = load i64, ptr %4, align 8, !tbaa !12
  store i64 %36, ptr %3, align 8, !tbaa !21
  %37 = load i64, ptr %6, align 8, !tbaa !17
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = urem i64 %37, %36
  store i64 %40, ptr %3, align 8, !tbaa !21
  br label %46

41:                                               ; preds = %29
  store ptr null, ptr %8, align 8, !tbaa !23
  br label %266

42:                                               ; preds = %25
  store ptr null, ptr %8, align 8, !tbaa !23
  %43 = icmp eq ptr %15, null
  br i1 %43, label %266, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %13, align 8, !tbaa !19
  br label %266

46:                                               ; preds = %14, %39, %34
  %47 = phi i64 [ %16, %14 ], [ 0, %39 ], [ 0, %34 ]
  %48 = phi i64 [ %17, %14 ], [ %40, %39 ], [ %36, %34 ]
  store ptr null, ptr %8, align 8, !tbaa !23
  %49 = sub i64 %48, %47
  %50 = icmp eq i64 %48, %47
  br i1 %50, label %266, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %0, align 8, !tbaa !18
  %53 = getelementptr inbounds i8, ptr %52, i64 %47
  %54 = getelementptr i8, ptr %52, i64 %48
  %55 = load i8, ptr %9, align 1, !tbaa !10
  %56 = lshr i64 %49, 3
  %57 = getelementptr inbounds i64, ptr %53, i64 %56
  %58 = and i64 %49, -8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %166, %51
  %61 = icmp ult ptr %57, %54
  br i1 %61, label %169, label %244

62:                                               ; preds = %51, %166
  %63 = phi ptr [ %167, %166 ], [ %53, %51 ]
  %64 = load i8, ptr %63, align 1, !tbaa !24
  %65 = getelementptr inbounds i8, ptr %63, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !24
  %67 = getelementptr inbounds i8, ptr %63, i64 2
  %68 = load i8, ptr %67, align 1, !tbaa !24
  %69 = getelementptr inbounds i8, ptr %63, i64 3
  %70 = load i8, ptr %69, align 1, !tbaa !24
  %71 = getelementptr inbounds i8, ptr %63, i64 4
  %72 = load i8, ptr %71, align 1, !tbaa !24
  %73 = getelementptr inbounds i8, ptr %63, i64 5
  %74 = load i8, ptr %73, align 1, !tbaa !24
  %75 = getelementptr inbounds i8, ptr %63, i64 6
  %76 = load i8, ptr %75, align 1, !tbaa !24
  %77 = getelementptr inbounds i8, ptr %63, i64 7
  %78 = load i8, ptr %77, align 1, !tbaa !24
  %79 = icmp eq i8 %64, %55
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i64, ptr %10, align 8, !tbaa !25
  %82 = add i64 %81, 1
  store i64 %82, ptr %10, align 8, !tbaa !25
  br label %89

83:                                               ; preds = %62
  %84 = icmp eq i8 %64, 10
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = load i64, ptr %10, align 8, !tbaa !25
  %87 = and i64 %86, 1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %199, label %89

89:                                               ; preds = %85, %83, %80
  %90 = icmp eq i8 %66, %55
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i64, ptr %10, align 8, !tbaa !25
  %93 = add i64 %92, 1
  store i64 %93, ptr %10, align 8, !tbaa !25
  br label %100

94:                                               ; preds = %89
  %95 = icmp eq i8 %66, 10
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = load i64, ptr %10, align 8, !tbaa !25
  %98 = and i64 %97, 1
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %197, label %100

100:                                              ; preds = %96, %94, %91
  %101 = icmp eq i8 %68, %55
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i64, ptr %10, align 8, !tbaa !25
  %104 = add i64 %103, 1
  store i64 %104, ptr %10, align 8, !tbaa !25
  br label %111

105:                                              ; preds = %100
  %106 = icmp eq i8 %68, 10
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  %108 = load i64, ptr %10, align 8, !tbaa !25
  %109 = and i64 %108, 1
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %195, label %111

111:                                              ; preds = %107, %105, %102
  %112 = icmp eq i8 %70, %55
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i64, ptr %10, align 8, !tbaa !25
  %115 = add i64 %114, 1
  store i64 %115, ptr %10, align 8, !tbaa !25
  br label %122

116:                                              ; preds = %111
  %117 = icmp eq i8 %70, 10
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  %119 = load i64, ptr %10, align 8, !tbaa !25
  %120 = and i64 %119, 1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %193, label %122

122:                                              ; preds = %118, %116, %113
  %123 = icmp eq i8 %72, %55
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i64, ptr %10, align 8, !tbaa !25
  %126 = add i64 %125, 1
  store i64 %126, ptr %10, align 8, !tbaa !25
  br label %133

127:                                              ; preds = %122
  %128 = icmp eq i8 %72, 10
  br i1 %128, label %129, label %133

129:                                              ; preds = %127
  %130 = load i64, ptr %10, align 8, !tbaa !25
  %131 = and i64 %130, 1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %191, label %133

133:                                              ; preds = %129, %127, %124
  %134 = icmp eq i8 %74, %55
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i64, ptr %10, align 8, !tbaa !25
  %137 = add i64 %136, 1
  store i64 %137, ptr %10, align 8, !tbaa !25
  br label %144

138:                                              ; preds = %133
  %139 = icmp eq i8 %74, 10
  br i1 %139, label %140, label %144

140:                                              ; preds = %138
  %141 = load i64, ptr %10, align 8, !tbaa !25
  %142 = and i64 %141, 1
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %189, label %144

144:                                              ; preds = %140, %138, %135
  %145 = icmp eq i8 %76, %55
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = load i64, ptr %10, align 8, !tbaa !25
  %148 = add i64 %147, 1
  store i64 %148, ptr %10, align 8, !tbaa !25
  br label %155

149:                                              ; preds = %144
  %150 = icmp eq i8 %76, 10
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  %152 = load i64, ptr %10, align 8, !tbaa !25
  %153 = and i64 %152, 1
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %187, label %155

155:                                              ; preds = %151, %149, %146
  %156 = icmp eq i8 %78, %55
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i64, ptr %10, align 8, !tbaa !25
  %159 = add i64 %158, 1
  store i64 %159, ptr %10, align 8, !tbaa !25
  br label %166

160:                                              ; preds = %155
  %161 = icmp eq i8 %78, 10
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = load i64, ptr %10, align 8, !tbaa !25
  %164 = and i64 %163, 1
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %185, label %166

166:                                              ; preds = %162, %160, %157
  %167 = getelementptr inbounds i64, ptr %63, i64 1
  %168 = icmp ult ptr %167, %57
  br i1 %168, label %62, label %60, !llvm.loop !26

169:                                              ; preds = %60, %182
  %170 = phi ptr [ %183, %182 ], [ %57, %60 ]
  %171 = load i8, ptr %170, align 1, !tbaa !24
  %172 = icmp eq i8 %171, %55
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i64, ptr %10, align 8, !tbaa !25
  %175 = add i64 %174, 1
  store i64 %175, ptr %10, align 8, !tbaa !25
  br label %182

176:                                              ; preds = %169
  %177 = icmp eq i8 %171, 10
  br i1 %177, label %178, label %182

178:                                              ; preds = %176
  %179 = load i64, ptr %10, align 8, !tbaa !25
  %180 = and i64 %179, 1
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %199, label %182

182:                                              ; preds = %178, %176, %173
  %183 = getelementptr inbounds i8, ptr %170, i64 1
  %184 = icmp eq ptr %183, %54
  br i1 %184, label %244, label %169, !llvm.loop !28

185:                                              ; preds = %162
  %186 = getelementptr inbounds i8, ptr %63, i64 7
  br label %199

187:                                              ; preds = %151
  %188 = getelementptr inbounds i8, ptr %63, i64 6
  br label %199

189:                                              ; preds = %140
  %190 = getelementptr inbounds i8, ptr %63, i64 5
  br label %199

191:                                              ; preds = %129
  %192 = getelementptr inbounds i8, ptr %63, i64 4
  br label %199

193:                                              ; preds = %118
  %194 = getelementptr inbounds i8, ptr %63, i64 3
  br label %199

195:                                              ; preds = %107
  %196 = getelementptr inbounds i8, ptr %63, i64 2
  br label %199

197:                                              ; preds = %96
  %198 = getelementptr inbounds i8, ptr %63, i64 1
  br label %199

199:                                              ; preds = %85, %178, %185, %187, %189, %191, %193, %195, %197
  %200 = phi ptr [ %186, %185 ], [ %188, %187 ], [ %190, %189 ], [ %192, %191 ], [ %194, %193 ], [ %196, %195 ], [ %198, %197 ], [ %170, %178 ], [ %63, %85 ]
  %201 = ptrtoint ptr %200 to i64
  %202 = ptrtoint ptr %53 to i64
  %203 = sub i64 %201, %202
  %204 = add i64 %203, 1
  %205 = add i64 %204, %47
  store i64 %205, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %10, align 8, !tbaa !25
  %206 = load i64, ptr %11, align 8, !tbaa !29
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %231, label %208

208:                                              ; preds = %199
  %209 = add i64 %203, 2
  %210 = add i64 %209, %206
  %211 = load i64, ptr %12, align 8, !tbaa !30
  %212 = icmp ult i64 %211, %210
  %213 = load ptr, ptr %13, align 8, !tbaa !19
  br i1 %212, label %214, label %219

214:                                              ; preds = %208
  %215 = tail call ptr @realloc(ptr noundef %213, i64 noundef %210) #13
  %216 = icmp eq ptr %215, null
  br i1 %216, label %266, label %217

217:                                              ; preds = %214
  store ptr %215, ptr %13, align 8, !tbaa !19
  store i64 %210, ptr %12, align 8, !tbaa !30
  %218 = load i64, ptr %11, align 8, !tbaa !29
  br label %219

219:                                              ; preds = %208, %217
  %220 = phi i64 [ %218, %217 ], [ %206, %208 ]
  %221 = phi ptr [ %215, %217 ], [ %213, %208 ]
  %222 = getelementptr inbounds i8, ptr %221, i64 %220
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr align 1 %53, i64 %204, i1 false)
  %223 = load i64, ptr %11, align 8, !tbaa !29
  %224 = add i64 %223, %204
  store i64 %224, ptr %11, align 8, !tbaa !29
  %225 = load ptr, ptr %13, align 8, !tbaa !19
  %226 = getelementptr inbounds i8, ptr %225, i64 %224
  store i8 0, ptr %226, align 1, !tbaa !24
  %227 = load ptr, ptr %13, align 8, !tbaa !19
  %228 = icmp eq ptr %227, null
  br i1 %228, label %266, label %229

229:                                              ; preds = %219
  %230 = load i64, ptr %11, align 8, !tbaa !29
  br label %231

231:                                              ; preds = %229, %199
  %232 = phi i64 [ %230, %229 ], [ %204, %199 ]
  %233 = phi ptr [ %227, %229 ], [ %53, %199 ]
  store i64 0, ptr %11, align 8, !tbaa !29
  %234 = getelementptr i8, ptr %233, i64 -1
  %235 = getelementptr i8, ptr %234, i64 %232
  %236 = icmp ugt i64 %232, 1
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = getelementptr inbounds i8, ptr %235, i64 -1
  %239 = load i8, ptr %238, align 1, !tbaa !24
  %240 = icmp eq i8 %239, 13
  %241 = select i1 %240, ptr %238, ptr %235
  br label %242

242:                                              ; preds = %231, %237
  %243 = phi ptr [ %235, %231 ], [ %241, %237 ]
  store i8 0, ptr %243, align 1, !tbaa !24
  br label %266

244:                                              ; preds = %182, %60
  store i64 %48, ptr %2, align 8, !tbaa !20
  %245 = load i64, ptr %11, align 8, !tbaa !29
  %246 = add i64 %49, 1
  %247 = add i64 %246, %245
  %248 = load i64, ptr %12, align 8, !tbaa !30
  %249 = icmp ult i64 %248, %247
  %250 = load ptr, ptr %13, align 8, !tbaa !19
  br i1 %249, label %251, label %256

251:                                              ; preds = %244
  %252 = tail call ptr @realloc(ptr noundef %250, i64 noundef %247) #13
  %253 = icmp eq ptr %252, null
  br i1 %253, label %266, label %254

254:                                              ; preds = %251
  store ptr %252, ptr %13, align 8, !tbaa !19
  store i64 %247, ptr %12, align 8, !tbaa !30
  %255 = load i64, ptr %11, align 8, !tbaa !29
  br label %256

256:                                              ; preds = %244, %254
  %257 = phi i64 [ %255, %254 ], [ %245, %244 ]
  %258 = phi ptr [ %252, %254 ], [ %250, %244 ]
  %259 = getelementptr inbounds i8, ptr %258, i64 %257
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %259, ptr align 1 %53, i64 %49, i1 false)
  %260 = load i64, ptr %11, align 8, !tbaa !29
  %261 = add i64 %260, %49
  store i64 %261, ptr %11, align 8, !tbaa !29
  %262 = load ptr, ptr %13, align 8, !tbaa !19
  %263 = getelementptr inbounds i8, ptr %262, i64 %261
  store i8 0, ptr %263, align 1, !tbaa !24
  %264 = load ptr, ptr %13, align 8, !tbaa !19
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %14, !llvm.loop !31

266:                                              ; preds = %251, %256, %46, %242, %44, %214, %219, %41, %42
  %267 = phi ptr [ null, %42 ], [ null, %41 ], [ null, %219 ], [ null, %214 ], [ %233, %242 ], [ %45, %44 ], [ null, %46 ], [ null, %256 ], [ null, %251 ]
  ret ptr %267
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @CsvReadNextCol(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.CsvHandle_, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %0, ptr %4
  %7 = load i8, ptr %6, align 1, !tbaa !24
  %8 = getelementptr inbounds %struct.CsvHandle_, ptr %1, i64 0, i32 13
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = icmp ne i8 %7, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i64
  %13 = getelementptr i8, ptr %6, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.CsvHandle_, ptr %1, i64 0, i32 14
  %18 = getelementptr inbounds %struct.CsvHandle_, ptr %1, i64 0, i32 12
  br label %19

19:                                               ; preds = %16, %54
  %20 = phi i8 [ %14, %16 ], [ %57, %54 ]
  %21 = phi ptr [ %6, %16 ], [ %56, %54 ]
  %22 = phi ptr [ %13, %16 ], [ %55, %54 ]
  %23 = load i8, ptr %17, align 2, !tbaa !11
  %24 = icmp eq i8 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !24
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr %22, ptr %26
  %30 = load i8, ptr %29, align 1, !tbaa !24
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i8 [ %20, %19 ], [ %30, %25 ]
  %33 = phi ptr [ %22, %19 ], [ %29, %25 ]
  %34 = load i8, ptr %8, align 1, !tbaa !10
  %35 = icmp eq i8 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !24
  %39 = icmp eq i8 %38, %32
  %40 = select i1 %39, ptr %37, ptr %33
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi ptr [ %33, %31 ], [ %40, %36 ]
  %43 = phi i1 [ false, %31 ], [ %39, %36 ]
  %44 = or i1 %10, %43
  %45 = load i8, ptr %42, align 1, !tbaa !24
  br i1 %44, label %48, label %46

46:                                               ; preds = %41
  %47 = icmp eq i8 %45, %34
  br i1 %47, label %59, label %51

48:                                               ; preds = %41
  %49 = load i8, ptr %18, align 4, !tbaa !3
  %50 = icmp eq i8 %45, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %48, %46
  %52 = icmp eq ptr %21, %42
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  store i8 %45, ptr %21, align 1, !tbaa !24
  br label %54

54:                                               ; preds = %53, %51
  %55 = getelementptr inbounds i8, ptr %42, i64 1
  %56 = getelementptr inbounds i8, ptr %21, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !24
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %19, !llvm.loop !32

59:                                               ; preds = %46, %48
  %60 = phi i8 [ %34, %46 ], [ %45, %48 ]
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54, %2, %59
  %63 = phi ptr [ %42, %59 ], [ %13, %2 ], [ %55, %54 ]
  %64 = icmp eq ptr %63, %6
  br i1 %64, label %81, label %79

65:                                               ; preds = %59
  store i8 0, ptr %21, align 1, !tbaa !24
  br i1 %10, label %77, label %66

66:                                               ; preds = %65, %71
  %67 = phi ptr [ %68, %71 ], [ %42, %65 ]
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !24
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i8, ptr %18, align 4, !tbaa !3
  %73 = icmp eq i8 %69, %72
  br i1 %73, label %74, label %66, !llvm.loop !33

74:                                               ; preds = %71, %66
  %75 = getelementptr inbounds i8, ptr %67, i64 2
  %76 = select i1 %70, ptr %68, ptr %75
  br label %79

77:                                               ; preds = %65
  %78 = getelementptr inbounds i8, ptr %42, i64 1
  br label %79

79:                                               ; preds = %62, %74, %77
  %80 = phi ptr [ %78, %77 ], [ %76, %74 ], [ %63, %62 ]
  store ptr %80, ptr %3, align 8, !tbaa !23
  br label %81

81:                                               ; preds = %79, %62
  %82 = phi ptr [ null, %62 ], [ %6, %79 ]
  ret ptr %82
}

; Function Attrs: nounwind
declare dso_local i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 16.0.6 (Fedora 16.0.6-4.fc38)"}
!3 = !{!4, !6, i64 92}
!4 = !{!"CsvHandle_", !5, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !5, i64 80, !9, i64 88, !6, i64 92, !6, i64 93, !6, i64 94}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!4, !6, i64 93}
!11 = !{!4, !6, i64 94}
!12 = !{!4, !8, i64 32}
!13 = !{!4, !9, i64 88}
!14 = !{!15, !8, i64 48}
!15 = !{!"stat", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !16, i64 72, !16, i64 88, !16, i64 104, !6, i64 120}
!16 = !{!"timespec", !8, i64 0, !8, i64 8}
!17 = !{!4, !8, i64 40}
!18 = !{!4, !5, i64 0}
!19 = !{!4, !5, i64 80}
!20 = !{!4, !8, i64 8}
!21 = !{!4, !8, i64 16}
!22 = !{!4, !8, i64 48}
!23 = !{!4, !5, i64 24}
!24 = !{!6, !6, i64 0}
!25 = !{!4, !8, i64 72}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!4, !8, i64 64}
!30 = !{!4, !8, i64 56}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
