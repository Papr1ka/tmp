; ModuleID = './nanojpeg.c'
source_filename = "./nanojpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct._nj_ctx = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct._nj_cmp], i32, i32, [4 x [64 x i8]], [4 x [65536 x %struct._nj_code]], i32, i32, [64 x i32], i32, ptr }
%struct._nj_cmp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct._nj_code = type { i8, i8 }

@nj = internal global %struct._nj_ctx zeroinitializer, align 8
@njDecodeDHT.counts = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@njZZ = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @njInit() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @njDone() local_unnamed_addr #2 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #12
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !tbaa !3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #12
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !tbaa !3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #12
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @njDecode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %4) #12
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !tbaa !3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !tbaa !3
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #12
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %16) #12
  br label %19

19:                                               ; preds = %15, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false)
  store ptr %0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %20 = and i32 %1, 2147483647
  store i32 %20, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %1655, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %0, align 1, !tbaa !13
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = icmp eq i8 %25, -40
  %27 = icmp eq i8 %23, -1
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %1655

29:                                               ; preds = %22
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %30, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %31 = add nsw i32 %20, -2
  store i32 %31, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 -2, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  br label %32

32:                                               ; preds = %1111, %29
  %33 = phi i32 [ 0, %29 ], [ %1112, %1111 ]
  %34 = phi i32 [ 0, %29 ], [ %1113, %1111 ]
  %35 = phi i32 [ 0, %29 ], [ %1114, %1111 ]
  %36 = phi i32 [ 0, %29 ], [ %1115, %1111 ]
  %37 = phi i32 [ 0, %29 ], [ %1116, %1111 ]
  %38 = phi i32 [ 0, %29 ], [ %1117, %1111 ]
  switch i32 %38, label %1655 [
    i32 0, label %39
    i32 6, label %1118
  ]

39:                                               ; preds = %32
  %40 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %1655, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %44 = ptrtoint ptr %43 to i64
  %45 = load i8, ptr %43, align 1, !tbaa !13
  %46 = icmp eq i8 %45, -1
  br i1 %46, label %47, label %1655

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %43, i64 2
  store ptr %48, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %49 = add nsw i32 %40, -2
  store i32 %49, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %50 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %51 = add nsw i32 %50, -2
  store i32 %51, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %52 = getelementptr inbounds i8, ptr %43, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !13
  switch i8 %53, label %1076 [
    i8 -64, label %54
    i8 -60, label %235
    i8 -37, label %422
    i8 -35, label %519
    i8 -38, label %550
    i8 -2, label %1044
  ]

54:                                               ; preds = %47
  %55 = icmp ult i32 %49, 2
  br i1 %55, label %233, label %56

56:                                               ; preds = %54
  %57 = load i8, ptr %48, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr inbounds i8, ptr %43, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  store i32 %63, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %64 = icmp ult i32 %49, %63
  br i1 %64, label %233, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %66, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %67 = add nsw i32 %40, -4
  store i32 %67, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %68 = add nsw i32 %63, -2
  store i32 %68, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %69 = icmp eq i32 %33, 0
  br i1 %69, label %70, label %1111

70:                                               ; preds = %65
  %71 = icmp ult i32 %63, 11
  br i1 %71, label %233, label %72

72:                                               ; preds = %70
  %73 = load i8, ptr %66, align 1, !tbaa !13
  %74 = icmp eq i8 %73, 8
  br i1 %74, label %75, label %233

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %43, i64 5
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = getelementptr inbounds i8, ptr %43, i64 6
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  store i32 %83, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %84 = getelementptr inbounds i8, ptr %43, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i16
  %87 = shl nuw i16 %86, 8
  %88 = getelementptr inbounds i8, ptr %43, i64 8
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = zext i8 %89 to i16
  %91 = or i16 %87, %90
  %92 = zext i16 %91 to i32
  store i32 %92, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %93 = icmp ne i16 %91, 0
  %94 = icmp ne i32 %83, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %233

96:                                               ; preds = %75
  %97 = getelementptr inbounds i8, ptr %43, i64 9
  %98 = load i8, ptr %97, align 1, !tbaa !13
  %99 = zext i8 %98 to i32
  store i32 %99, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %100 = getelementptr inbounds i8, ptr %43, i64 10
  store ptr %100, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %101 = add nsw i32 %40, -10
  store i32 %101, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %102 = add nsw i32 %63, -8
  store i32 %102, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %103 = icmp ult i32 %49, 8
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %105

105:                                              ; preds = %104, %96
  %106 = phi i32 [ 5, %104 ], [ 0, %96 ]
  switch i8 %98, label %233 [
    i8 1, label %107
    i8 3, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = mul nuw nsw i32 %99, 3
  %109 = icmp ult i32 %102, %108
  br i1 %109, label %233, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 12), align 8, !tbaa !19
  br label %112

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
  %123 = load i8, ptr %119, align 1, !tbaa !13
  %124 = zext i8 %123 to i32
  store i32 %124, ptr %115, align 8, !tbaa !20
  %125 = getelementptr inbounds i8, ptr %119, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !13
  %127 = lshr i8 %126, 4
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 0, i32 1
  store i32 %128, ptr %129, align 4, !tbaa !21
  %130 = icmp ult i8 %126, 16
  br i1 %130, label %233, label %131

131:                                              ; preds = %112
  %132 = add nuw nsw i32 %128, 15
  %133 = and i32 %132, %128
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %233

135:                                              ; preds = %131
  %136 = load i8, ptr %125, align 1, !tbaa !13
  %137 = and i8 %136, 15
  %138 = zext i8 %137 to i32
  %139 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 0, i32 2
  store i32 %138, ptr %139, align 8, !tbaa !22
  %140 = icmp eq i8 %137, 0
  br i1 %140, label %233, label %141

141:                                              ; preds = %135
  %142 = add nuw nsw i32 %138, 15
  %143 = and i32 %142, %138
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %233

145:                                              ; preds = %141
  %146 = getelementptr inbounds i8, ptr %119, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !13
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 0, i32 6
  store i32 %148, ptr %149, align 8, !tbaa !23
  %150 = icmp ult i8 %147, 4
  br i1 %150, label %151, label %233

151:                                              ; preds = %145
  %152 = getelementptr inbounds i8, ptr %119, i64 3
  store ptr %152, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %153 = add nsw i32 %120, -3
  store i32 %153, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %154 = add nsw i32 %121, -3
  store i32 %154, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %155 = icmp slt i32 %120, 3
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %157

157:                                              ; preds = %156, %151
  %158 = phi i32 [ 5, %156 ], [ %113, %151 ]
  %159 = phi i32 [ 5, %156 ], [ %114, %151 ]
  %160 = shl nuw i32 1, %148
  %161 = or i32 %160, %122
  store i32 %161, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 12), align 8, !tbaa !19
  %162 = call i32 @llvm.smax.i32(i32 %117, i32 %128)
  %163 = call i32 @llvm.smax.i32(i32 %116, i32 %138)
  %164 = add nuw nsw i32 %118, 1
  %165 = getelementptr inbounds %struct._nj_cmp, ptr %115, i64 1
  %166 = icmp eq i32 %164, %99
  br i1 %166, label %167, label %112, !llvm.loop !24

167:                                              ; preds = %157
  %168 = icmp eq i8 %98, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 2), align 8, !tbaa !22
  store i32 1, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 1), align 4, !tbaa !21
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i32 [ 1, %169 ], [ %162, %167 ]
  %172 = phi i32 [ 1, %169 ], [ %163, %167 ]
  %173 = shl i32 %171, 3
  store i32 %173, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 8), align 8, !tbaa !26
  %174 = shl i32 %172, 3
  store i32 %174, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 9), align 4, !tbaa !27
  %175 = add nsw i32 %92, -1
  %176 = add i32 %175, %173
  %177 = sdiv i32 %176, %173
  store i32 %177, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 6), align 8, !tbaa !28
  %178 = add nsw i32 %83, -1
  %179 = add i32 %178, %174
  %180 = sdiv i32 %179, %174
  store i32 %180, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 7), align 4, !tbaa !29
  %181 = add nsw i32 %171, -1
  %182 = add nsw i32 %172, -1
  %183 = shl i32 %177, 3
  %184 = shl i32 %180, 3
  br label %185

185:                                              ; preds = %216, %170
  %186 = phi ptr [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %170 ], [ %218, %216 ]
  %187 = phi i32 [ 0, %170 ], [ %217, %216 ]
  %188 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !21
  %190 = mul nsw i32 %189, %92
  %191 = add i32 %181, %190
  %192 = sdiv i32 %191, %171
  %193 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 3
  store i32 %192, ptr %193, align 4, !tbaa !30
  %194 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 2
  %195 = load i32, ptr %194, align 8, !tbaa !22
  %196 = mul nsw i32 %195, %83
  %197 = add i32 %182, %196
  %198 = sdiv i32 %197, %172
  %199 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 4
  store i32 %198, ptr %199, align 8, !tbaa !31
  %200 = mul i32 %189, %183
  %201 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 5
  store i32 %200, ptr %201, align 4, !tbaa !32
  %202 = icmp sgt i32 %192, 2
  %203 = icmp eq i32 %189, %171
  %204 = select i1 %202, i1 true, i1 %203
  br i1 %204, label %205, label %233

205:                                              ; preds = %185
  %206 = icmp sgt i32 %198, 2
  %207 = icmp eq i32 %195, %172
  %208 = select i1 %206, i1 true, i1 %207
  br i1 %208, label %209, label %233

209:                                              ; preds = %205
  %210 = mul i32 %184, %200
  %211 = mul i32 %210, %195
  %212 = sext i32 %211 to i64
  %213 = call noalias ptr @malloc(i64 noundef %212) #13
  %214 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 0, i32 10
  store ptr %213, ptr %214, align 8, !tbaa !3
  %215 = icmp eq ptr %213, null
  br i1 %215, label %233, label %216

216:                                              ; preds = %209
  %217 = add nuw nsw i32 %187, 1
  %218 = getelementptr inbounds %struct._nj_cmp, ptr %186, i64 1
  %219 = icmp eq i32 %217, %99
  br i1 %219, label %220, label %185, !llvm.loop !33

220:                                              ; preds = %216
  %221 = icmp eq i8 %98, 3
  br i1 %221, label %222, label %228

222:                                              ; preds = %220
  %223 = mul nuw nsw i32 %83, 3
  %224 = mul i32 %223, %92
  %225 = zext i32 %224 to i64
  %226 = call noalias ptr @malloc(i64 noundef %225) #13
  store ptr %226, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %222, %220
  %229 = sext i32 %154 to i64
  %230 = getelementptr inbounds i8, ptr %152, i64 %229
  store ptr %230, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %231 = sub nsw i32 %153, %154
  store i32 %231, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %1111

233:                                              ; preds = %145, %141, %135, %131, %112, %209, %205, %185, %228, %222, %107, %105, %75, %72, %70, %56, %54
  %234 = phi i32 [ 5, %54 ], [ 5, %56 ], [ 5, %70 ], [ 2, %72 ], [ 5, %75 ], [ 2, %105 ], [ 5, %107 ], [ 3, %222 ], [ 5, %228 ], [ 3, %209 ], [ 2, %185 ], [ 2, %205 ], [ 5, %145 ], [ 2, %141 ], [ 5, %135 ], [ 2, %131 ], [ 5, %112 ]
  store i32 %234, ptr @nj, align 8, !tbaa !18
  br label %1111

235:                                              ; preds = %47
  %236 = icmp ult i32 %49, 2
  br i1 %236, label %420, label %237

237:                                              ; preds = %235
  %238 = load i8, ptr %48, align 1, !tbaa !13
  %239 = zext i8 %238 to i32
  %240 = shl nuw nsw i32 %239, 8
  %241 = getelementptr inbounds i8, ptr %43, i64 3
  %242 = load i8, ptr %241, align 1, !tbaa !13
  %243 = zext i8 %242 to i32
  %244 = or i32 %240, %243
  store i32 %244, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %245 = icmp ult i32 %49, %244
  br i1 %245, label %420, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %247, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %248 = add nsw i32 %40, -4
  store i32 %248, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %249 = add nsw i32 %244, -2
  store i32 %249, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %250 = icmp eq i32 %34, 0
  br i1 %250, label %251, label %1111

251:                                              ; preds = %246
  %252 = icmp ugt i32 %244, 18
  br i1 %252, label %255, label %414

253:                                              ; preds = %298, %401, %285
  %254 = icmp sgt i32 %396, 16
  br i1 %254, label %255, label %414

255:                                              ; preds = %251, %253
  %256 = phi i32 [ %391, %253 ], [ %33, %251 ]
  %257 = phi i32 [ %392, %253 ], [ 0, %251 ]
  %258 = phi i32 [ %393, %253 ], [ 0, %251 ]
  %259 = phi i32 [ %396, %253 ], [ %249, %251 ]
  %260 = phi ptr [ %395, %253 ], [ %247, %251 ]
  %261 = phi i32 [ %394, %253 ], [ %248, %251 ]
  %262 = load i8, ptr %260, align 1, !tbaa !13
  %263 = zext i8 %262 to i32
  %264 = and i32 %263, 236
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %420

266:                                              ; preds = %255
  %267 = and i32 %263, 2
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %420

269:                                              ; preds = %266
  %270 = lshr i32 %263, 3
  %271 = or i32 %270, %263
  %272 = getelementptr i8, ptr %260, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @njDecodeDHT.counts, ptr noundef nonnull align 1 dereferenceable(16) %272, i64 16, i1 false), !tbaa !13
  %273 = and i32 %271, 3
  %274 = getelementptr inbounds i8, ptr %260, i64 17
  store ptr %274, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %275 = add nsw i32 %261, -17
  store i32 %275, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %276 = add nsw i32 %259, -17
  store i32 %276, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %277 = icmp slt i32 %261, 17
  br i1 %277, label %278, label %279

278:                                              ; preds = %269
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %279

279:                                              ; preds = %278, %269
  %280 = phi i32 [ 5, %278 ], [ %256, %269 ]
  %281 = phi i32 [ 5, %278 ], [ %257, %269 ]
  %282 = phi i32 [ 5, %278 ], [ %258, %269 ]
  %283 = zext i32 %273 to i64
  %284 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %283
  br label %302

285:                                              ; preds = %390
  %286 = icmp eq i32 %397, 0
  br i1 %286, label %253, label %287, !llvm.loop !34

287:                                              ; preds = %285
  %288 = and i32 %397, 7
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %287, %290
  %291 = phi ptr [ %295, %290 ], [ %398, %287 ]
  %292 = phi i32 [ %294, %290 ], [ %397, %287 ]
  %293 = phi i32 [ %296, %290 ], [ 0, %287 ]
  %294 = add nsw i32 %292, -1
  store i8 0, ptr %291, align 1, !tbaa !35
  %295 = getelementptr inbounds %struct._nj_code, ptr %291, i64 1
  %296 = add i32 %293, 1
  %297 = icmp eq i32 %296, %288
  br i1 %297, label %298, label %290, !llvm.loop !37

298:                                              ; preds = %290, %287
  %299 = phi ptr [ %398, %287 ], [ %295, %290 ]
  %300 = phi i32 [ %397, %287 ], [ %294, %290 ]
  %301 = icmp ult i32 %397, 8
  br i1 %301, label %253, label %401

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
  %313 = lshr i32 %308, 1
  %314 = add nsw i64 %306, -1
  %315 = getelementptr inbounds [16 x i8], ptr @njDecodeDHT.counts, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !13
  %317 = zext i8 %316 to i32
  %318 = icmp eq i8 %316, 0
  br i1 %318, label %390, label %319

319:                                              ; preds = %302
  %320 = icmp slt i32 %310, %317
  br i1 %320, label %420, label %321

321:                                              ; preds = %319
  %322 = trunc i64 %306 to i32
  %323 = sub i32 16, %322
  %324 = shl nuw nsw i32 %317, %323
  %325 = sub nsw i32 %309, %324
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %420, label %327

327:                                              ; preds = %321
  %328 = trunc i64 %306 to i8
  %329 = zext i8 %316 to i64
  %330 = add nsw i32 %313, -1
  %331 = zext i32 %330 to i64
  %332 = add nuw nsw i64 %331, 1
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
  br label %343

343:                                              ; preds = %380, %327
  %344 = phi i64 [ 0, %327 ], [ %382, %380 ]
  %345 = phi ptr [ %307, %327 ], [ %381, %380 ]
  %346 = getelementptr inbounds i8, ptr %311, i64 %344
  %347 = load i8, ptr %346, align 1, !tbaa !13
  br i1 %333, label %370, label %348

348:                                              ; preds = %343
  %349 = getelementptr i8, ptr %345, i64 %335
  %350 = insertelement <8 x i8> poison, i8 %347, i64 0
  %351 = shufflevector <8 x i8> %350, <8 x i8> poison, <8 x i32> zeroinitializer
  %352 = insertelement <8 x i8> poison, i8 %347, i64 0
  %353 = shufflevector <8 x i8> %352, <8 x i8> poison, <8 x i32> zeroinitializer
  %354 = shufflevector <8 x i8> %339, <8 x i8> %351, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %355 = shufflevector <8 x i8> %341, <8 x i8> %353, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  br label %356

356:                                              ; preds = %356, %348
  %357 = phi i64 [ 0, %348 ], [ %367, %356 ]
  %358 = shl i64 %357, 1
  %359 = getelementptr i8, ptr %345, i64 %358
  %360 = shl i64 %357, 1
  %361 = or i64 %360, 16
  %362 = getelementptr i8, ptr %345, i64 %361
  %363 = getelementptr inbounds %struct._nj_code, ptr %359, i64 0, i32 1
  %364 = getelementptr inbounds %struct._nj_code, ptr %362, i64 0, i32 1
  %365 = getelementptr inbounds i8, ptr %363, i64 -1
  %366 = getelementptr inbounds i8, ptr %364, i64 -1
  store <16 x i8> %354, ptr %365, align 1, !tbaa !13
  store <16 x i8> %355, ptr %366, align 1, !tbaa !13
  %367 = add nuw i64 %357, 16
  %368 = icmp eq i64 %367, %334
  br i1 %368, label %369, label %356, !llvm.loop !39

369:                                              ; preds = %356
  br i1 %342, label %380, label %370

370:                                              ; preds = %343, %369
  %371 = phi ptr [ %345, %343 ], [ %349, %369 ]
  %372 = phi i32 [ %313, %343 ], [ %337, %369 ]
  br label %373

373:                                              ; preds = %370, %373
  %374 = phi ptr [ %377, %373 ], [ %371, %370 ]
  %375 = phi i32 [ %378, %373 ], [ %372, %370 ]
  store i8 %328, ptr %374, align 1, !tbaa !35
  %376 = getelementptr inbounds %struct._nj_code, ptr %374, i64 0, i32 1
  store i8 %347, ptr %376, align 1, !tbaa !42
  %377 = getelementptr inbounds %struct._nj_code, ptr %374, i64 1
  %378 = add nsw i32 %375, -1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %373, !llvm.loop !43

380:                                              ; preds = %373, %369
  %381 = phi ptr [ %349, %369 ], [ %377, %373 ]
  %382 = add nuw nsw i64 %344, 1
  %383 = icmp eq i64 %382, %329
  br i1 %383, label %384, label %343, !llvm.loop !44

384:                                              ; preds = %380
  %385 = getelementptr inbounds i8, ptr %311, i64 %329
  store ptr %385, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %386 = sub nsw i32 %312, %317
  store i32 %386, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %387 = sub nsw i32 %310, %317
  store i32 %387, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %388 = icmp slt i32 %386, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %390

390:                                              ; preds = %389, %384, %302
  %391 = phi i32 [ %303, %302 ], [ %303, %384 ], [ 5, %389 ]
  %392 = phi i32 [ %304, %302 ], [ %304, %384 ], [ 5, %389 ]
  %393 = phi i32 [ %305, %302 ], [ %305, %384 ], [ 5, %389 ]
  %394 = phi i32 [ %312, %302 ], [ %386, %384 ], [ %386, %389 ]
  %395 = phi ptr [ %311, %302 ], [ %385, %384 ], [ %385, %389 ]
  %396 = phi i32 [ %310, %302 ], [ %387, %384 ], [ %387, %389 ]
  %397 = phi i32 [ %309, %302 ], [ %325, %384 ], [ %325, %389 ]
  %398 = phi ptr [ %307, %302 ], [ %381, %384 ], [ %381, %389 ]
  %399 = add nuw nsw i64 %306, 1
  %400 = icmp eq i64 %399, 17
  br i1 %400, label %285, label %302, !llvm.loop !45

401:                                              ; preds = %298, %401
  %402 = phi ptr [ %412, %401 ], [ %299, %298 ]
  %403 = phi i32 [ %411, %401 ], [ %300, %298 ]
  store i8 0, ptr %402, align 1, !tbaa !35
  %404 = getelementptr inbounds %struct._nj_code, ptr %402, i64 1
  store i8 0, ptr %404, align 1, !tbaa !35
  %405 = getelementptr inbounds %struct._nj_code, ptr %402, i64 2
  store i8 0, ptr %405, align 1, !tbaa !35
  %406 = getelementptr inbounds %struct._nj_code, ptr %402, i64 3
  store i8 0, ptr %406, align 1, !tbaa !35
  %407 = getelementptr inbounds %struct._nj_code, ptr %402, i64 4
  store i8 0, ptr %407, align 1, !tbaa !35
  %408 = getelementptr inbounds %struct._nj_code, ptr %402, i64 5
  store i8 0, ptr %408, align 1, !tbaa !35
  %409 = getelementptr inbounds %struct._nj_code, ptr %402, i64 6
  store i8 0, ptr %409, align 1, !tbaa !35
  %410 = getelementptr inbounds %struct._nj_code, ptr %402, i64 7
  %411 = add nsw i32 %403, -8
  store i8 0, ptr %410, align 1, !tbaa !35
  %412 = getelementptr inbounds %struct._nj_code, ptr %402, i64 8
  %413 = icmp eq i32 %411, 0
  br i1 %413, label %253, label %401, !llvm.loop !46

414:                                              ; preds = %253, %251
  %415 = phi i32 [ %33, %251 ], [ %391, %253 ]
  %416 = phi i32 [ 0, %251 ], [ %392, %253 ]
  %417 = phi i32 [ 0, %251 ], [ %393, %253 ]
  %418 = phi i32 [ %249, %251 ], [ %396, %253 ]
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %1111, label %420

420:                                              ; preds = %266, %255, %321, %319, %414, %237, %235
  %421 = phi i32 [ 5, %235 ], [ 5, %237 ], [ 5, %414 ], [ 5, %319 ], [ 5, %321 ], [ 2, %266 ], [ 5, %255 ]
  store i32 %421, ptr @nj, align 8, !tbaa !18
  br label %1111

422:                                              ; preds = %47
  %423 = icmp ult i32 %49, 2
  br i1 %423, label %518, label %424

424:                                              ; preds = %422
  %425 = load i8, ptr %48, align 1, !tbaa !13
  %426 = zext i8 %425 to i32
  %427 = shl nuw nsw i32 %426, 8
  %428 = getelementptr inbounds i8, ptr %43, i64 3
  %429 = load i8, ptr %428, align 1, !tbaa !13
  %430 = zext i8 %429 to i32
  %431 = or i32 %427, %430
  store i32 %431, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %432 = icmp ult i32 %49, %431
  br i1 %432, label %518, label %433

433:                                              ; preds = %424
  %434 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %434, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %435 = add nsw i32 %40, -4
  store i32 %435, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %436 = add nsw i32 %431, -2
  store i32 %436, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %437 = icmp eq i32 %35, 0
  br i1 %437, label %438, label %1111

438:                                              ; preds = %433
  %439 = icmp ugt i32 %431, 66
  br i1 %439, label %440, label %511

440:                                              ; preds = %438
  %441 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 13), align 4, !tbaa !47
  %442 = add i64 %44, 5
  br label %443

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
  %453 = load i8, ptr %450, align 1, !tbaa !13
  %454 = icmp ult i8 %453, 4
  br i1 %454, label %455, label %518

455:                                              ; preds = %443
  %456 = mul nuw nsw i64 %444, 65
  %457 = add i64 %442, %456
  %458 = zext i8 %453 to i32
  %459 = shl nuw nsw i32 1, %458
  %460 = or i32 %459, %451
  store i32 %460, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 13), align 4, !tbaa !47
  %461 = zext i8 %453 to i64
  %462 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %461
  %463 = shl nuw nsw i64 %461, 6
  %464 = add i64 %463, add (i64 ptrtoint (ptr @nj to i64), i64 208)
  %465 = sub i64 %464, %457
  %466 = icmp ult i64 %465, 16
  br i1 %466, label %479, label %467

467:                                              ; preds = %455
  %468 = getelementptr inbounds i8, ptr %450, i64 1
  %469 = load <16 x i8>, ptr %468, align 1, !tbaa !13
  store <16 x i8> %469, ptr %462, align 8, !tbaa !13
  %470 = getelementptr inbounds i8, ptr %450, i64 17
  %471 = load <16 x i8>, ptr %470, align 1, !tbaa !13
  %472 = getelementptr inbounds i8, ptr %462, i64 16
  store <16 x i8> %471, ptr %472, align 8, !tbaa !13
  %473 = getelementptr inbounds i8, ptr %450, i64 33
  %474 = load <16 x i8>, ptr %473, align 1, !tbaa !13
  %475 = getelementptr inbounds i8, ptr %462, i64 32
  store <16 x i8> %474, ptr %475, align 8, !tbaa !13
  %476 = getelementptr inbounds i8, ptr %450, i64 49
  %477 = load <16 x i8>, ptr %476, align 1, !tbaa !13
  %478 = getelementptr inbounds i8, ptr %462, i64 48
  store <16 x i8> %477, ptr %478, align 8, !tbaa !13
  br label %498

479:                                              ; preds = %455, %479
  %480 = phi i64 [ %493, %479 ], [ 0, %455 ]
  %481 = or i64 %480, 1
  %482 = getelementptr inbounds i8, ptr %450, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !13
  %484 = getelementptr inbounds i8, ptr %462, i64 %480
  store i8 %483, ptr %484, align 4, !tbaa !13
  %485 = or i64 %480, 2
  %486 = getelementptr inbounds i8, ptr %450, i64 %485
  %487 = load i8, ptr %486, align 1, !tbaa !13
  %488 = getelementptr inbounds i8, ptr %462, i64 %481
  store i8 %487, ptr %488, align 1, !tbaa !13
  %489 = or i64 %480, 3
  %490 = getelementptr inbounds i8, ptr %450, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !13
  %492 = getelementptr inbounds i8, ptr %462, i64 %485
  store i8 %491, ptr %492, align 2, !tbaa !13
  %493 = add nuw nsw i64 %480, 4
  %494 = getelementptr inbounds i8, ptr %450, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !13
  %496 = getelementptr inbounds i8, ptr %462, i64 %489
  store i8 %495, ptr %496, align 1, !tbaa !13
  %497 = icmp eq i64 %493, 64
  br i1 %497, label %498, label %479, !llvm.loop !48

498:                                              ; preds = %479, %467
  %499 = getelementptr inbounds i8, ptr %450, i64 65
  store ptr %499, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %500 = add nsw i32 %452, -65
  store i32 %500, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %501 = add nsw i32 %449, -65
  store i32 %501, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %502 = icmp slt i32 %452, 65
  br i1 %502, label %503, label %504

503:                                              ; preds = %498
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %504

504:                                              ; preds = %503, %498
  %505 = phi i32 [ 5, %503 ], [ %445, %498 ]
  %506 = phi i32 [ 5, %503 ], [ %446, %498 ]
  %507 = phi i32 [ 5, %503 ], [ %447, %498 ]
  %508 = phi i32 [ 5, %503 ], [ %448, %498 ]
  %509 = icmp sgt i32 %449, 129
  %510 = add i64 %444, 1
  br i1 %509, label %443, label %511, !llvm.loop !49

511:                                              ; preds = %504, %438
  %512 = phi i32 [ %33, %438 ], [ %505, %504 ]
  %513 = phi i32 [ %34, %438 ], [ %506, %504 ]
  %514 = phi i32 [ 0, %438 ], [ %507, %504 ]
  %515 = phi i32 [ 0, %438 ], [ %508, %504 ]
  %516 = phi i32 [ %436, %438 ], [ %501, %504 ]
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %1111, label %518

518:                                              ; preds = %443, %511, %424, %422
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

519:                                              ; preds = %47
  %520 = icmp ult i32 %49, 2
  br i1 %520, label %549, label %521

521:                                              ; preds = %519
  %522 = load i8, ptr %48, align 1, !tbaa !13
  %523 = zext i8 %522 to i32
  %524 = shl nuw nsw i32 %523, 8
  %525 = getelementptr inbounds i8, ptr %43, i64 3
  %526 = load i8, ptr %525, align 1, !tbaa !13
  %527 = zext i8 %526 to i32
  %528 = or i32 %524, %527
  store i32 %528, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %529 = icmp ult i32 %49, %528
  br i1 %529, label %549, label %530

530:                                              ; preds = %521
  %531 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %531, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %532 = add nsw i32 %40, -4
  store i32 %532, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %533 = add nsw i32 %528, -2
  store i32 %533, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %534 = icmp eq i32 %36, 0
  br i1 %534, label %535, label %1111

535:                                              ; preds = %530
  %536 = icmp ult i32 %528, 4
  br i1 %536, label %549, label %537

537:                                              ; preds = %535
  %538 = load i8, ptr %531, align 1, !tbaa !13
  %539 = zext i8 %538 to i32
  %540 = shl nuw nsw i32 %539, 8
  %541 = getelementptr inbounds i8, ptr %43, i64 5
  %542 = load i8, ptr %541, align 1, !tbaa !13
  %543 = zext i8 %542 to i32
  %544 = or i32 %540, %543
  store i32 %544, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  %545 = zext i32 %533 to i64
  %546 = getelementptr inbounds i8, ptr %531, i64 %545
  store ptr %546, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %547 = sub nsw i32 %532, %533
  store i32 %547, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %1111

549:                                              ; preds = %537, %535, %521, %519
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

550:                                              ; preds = %47
  %551 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  %552 = icmp ult i32 %49, 2
  br i1 %552, label %553, label %554

553:                                              ; preds = %550
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

554:                                              ; preds = %550
  %555 = load i8, ptr %48, align 1, !tbaa !13
  %556 = zext i8 %555 to i32
  %557 = shl nuw nsw i32 %556, 8
  %558 = getelementptr inbounds i8, ptr %43, i64 3
  %559 = load i8, ptr %558, align 1, !tbaa !13
  %560 = zext i8 %559 to i32
  %561 = or i32 %557, %560
  store i32 %561, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %562 = icmp ult i32 %49, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %554
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

564:                                              ; preds = %554
  %565 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %565, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %566 = add nsw i32 %40, -4
  store i32 %566, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %567 = add nsw i32 %561, -2
  store i32 %567, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %568 = icmp eq i32 %37, 0
  br i1 %568, label %569, label %1111

569:                                              ; preds = %564
  %570 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %571 = shl nsw i32 %570, 1
  %572 = add nsw i32 %571, 4
  %573 = icmp slt i32 %567, %572
  br i1 %573, label %574, label %575

574:                                              ; preds = %569
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

575:                                              ; preds = %569
  %576 = load i8, ptr %565, align 1, !tbaa !13
  %577 = zext i8 %576 to i32
  %578 = icmp eq i32 %570, %577
  br i1 %578, label %580, label %579

579:                                              ; preds = %575
  store i32 2, ptr @nj, align 8, !tbaa !18
  br label %1111

580:                                              ; preds = %575
  %581 = getelementptr inbounds i8, ptr %43, i64 5
  store ptr %581, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %582 = add nsw i32 %40, -5
  store i32 %582, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %583 = add nsw i32 %561, -3
  store i32 %583, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %584 = icmp ult i32 %49, 3
  br i1 %584, label %585, label %586

585:                                              ; preds = %580
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %586

586:                                              ; preds = %585, %580
  %587 = icmp sgt i32 %570, 0
  br i1 %587, label %588, label %623

588:                                              ; preds = %586, %619
  %589 = phi ptr [ %621, %619 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %586 ]
  %590 = phi i32 [ %620, %619 ], [ 0, %586 ]
  %591 = phi ptr [ %614, %619 ], [ %581, %586 ]
  %592 = phi i32 [ %615, %619 ], [ %582, %586 ]
  %593 = phi i32 [ %616, %619 ], [ %583, %586 ]
  %594 = load i8, ptr %591, align 1, !tbaa !13
  %595 = zext i8 %594 to i32
  %596 = load i32, ptr %589, align 8, !tbaa !20
  %597 = icmp eq i32 %596, %595
  br i1 %597, label %599, label %598

598:                                              ; preds = %588
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

599:                                              ; preds = %588
  %600 = getelementptr inbounds i8, ptr %591, i64 1
  %601 = load i8, ptr %600, align 1, !tbaa !13
  %602 = zext i8 %601 to i32
  %603 = and i32 %602, 238
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %606, label %605

605:                                              ; preds = %599
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

606:                                              ; preds = %599
  %607 = lshr i32 %602, 4
  %608 = getelementptr inbounds %struct._nj_cmp, ptr %589, i64 0, i32 8
  store i32 %607, ptr %608, align 8, !tbaa !51
  %609 = load i8, ptr %600, align 1, !tbaa !13
  %610 = and i8 %609, 1
  %611 = or i8 %610, 2
  %612 = zext i8 %611 to i32
  %613 = getelementptr inbounds %struct._nj_cmp, ptr %589, i64 0, i32 7
  store i32 %612, ptr %613, align 4, !tbaa !52
  %614 = getelementptr inbounds i8, ptr %591, i64 2
  store ptr %614, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %615 = add nsw i32 %592, -2
  store i32 %615, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %616 = add nsw i32 %593, -2
  store i32 %616, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %617 = icmp slt i32 %592, 2
  br i1 %617, label %618, label %619

618:                                              ; preds = %606
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %619

619:                                              ; preds = %618, %606
  %620 = add nuw nsw i32 %590, 1
  %621 = getelementptr inbounds %struct._nj_cmp, ptr %589, i64 1
  %622 = icmp eq i32 %620, %570
  br i1 %622, label %623, label %588, !llvm.loop !53

623:                                              ; preds = %619, %586
  %624 = phi i32 [ %582, %586 ], [ %615, %619 ]
  %625 = phi i32 [ %583, %586 ], [ %616, %619 ]
  %626 = phi ptr [ %581, %586 ], [ %614, %619 ]
  %627 = load i8, ptr %626, align 1, !tbaa !13
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %629, label %637

629:                                              ; preds = %623
  %630 = getelementptr inbounds i8, ptr %626, i64 1
  %631 = load i8, ptr %630, align 1, !tbaa !13
  %632 = icmp eq i8 %631, 63
  br i1 %632, label %633, label %637

633:                                              ; preds = %629
  %634 = getelementptr inbounds i8, ptr %626, i64 2
  %635 = load i8, ptr %634, align 1, !tbaa !13
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %638, label %637

637:                                              ; preds = %633, %629, %623
  store i32 2, ptr @nj, align 8, !tbaa !18
  br label %1111

638:                                              ; preds = %633
  %639 = sext i32 %625 to i64
  %640 = getelementptr inbounds i8, ptr %626, i64 %639
  store ptr %640, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %641 = sub nsw i32 %624, %625
  store i32 %641, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %644

643:                                              ; preds = %638
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %644

644:                                              ; preds = %643, %638
  br label %645

645:                                              ; preds = %1038, %644
  %646 = phi i32 [ %1039, %1038 ], [ %570, %644 ]
  %647 = phi i32 [ %1021, %1038 ], [ 0, %644 ]
  %648 = phi i32 [ %1022, %1038 ], [ 0, %644 ]
  %649 = phi i32 [ %1041, %1038 ], [ %551, %644 ]
  %650 = phi i32 [ %1042, %1038 ], [ 0, %644 ]
  br label %651

651:                                              ; preds = %645, %1025
  %652 = phi i32 [ %1011, %1025 ], [ %646, %645 ]
  %653 = phi i32 [ %1012, %1025 ], [ %646, %645 ]
  %654 = phi i32 [ %1021, %1025 ], [ %647, %645 ]
  %655 = phi i32 [ %1022, %1025 ], [ %648, %645 ]
  %656 = phi i32 [ %1026, %1025 ], [ %649, %645 ]
  br label %657

657:                                              ; preds = %651, %1020
  %658 = phi i32 [ %1011, %1020 ], [ %652, %651 ]
  %659 = phi i32 [ %1012, %1020 ], [ %653, %651 ]
  %660 = phi i32 [ %1021, %1020 ], [ %654, %651 ]
  %661 = phi i32 [ %1022, %1020 ], [ %655, %651 ]
  %662 = icmp sgt i32 %659, 0
  br i1 %662, label %663, label %1010

663:                                              ; preds = %657, %1005
  %664 = phi i32 [ %1006, %1005 ], [ %658, %657 ]
  %665 = phi ptr [ %1008, %1005 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %657 ]
  %666 = phi i32 [ %1007, %1005 ], [ 0, %657 ]
  %667 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 2
  %668 = load i32, ptr %667, align 8, !tbaa !22
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %1005

670:                                              ; preds = %663
  %671 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 1
  %672 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 10
  %673 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 5
  %674 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 8
  %675 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 9
  %676 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 6
  %677 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 0, i32 7
  %678 = load i32, ptr %671, align 4, !tbaa !21
  br label %679

679:                                              ; preds = %998, %670
  %680 = phi i32 [ %668, %670 ], [ %999, %998 ]
  %681 = phi i32 [ %678, %670 ], [ %1000, %998 ]
  %682 = phi i32 [ 0, %670 ], [ %1001, %998 ]
  %683 = icmp sgt i32 %681, 0
  br i1 %683, label %688, label %998

684:                                              ; preds = %993
  %685 = add nuw nsw i32 %690, 1
  %686 = load i32, ptr %671, align 4, !tbaa !21
  %687 = icmp slt i32 %685, %686
  br i1 %687, label %688, label %996, !llvm.loop !54

688:                                              ; preds = %679, %684
  %689 = phi i32 [ %686, %684 ], [ %681, %679 ]
  %690 = phi i32 [ %685, %684 ], [ 0, %679 ]
  %691 = load ptr, ptr %672, align 8, !tbaa !3
  %692 = load i32, ptr %667, align 8, !tbaa !22
  %693 = mul nsw i32 %692, %661
  %694 = add nsw i32 %693, %682
  %695 = load i32, ptr %673, align 4, !tbaa !32
  %696 = mul nsw i32 %694, %695
  %697 = mul nsw i32 %689, %660
  %698 = add i32 %697, %690
  %699 = add i32 %698, %696
  %700 = shl i32 %699, 3
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, ptr %691, i64 %701
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 18), i8 0, i64 256, i1 false)
  %703 = load i32, ptr %674, align 8, !tbaa !51
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %704
  %706 = call fastcc i32 @njGetVLC(ptr noundef nonnull %705, ptr noundef null)
  %707 = load i32, ptr %675, align 4, !tbaa !55
  %708 = add nsw i32 %707, %706
  store i32 %708, ptr %675, align 4, !tbaa !55
  %709 = load i32, ptr %676, align 8, !tbaa !23
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %710
  %712 = load i8, ptr %711, align 8, !tbaa !13
  %713 = zext i8 %712 to i32
  %714 = mul nsw i32 %708, %713
  store i32 %714, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 18), align 8, !tbaa !56
  br label %715

715:                                              ; preds = %734, %688
  %716 = phi i32 [ 0, %688 ], [ %732, %734 ]
  %717 = load i32, ptr %677, align 4, !tbaa !52
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %718
  %720 = call fastcc i32 @njGetVLC(ptr noundef nonnull %719, ptr noundef nonnull %3)
  %721 = load i8, ptr %3, align 1, !tbaa !13
  %722 = icmp eq i8 %721, 0
  br i1 %722, label %747, label %723

723:                                              ; preds = %715
  %724 = zext i8 %721 to i32
  %725 = and i32 %724, 15
  %726 = icmp eq i32 %725, 0
  %727 = icmp ne i8 %721, -16
  %728 = select i1 %726, i1 %727, i1 false
  br i1 %728, label %992, label %729

729:                                              ; preds = %723
  %730 = lshr i32 %724, 4
  %731 = add nuw nsw i32 %716, 1
  %732 = add nuw nsw i32 %731, %730
  %733 = icmp ugt i32 %732, 63
  br i1 %733, label %992, label %734

734:                                              ; preds = %729
  %735 = load i32, ptr %676, align 8, !tbaa !23
  %736 = sext i32 %735 to i64
  %737 = zext i32 %732 to i64
  %738 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %736, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !13
  %740 = zext i8 %739 to i32
  %741 = mul nsw i32 %720, %740
  %742 = getelementptr inbounds [64 x i8], ptr @njZZ, i64 0, i64 %737
  %743 = load i8, ptr %742, align 1, !tbaa !13
  %744 = sext i8 %743 to i64
  %745 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %744
  store i32 %741, ptr %745, align 4, !tbaa !56
  %746 = icmp eq i32 %732, 63
  br i1 %746, label %747, label %715, !llvm.loop !57

747:                                              ; preds = %734, %715
  br label %748

748:                                              ; preds = %747, %831
  %749 = phi i64 [ %840, %831 ], [ 0, %747 ]
  %750 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %749
  %751 = getelementptr inbounds i32, ptr %750, i64 4
  %752 = load i32, ptr %751, align 8, !tbaa !56
  %753 = shl i32 %752, 11
  %754 = getelementptr inbounds i32, ptr %750, i64 6
  %755 = load i32, ptr %754, align 8, !tbaa !56
  %756 = or i32 %753, %755
  %757 = getelementptr inbounds i32, ptr %750, i64 2
  %758 = load i32, ptr %757, align 8, !tbaa !56
  %759 = or i32 %756, %758
  %760 = getelementptr inbounds i32, ptr %750, i64 1
  %761 = load i32, ptr %760, align 4, !tbaa !56
  %762 = or i32 %759, %761
  %763 = getelementptr inbounds i32, ptr %750, i64 7
  %764 = load i32, ptr %763, align 4, !tbaa !56
  %765 = or i32 %762, %764
  %766 = getelementptr inbounds i32, ptr %750, i64 5
  %767 = load i32, ptr %766, align 4, !tbaa !56
  %768 = or i32 %765, %767
  %769 = getelementptr inbounds i32, ptr %750, i64 3
  %770 = load i32, ptr %769, align 4, !tbaa !56
  %771 = or i32 %768, %770
  %772 = icmp eq i32 %771, 0
  %773 = load i32, ptr %750, align 8, !tbaa !56
  br i1 %772, label %774, label %776

774:                                              ; preds = %748
  %775 = shl i32 %773, 3
  br label %831

776:                                              ; preds = %748
  %777 = shl i32 %773, 11
  %778 = or i32 %777, 128
  %779 = add nsw i32 %764, %761
  %780 = mul nsw i32 %779, 565
  %781 = mul nsw i32 %761, 2276
  %782 = add nsw i32 %780, %781
  %783 = mul i32 %764, -3406
  %784 = add i32 %780, %783
  %785 = add nsw i32 %770, %767
  %786 = mul nsw i32 %785, 2408
  %787 = mul i32 %767, -799
  %788 = add i32 %786, %787
  %789 = mul i32 %770, -4017
  %790 = add i32 %786, %789
  %791 = add nsw i32 %778, %753
  %792 = sub nsw i32 %778, %753
  %793 = add nsw i32 %758, %755
  %794 = mul nsw i32 %793, 1108
  %795 = mul i32 %755, -3784
  %796 = add i32 %794, %795
  %797 = mul nsw i32 %758, 1568
  %798 = add nsw i32 %794, %797
  %799 = add nsw i32 %788, %782
  %800 = sub nsw i32 %782, %788
  %801 = add nsw i32 %790, %784
  %802 = sub nsw i32 %784, %790
  %803 = add nsw i32 %791, %798
  %804 = sub nsw i32 %791, %798
  %805 = add nsw i32 %792, %796
  %806 = sub nsw i32 %792, %796
  %807 = add nsw i32 %800, %802
  %808 = mul nsw i32 %807, 181
  %809 = add nsw i32 %808, 128
  %810 = ashr i32 %809, 8
  %811 = sub nsw i32 %800, %802
  %812 = mul nsw i32 %811, 181
  %813 = add nsw i32 %812, 128
  %814 = ashr i32 %813, 8
  %815 = add nsw i32 %803, %799
  %816 = ashr i32 %815, 8
  %817 = add nsw i32 %810, %805
  %818 = ashr i32 %817, 8
  %819 = add nsw i32 %814, %806
  %820 = ashr i32 %819, 8
  %821 = add nsw i32 %804, %801
  %822 = ashr i32 %821, 8
  %823 = sub nsw i32 %804, %801
  %824 = ashr i32 %823, 8
  %825 = sub nsw i32 %806, %814
  %826 = ashr i32 %825, 8
  %827 = sub nsw i32 %805, %810
  %828 = ashr i32 %827, 8
  %829 = sub nsw i32 %803, %799
  %830 = ashr i32 %829, 8
  br label %831

831:                                              ; preds = %776, %774
  %832 = phi i32 [ %830, %776 ], [ %775, %774 ]
  %833 = phi i32 [ %828, %776 ], [ %775, %774 ]
  %834 = phi i32 [ %826, %776 ], [ %775, %774 ]
  %835 = phi i32 [ %824, %776 ], [ %775, %774 ]
  %836 = phi i32 [ %822, %776 ], [ %775, %774 ]
  %837 = phi i32 [ %820, %776 ], [ %775, %774 ]
  %838 = phi i32 [ %818, %776 ], [ %775, %774 ]
  %839 = phi i32 [ %816, %776 ], [ %775, %774 ]
  store i32 %832, ptr %763, align 4, !tbaa !56
  store i32 %833, ptr %754, align 8
  store i32 %834, ptr %766, align 4
  store i32 %835, ptr %751, align 8
  store i32 %836, ptr %769, align 4
  store i32 %837, ptr %757, align 8
  store i32 %838, ptr %760, align 4
  store i32 %839, ptr %750, align 8
  %840 = add nuw nsw i64 %749, 8
  %841 = icmp ult i64 %749, 56
  br i1 %841, label %748, label %842, !llvm.loop !58

842:                                              ; preds = %831, %989
  %843 = phi i64 [ %990, %989 ], [ 0, %831 ]
  %844 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %843
  %845 = getelementptr inbounds i8, ptr %702, i64 %843
  %846 = load i32, ptr %673, align 4, !tbaa !32
  %847 = getelementptr inbounds i32, ptr %844, i64 32
  %848 = load i32, ptr %847, align 4, !tbaa !56
  %849 = shl i32 %848, 8
  %850 = getelementptr inbounds i32, ptr %844, i64 48
  %851 = load i32, ptr %850, align 4, !tbaa !56
  %852 = or i32 %849, %851
  %853 = getelementptr inbounds i32, ptr %844, i64 16
  %854 = load i32, ptr %853, align 4, !tbaa !56
  %855 = or i32 %852, %854
  %856 = getelementptr inbounds i32, ptr %844, i64 8
  %857 = load i32, ptr %856, align 4, !tbaa !56
  %858 = or i32 %855, %857
  %859 = getelementptr inbounds i32, ptr %844, i64 56
  %860 = load i32, ptr %859, align 4, !tbaa !56
  %861 = or i32 %858, %860
  %862 = getelementptr inbounds i32, ptr %844, i64 40
  %863 = load i32, ptr %862, align 4, !tbaa !56
  %864 = or i32 %861, %863
  %865 = getelementptr inbounds i32, ptr %844, i64 24
  %866 = load i32, ptr %865, align 4, !tbaa !56
  %867 = or i32 %864, %866
  %868 = icmp eq i32 %867, 0
  %869 = load i32, ptr %844, align 4, !tbaa !56
  br i1 %868, label %870, label %885

870:                                              ; preds = %842
  %871 = add nsw i32 %869, 32
  %872 = ashr i32 %871, 6
  %873 = call i32 @llvm.smin.i32(i32 %872, i32 127)
  %874 = call i32 @llvm.smax.i32(i32 %873, i32 -128)
  %875 = trunc i32 %874 to i8
  %876 = xor i8 %875, -128
  %877 = sext i32 %846 to i64
  store i8 %876, ptr %845, align 1, !tbaa !13
  %878 = getelementptr inbounds i8, ptr %845, i64 %877
  store i8 %876, ptr %878, align 1, !tbaa !13
  %879 = getelementptr inbounds i8, ptr %878, i64 %877
  store i8 %876, ptr %879, align 1, !tbaa !13
  %880 = getelementptr inbounds i8, ptr %879, i64 %877
  store i8 %876, ptr %880, align 1, !tbaa !13
  %881 = getelementptr inbounds i8, ptr %880, i64 %877
  store i8 %876, ptr %881, align 1, !tbaa !13
  %882 = getelementptr inbounds i8, ptr %881, i64 %877
  store i8 %876, ptr %882, align 1, !tbaa !13
  %883 = getelementptr inbounds i8, ptr %882, i64 %877
  store i8 %876, ptr %883, align 1, !tbaa !13
  %884 = getelementptr inbounds i8, ptr %883, i64 %877
  store i8 %876, ptr %884, align 1, !tbaa !13
  br label %989

885:                                              ; preds = %842
  %886 = shl i32 %869, 8
  %887 = add nsw i32 %886, 8192
  %888 = add nsw i32 %860, %857
  %889 = mul nsw i32 %888, 565
  %890 = add nsw i32 %889, 4
  %891 = mul nsw i32 %857, 2276
  %892 = add nsw i32 %890, %891
  %893 = ashr i32 %892, 3
  %894 = mul i32 %860, -3406
  %895 = add i32 %890, %894
  %896 = ashr i32 %895, 3
  %897 = add nsw i32 %866, %863
  %898 = mul nsw i32 %897, 2408
  %899 = or i32 %898, 4
  %900 = mul i32 %863, -799
  %901 = add i32 %899, %900
  %902 = ashr i32 %901, 3
  %903 = mul i32 %866, -4017
  %904 = add i32 %899, %903
  %905 = ashr i32 %904, 3
  %906 = add nsw i32 %887, %849
  %907 = sub nsw i32 %887, %849
  %908 = add nsw i32 %854, %851
  %909 = mul nsw i32 %908, 1108
  %910 = add nsw i32 %909, 4
  %911 = mul i32 %851, -3784
  %912 = add i32 %910, %911
  %913 = ashr i32 %912, 3
  %914 = mul nsw i32 %854, 1568
  %915 = add nsw i32 %910, %914
  %916 = ashr i32 %915, 3
  %917 = add nsw i32 %902, %893
  %918 = sub nsw i32 %893, %902
  %919 = add nsw i32 %905, %896
  %920 = sub nsw i32 %896, %905
  %921 = add nsw i32 %906, %916
  %922 = sub nsw i32 %906, %916
  %923 = add nsw i32 %907, %913
  %924 = sub nsw i32 %907, %913
  %925 = add nsw i32 %918, %920
  %926 = mul nsw i32 %925, 181
  %927 = add nsw i32 %926, 128
  %928 = ashr i32 %927, 8
  %929 = sub nsw i32 %918, %920
  %930 = mul nsw i32 %929, 181
  %931 = add nsw i32 %930, 128
  %932 = ashr i32 %931, 8
  %933 = add nsw i32 %917, %921
  %934 = ashr i32 %933, 14
  %935 = call i32 @llvm.smin.i32(i32 %934, i32 127)
  %936 = call i32 @llvm.smax.i32(i32 %935, i32 -128)
  %937 = trunc i32 %936 to i8
  %938 = xor i8 %937, -128
  store i8 %938, ptr %845, align 1, !tbaa !13
  %939 = sext i32 %846 to i64
  %940 = getelementptr inbounds i8, ptr %845, i64 %939
  %941 = add nsw i32 %928, %923
  %942 = ashr i32 %941, 14
  %943 = call i32 @llvm.smin.i32(i32 %942, i32 127)
  %944 = call i32 @llvm.smax.i32(i32 %943, i32 -128)
  %945 = trunc i32 %944 to i8
  %946 = xor i8 %945, -128
  store i8 %946, ptr %940, align 1, !tbaa !13
  %947 = getelementptr inbounds i8, ptr %940, i64 %939
  %948 = add nsw i32 %932, %924
  %949 = ashr i32 %948, 14
  %950 = call i32 @llvm.smin.i32(i32 %949, i32 127)
  %951 = call i32 @llvm.smax.i32(i32 %950, i32 -128)
  %952 = trunc i32 %951 to i8
  %953 = xor i8 %952, -128
  store i8 %953, ptr %947, align 1, !tbaa !13
  %954 = getelementptr inbounds i8, ptr %947, i64 %939
  %955 = add nsw i32 %919, %922
  %956 = ashr i32 %955, 14
  %957 = call i32 @llvm.smin.i32(i32 %956, i32 127)
  %958 = call i32 @llvm.smax.i32(i32 %957, i32 -128)
  %959 = trunc i32 %958 to i8
  %960 = xor i8 %959, -128
  store i8 %960, ptr %954, align 1, !tbaa !13
  %961 = getelementptr inbounds i8, ptr %954, i64 %939
  %962 = sub nsw i32 %922, %919
  %963 = ashr i32 %962, 14
  %964 = call i32 @llvm.smin.i32(i32 %963, i32 127)
  %965 = call i32 @llvm.smax.i32(i32 %964, i32 -128)
  %966 = trunc i32 %965 to i8
  %967 = xor i8 %966, -128
  store i8 %967, ptr %961, align 1, !tbaa !13
  %968 = getelementptr inbounds i8, ptr %961, i64 %939
  %969 = sub nsw i32 %924, %932
  %970 = ashr i32 %969, 14
  %971 = call i32 @llvm.smin.i32(i32 %970, i32 127)
  %972 = call i32 @llvm.smax.i32(i32 %971, i32 -128)
  %973 = trunc i32 %972 to i8
  %974 = xor i8 %973, -128
  store i8 %974, ptr %968, align 1, !tbaa !13
  %975 = getelementptr inbounds i8, ptr %968, i64 %939
  %976 = sub nsw i32 %923, %928
  %977 = ashr i32 %976, 14
  %978 = call i32 @llvm.smin.i32(i32 %977, i32 127)
  %979 = call i32 @llvm.smax.i32(i32 %978, i32 -128)
  %980 = trunc i32 %979 to i8
  %981 = xor i8 %980, -128
  store i8 %981, ptr %975, align 1, !tbaa !13
  %982 = getelementptr inbounds i8, ptr %975, i64 %939
  %983 = sub nsw i32 %921, %917
  %984 = ashr i32 %983, 14
  %985 = call i32 @llvm.smin.i32(i32 %984, i32 127)
  %986 = call i32 @llvm.smax.i32(i32 %985, i32 -128)
  %987 = trunc i32 %986 to i8
  %988 = xor i8 %987, -128
  store i8 %988, ptr %982, align 1, !tbaa !13
  br label %989

989:                                              ; preds = %885, %870
  %990 = add nuw nsw i64 %843, 1
  %991 = icmp eq i64 %990, 8
  br i1 %991, label %993, label %842, !llvm.loop !59

992:                                              ; preds = %729, %723
  store i32 5, ptr @nj, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %1111

993:                                              ; preds = %989
  %994 = load i32, ptr @nj, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %684, label %1111, !llvm.loop !60

996:                                              ; preds = %684
  %997 = load i32, ptr %667, align 8, !tbaa !22
  br label %998

998:                                              ; preds = %996, %679
  %999 = phi i32 [ %997, %996 ], [ %680, %679 ]
  %1000 = phi i32 [ %686, %996 ], [ %681, %679 ]
  %1001 = add nuw nsw i32 %682, 1
  %1002 = icmp slt i32 %1001, %999
  br i1 %1002, label %679, label %1003, !llvm.loop !61

1003:                                             ; preds = %998
  %1004 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  br label %1005

1005:                                             ; preds = %1003, %663
  %1006 = phi i32 [ %1004, %1003 ], [ %664, %663 ]
  %1007 = add nuw nsw i32 %666, 1
  %1008 = getelementptr inbounds %struct._nj_cmp, ptr %665, i64 1
  %1009 = icmp slt i32 %1007, %1006
  br i1 %1009, label %663, label %1010, !llvm.loop !62

1010:                                             ; preds = %1005, %657
  %1011 = phi i32 [ %658, %657 ], [ %1006, %1005 ]
  %1012 = phi i32 [ %659, %657 ], [ %1006, %1005 ]
  %1013 = add nsw i32 %660, 1
  %1014 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 6), align 8, !tbaa !28
  %1015 = icmp slt i32 %1013, %1014
  br i1 %1015, label %1020, label %1016

1016:                                             ; preds = %1010
  %1017 = add nsw i32 %661, 1
  %1018 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 7), align 4, !tbaa !29
  %1019 = icmp slt i32 %1017, %1018
  br i1 %1019, label %1020, label %1043

1020:                                             ; preds = %1016, %1010
  %1021 = phi i32 [ 0, %1016 ], [ %1013, %1010 ]
  %1022 = phi i32 [ %1017, %1016 ], [ %661, %1010 ]
  %1023 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %657, label %1025

1025:                                             ; preds = %1020
  %1026 = add nsw i32 %656, -1
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %651

1028:                                             ; preds = %1025
  %1029 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %1030 = and i32 %1029, 248
  store i32 %1030, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %1031 = call fastcc i32 @njGetBits(i32 noundef 16)
  %1032 = and i32 %1031, 65528
  %1033 = icmp eq i32 %1032, 65488
  %1034 = and i32 %1031, 7
  %1035 = icmp eq i32 %1034, %650
  %1036 = select i1 %1033, i1 %1035, i1 false
  br i1 %1036, label %1038, label %1037

1037:                                             ; preds = %1028
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

1038:                                             ; preds = %1028
  %1039 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %1040 = add nuw nsw i32 %650, 1
  %1041 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 9), align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 9), align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 9), align 4, !tbaa !55
  %1042 = and i32 %1040, 7
  br label %645

1043:                                             ; preds = %1016
  store i32 6, ptr @nj, align 8, !tbaa !18
  br label %1111

1044:                                             ; preds = %47
  %1045 = icmp ult i32 %49, 2
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1044
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1060

1047:                                             ; preds = %1044
  %1048 = load i8, ptr %48, align 1, !tbaa !13
  %1049 = zext i8 %1048 to i32
  %1050 = shl nuw nsw i32 %1049, 8
  %1051 = getelementptr inbounds i8, ptr %43, i64 3
  %1052 = load i8, ptr %1051, align 1, !tbaa !13
  %1053 = zext i8 %1052 to i32
  %1054 = or i32 %1050, %1053
  %1055 = icmp ult i32 %49, %1054
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1047
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1060

1057:                                             ; preds = %1047
  %1058 = add nsw i32 %40, -4
  %1059 = add nsw i32 %1054, -2
  br label %1060

1060:                                             ; preds = %1057, %1056, %1046
  %1061 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %33, %1057 ]
  %1062 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %34, %1057 ]
  %1063 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %35, %1057 ]
  %1064 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %36, %1057 ]
  %1065 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ %37, %1057 ]
  %1066 = phi i32 [ 5, %1046 ], [ 5, %1056 ], [ 0, %1057 ]
  %1067 = phi i32 [ %49, %1046 ], [ %49, %1056 ], [ %1058, %1057 ]
  %1068 = phi i64 [ 2, %1046 ], [ 2, %1056 ], [ 4, %1057 ]
  %1069 = phi i32 [ %51, %1046 ], [ %1054, %1056 ], [ %1059, %1057 ]
  %1070 = getelementptr inbounds i8, ptr %43, i64 %1068
  %1071 = sext i32 %1069 to i64
  %1072 = getelementptr inbounds i8, ptr %1070, i64 %1071
  store ptr %1072, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %1073 = sub nsw i32 %1067, %1069
  store i32 %1073, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %1074 = icmp slt i32 %1073, 0
  br i1 %1074, label %1075, label %1111

1075:                                             ; preds = %1060
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

1076:                                             ; preds = %47
  %1077 = and i8 %53, -16
  %1078 = icmp eq i8 %1077, -32
  br i1 %1078, label %1079, label %1655

1079:                                             ; preds = %1076
  %1080 = icmp ult i32 %49, 2
  br i1 %1080, label %1081, label %1082

1081:                                             ; preds = %1079
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1095

1082:                                             ; preds = %1079
  %1083 = load i8, ptr %48, align 1, !tbaa !13
  %1084 = zext i8 %1083 to i32
  %1085 = shl nuw nsw i32 %1084, 8
  %1086 = getelementptr inbounds i8, ptr %43, i64 3
  %1087 = load i8, ptr %1086, align 1, !tbaa !13
  %1088 = zext i8 %1087 to i32
  %1089 = or i32 %1085, %1088
  %1090 = icmp ult i32 %49, %1089
  br i1 %1090, label %1091, label %1092

1091:                                             ; preds = %1082
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1095

1092:                                             ; preds = %1082
  %1093 = add nsw i32 %40, -4
  %1094 = add nsw i32 %1089, -2
  br label %1095

1095:                                             ; preds = %1092, %1091, %1081
  %1096 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %33, %1092 ]
  %1097 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %34, %1092 ]
  %1098 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %35, %1092 ]
  %1099 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %36, %1092 ]
  %1100 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ %37, %1092 ]
  %1101 = phi i32 [ 5, %1081 ], [ 5, %1091 ], [ 0, %1092 ]
  %1102 = phi i32 [ %49, %1081 ], [ %49, %1091 ], [ %1093, %1092 ]
  %1103 = phi i64 [ 2, %1081 ], [ 2, %1091 ], [ 4, %1092 ]
  %1104 = phi i32 [ %51, %1081 ], [ %1089, %1091 ], [ %1094, %1092 ]
  %1105 = getelementptr inbounds i8, ptr %43, i64 %1103
  %1106 = sext i32 %1104 to i64
  %1107 = getelementptr inbounds i8, ptr %1105, i64 %1106
  store ptr %1107, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %1108 = sub nsw i32 %1102, %1104
  store i32 %1108, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %1109 = icmp slt i32 %1108, 0
  br i1 %1109, label %1110, label %1111

1110:                                             ; preds = %1095
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1111

1111:                                             ; preds = %993, %1110, %1095, %1075, %1060, %1043, %1037, %992, %637, %605, %598, %579, %574, %564, %563, %553, %549, %537, %530, %518, %511, %433, %420, %414, %246, %233, %228, %65
  %1112 = phi i32 [ 5, %1110 ], [ %1096, %1095 ], [ 5, %1075 ], [ %1061, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %33, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ %33, %537 ], [ %33, %530 ], [ 5, %518 ], [ %512, %511 ], [ %33, %433 ], [ %421, %420 ], [ %415, %414 ], [ %33, %246 ], [ %234, %233 ], [ %158, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1113 = phi i32 [ 5, %1110 ], [ %1097, %1095 ], [ 5, %1075 ], [ %1062, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %34, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ %34, %537 ], [ %34, %530 ], [ 5, %518 ], [ %513, %511 ], [ %34, %433 ], [ %421, %420 ], [ %416, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1114 = phi i32 [ 5, %1110 ], [ %1098, %1095 ], [ 5, %1075 ], [ %1063, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %35, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ %35, %537 ], [ %35, %530 ], [ 5, %518 ], [ %514, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1115 = phi i32 [ 5, %1110 ], [ %1099, %1095 ], [ 5, %1075 ], [ %1064, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %36, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ 0, %537 ], [ %36, %530 ], [ 5, %518 ], [ %515, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1116 = phi i32 [ 5, %1110 ], [ %1100, %1095 ], [ 5, %1075 ], [ %1065, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %37, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ 0, %537 ], [ %36, %530 ], [ 5, %518 ], [ %515, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  %1117 = phi i32 [ 5, %1110 ], [ %1101, %1095 ], [ 5, %1075 ], [ %1066, %1060 ], [ 6, %1043 ], [ 5, %1037 ], [ 5, %992 ], [ 2, %637 ], [ 5, %605 ], [ 5, %598 ], [ 2, %579 ], [ 5, %574 ], [ %37, %564 ], [ 5, %563 ], [ 5, %553 ], [ 5, %549 ], [ 0, %537 ], [ %36, %530 ], [ 5, %518 ], [ %515, %511 ], [ %35, %433 ], [ %421, %420 ], [ %417, %414 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %994, %993 ]
  br label %32, !llvm.loop !60

1118:                                             ; preds = %32
  store i32 0, ptr @nj, align 8, !tbaa !18
  %1119 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %1120 = icmp sgt i32 %1119, 0
  br i1 %1120, label %1121, label %1598

1121:                                             ; preds = %1118, %1519
  %1122 = phi i32 [ %1520, %1519 ], [ 0, %1118 ]
  %1123 = phi ptr [ %1521, %1519 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %1118 ]
  %1124 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 3
  %1125 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 4
  %1126 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 10
  %1127 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 0, i32 5
  br label %1128

1128:                                             ; preds = %1516, %1121
  %1129 = load i32, ptr %1124, align 4, !tbaa !30
  %1130 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %1131 = icmp slt i32 %1129, %1130
  br i1 %1131, label %1136, label %1132

1132:                                             ; preds = %1128
  %1133 = load i32, ptr %1125, align 8, !tbaa !31
  %1134 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %1135 = icmp slt i32 %1133, %1134
  br i1 %1135, label %1323, label %1519

1136:                                             ; preds = %1128
  %1137 = add i32 %1129, -3
  %1138 = load i32, ptr %1125, align 8, !tbaa !31
  %1139 = shl i32 %1129, 1
  %1140 = mul i32 %1138, %1139
  %1141 = sext i32 %1140 to i64
  %1142 = call noalias ptr @malloc(i64 noundef %1141) #13
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1144, label %1145

1144:                                             ; preds = %1136
  store i32 3, ptr @nj, align 8, !tbaa !18
  br label %1653

1145:                                             ; preds = %1136
  %1146 = load ptr, ptr %1126, align 8, !tbaa !3
  %1147 = icmp eq i32 %1138, 0
  br i1 %1147, label %1320, label %1148

1148:                                             ; preds = %1145
  %1149 = icmp sgt i32 %1129, 3
  %1150 = load i32, ptr %1127, align 4, !tbaa !32
  %1151 = sext i32 %1150 to i64
  %1152 = sext i32 %1139 to i64
  %1153 = zext i32 %1137 to i64
  br label %1154

1154:                                             ; preds = %1265, %1148
  %1155 = phi i32 [ %1138, %1148 ], [ %1318, %1265 ]
  %1156 = phi ptr [ %1142, %1148 ], [ %1267, %1265 ]
  %1157 = phi ptr [ %1146, %1148 ], [ %1266, %1265 ]
  %1158 = load i8, ptr %1157, align 1, !tbaa !13
  %1159 = zext i8 %1158 to i32
  %1160 = mul nuw nsw i32 %1159, 139
  %1161 = getelementptr inbounds i8, ptr %1157, i64 1
  %1162 = load i8, ptr %1161, align 1, !tbaa !13
  %1163 = zext i8 %1162 to i32
  %1164 = mul nsw i32 %1163, -11
  %1165 = add nuw nsw i32 %1160, 64
  %1166 = add nsw i32 %1165, %1164
  %1167 = ashr i32 %1166, 7
  %1168 = call i32 @llvm.smin.i32(i32 %1167, i32 255)
  %1169 = call i32 @llvm.smax.i32(i32 %1168, i32 0)
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, ptr %1156, align 1, !tbaa !13
  %1171 = load i8, ptr %1157, align 1, !tbaa !13
  %1172 = zext i8 %1171 to i32
  %1173 = mul nuw nsw i32 %1172, 104
  %1174 = load i8, ptr %1161, align 1, !tbaa !13
  %1175 = zext i8 %1174 to i32
  %1176 = mul nuw nsw i32 %1175, 27
  %1177 = getelementptr inbounds i8, ptr %1157, i64 2
  %1178 = load i8, ptr %1177, align 1, !tbaa !13
  %1179 = zext i8 %1178 to i32
  %1180 = mul nsw i32 %1179, -3
  %1181 = add nuw nsw i32 %1173, 64
  %1182 = add nuw nsw i32 %1181, %1176
  %1183 = add nsw i32 %1182, %1180
  %1184 = ashr i32 %1183, 7
  %1185 = call i32 @llvm.smin.i32(i32 %1184, i32 255)
  %1186 = call i32 @llvm.smax.i32(i32 %1185, i32 0)
  %1187 = trunc i32 %1186 to i8
  %1188 = getelementptr inbounds i8, ptr %1156, i64 1
  store i8 %1187, ptr %1188, align 1, !tbaa !13
  %1189 = load i8, ptr %1157, align 1, !tbaa !13
  %1190 = zext i8 %1189 to i32
  %1191 = mul nuw nsw i32 %1190, 28
  %1192 = load i8, ptr %1161, align 1, !tbaa !13
  %1193 = zext i8 %1192 to i32
  %1194 = mul nuw nsw i32 %1193, 109
  %1195 = load i8, ptr %1177, align 1, !tbaa !13
  %1196 = zext i8 %1195 to i32
  %1197 = mul nsw i32 %1196, -9
  %1198 = add nuw nsw i32 %1191, 64
  %1199 = add nuw nsw i32 %1198, %1194
  %1200 = add nsw i32 %1199, %1197
  %1201 = ashr i32 %1200, 7
  %1202 = call i32 @llvm.smin.i32(i32 %1201, i32 255)
  %1203 = call i32 @llvm.smax.i32(i32 %1202, i32 0)
  %1204 = trunc i32 %1203 to i8
  %1205 = getelementptr inbounds i8, ptr %1156, i64 2
  store i8 %1204, ptr %1205, align 1, !tbaa !13
  br i1 %1149, label %1206, label %1265

1206:                                             ; preds = %1154, %1206
  %1207 = phi i64 [ %1212, %1206 ], [ 0, %1154 ]
  %1208 = getelementptr inbounds i8, ptr %1157, i64 %1207
  %1209 = load i8, ptr %1208, align 1, !tbaa !13
  %1210 = zext i8 %1209 to i32
  %1211 = mul nsw i32 %1210, -9
  %1212 = add nuw nsw i64 %1207, 1
  %1213 = getelementptr inbounds i8, ptr %1157, i64 %1212
  %1214 = load i8, ptr %1213, align 1, !tbaa !13
  %1215 = zext i8 %1214 to i32
  %1216 = mul nuw nsw i32 %1215, 111
  %1217 = add nuw nsw i64 %1207, 2
  %1218 = getelementptr inbounds i8, ptr %1157, i64 %1217
  %1219 = load i8, ptr %1218, align 1, !tbaa !13
  %1220 = zext i8 %1219 to i32
  %1221 = mul nuw nsw i32 %1220, 29
  %1222 = add nuw nsw i64 %1207, 3
  %1223 = getelementptr inbounds i8, ptr %1157, i64 %1222
  %1224 = load i8, ptr %1223, align 1, !tbaa !13
  %1225 = zext i8 %1224 to i32
  %1226 = mul nsw i32 %1225, -3
  %1227 = add nsw i32 %1211, 64
  %1228 = add nsw i32 %1227, %1216
  %1229 = add nsw i32 %1228, %1221
  %1230 = add nsw i32 %1229, %1226
  %1231 = ashr i32 %1230, 7
  %1232 = call i32 @llvm.smin.i32(i32 %1231, i32 255)
  %1233 = call i32 @llvm.smax.i32(i32 %1232, i32 0)
  %1234 = trunc i32 %1233 to i8
  %1235 = shl i64 %1207, 33
  %1236 = add nuw i64 %1235, 12884901888
  %1237 = ashr exact i64 %1236, 32
  %1238 = getelementptr inbounds i8, ptr %1156, i64 %1237
  store i8 %1234, ptr %1238, align 1, !tbaa !13
  %1239 = load i8, ptr %1208, align 1, !tbaa !13
  %1240 = zext i8 %1239 to i32
  %1241 = mul nsw i32 %1240, -3
  %1242 = load i8, ptr %1213, align 1, !tbaa !13
  %1243 = zext i8 %1242 to i32
  %1244 = mul nuw nsw i32 %1243, 29
  %1245 = load i8, ptr %1218, align 1, !tbaa !13
  %1246 = zext i8 %1245 to i32
  %1247 = mul nuw nsw i32 %1246, 111
  %1248 = load i8, ptr %1223, align 1, !tbaa !13
  %1249 = zext i8 %1248 to i32
  %1250 = mul nsw i32 %1249, -9
  %1251 = add nsw i32 %1241, 64
  %1252 = add nsw i32 %1251, %1244
  %1253 = add nsw i32 %1252, %1247
  %1254 = add nsw i32 %1253, %1250
  %1255 = ashr i32 %1254, 7
  %1256 = call i32 @llvm.smin.i32(i32 %1255, i32 255)
  %1257 = call i32 @llvm.smax.i32(i32 %1256, i32 0)
  %1258 = trunc i32 %1257 to i8
  %1259 = trunc i64 %1207 to i32
  %1260 = shl i32 %1259, 1
  %1261 = add nsw i32 %1260, 4
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds i8, ptr %1156, i64 %1262
  store i8 %1258, ptr %1263, align 1, !tbaa !13
  %1264 = icmp eq i64 %1212, %1153
  br i1 %1264, label %1265, label %1206, !llvm.loop !64

1265:                                             ; preds = %1206, %1154
  %1266 = getelementptr inbounds i8, ptr %1157, i64 %1151
  %1267 = getelementptr inbounds i8, ptr %1156, i64 %1152
  %1268 = getelementptr inbounds i8, ptr %1266, i64 -1
  %1269 = load i8, ptr %1268, align 1, !tbaa !13
  %1270 = zext i8 %1269 to i32
  %1271 = mul nuw nsw i32 %1270, 28
  %1272 = getelementptr inbounds i8, ptr %1266, i64 -2
  %1273 = load i8, ptr %1272, align 1, !tbaa !13
  %1274 = zext i8 %1273 to i32
  %1275 = mul nuw nsw i32 %1274, 109
  %1276 = getelementptr inbounds i8, ptr %1266, i64 -3
  %1277 = load i8, ptr %1276, align 1, !tbaa !13
  %1278 = zext i8 %1277 to i32
  %1279 = mul nsw i32 %1278, -9
  %1280 = add nuw nsw i32 %1271, 64
  %1281 = add nuw nsw i32 %1280, %1275
  %1282 = add nsw i32 %1281, %1279
  %1283 = ashr i32 %1282, 7
  %1284 = call i32 @llvm.smin.i32(i32 %1283, i32 255)
  %1285 = call i32 @llvm.smax.i32(i32 %1284, i32 0)
  %1286 = trunc i32 %1285 to i8
  %1287 = getelementptr inbounds i8, ptr %1267, i64 -3
  store i8 %1286, ptr %1287, align 1, !tbaa !13
  %1288 = load i8, ptr %1268, align 1, !tbaa !13
  %1289 = zext i8 %1288 to i32
  %1290 = mul nuw nsw i32 %1289, 104
  %1291 = load i8, ptr %1272, align 1, !tbaa !13
  %1292 = zext i8 %1291 to i32
  %1293 = mul nuw nsw i32 %1292, 27
  %1294 = load i8, ptr %1276, align 1, !tbaa !13
  %1295 = zext i8 %1294 to i32
  %1296 = mul nsw i32 %1295, -3
  %1297 = add nuw nsw i32 %1290, 64
  %1298 = add nuw nsw i32 %1297, %1293
  %1299 = add nsw i32 %1298, %1296
  %1300 = ashr i32 %1299, 7
  %1301 = call i32 @llvm.smin.i32(i32 %1300, i32 255)
  %1302 = call i32 @llvm.smax.i32(i32 %1301, i32 0)
  %1303 = trunc i32 %1302 to i8
  %1304 = getelementptr inbounds i8, ptr %1267, i64 -2
  store i8 %1303, ptr %1304, align 1, !tbaa !13
  %1305 = load i8, ptr %1268, align 1, !tbaa !13
  %1306 = zext i8 %1305 to i32
  %1307 = mul nuw nsw i32 %1306, 139
  %1308 = load i8, ptr %1272, align 1, !tbaa !13
  %1309 = zext i8 %1308 to i32
  %1310 = mul nsw i32 %1309, -11
  %1311 = add nuw nsw i32 %1307, 64
  %1312 = add nsw i32 %1311, %1310
  %1313 = ashr i32 %1312, 7
  %1314 = call i32 @llvm.smin.i32(i32 %1313, i32 255)
  %1315 = call i32 @llvm.smax.i32(i32 %1314, i32 0)
  %1316 = trunc i32 %1315 to i8
  %1317 = getelementptr inbounds i8, ptr %1267, i64 -1
  store i8 %1316, ptr %1317, align 1, !tbaa !13
  %1318 = add nsw i32 %1155, -1
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1320, label %1154, !llvm.loop !65

1320:                                             ; preds = %1265, %1145
  store i32 %1139, ptr %1124, align 4, !tbaa !30
  store i32 %1139, ptr %1127, align 4, !tbaa !32
  call void @free(ptr noundef %1146) #12
  store ptr %1142, ptr %1126, align 8, !tbaa !3
  %1321 = load i32, ptr @nj, align 8, !tbaa !18
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1653

1323:                                             ; preds = %1132, %1320
  %1324 = load i32, ptr %1125, align 8, !tbaa !31
  %1325 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %1326 = icmp slt i32 %1324, %1325
  br i1 %1326, label %1327, label %1516

1327:                                             ; preds = %1323
  %1328 = load i32, ptr %1124, align 4, !tbaa !30
  %1329 = load i32, ptr %1127, align 4, !tbaa !32
  %1330 = shl nsw i32 %1329, 1
  %1331 = shl i32 %1324, 1
  %1332 = mul i32 %1328, %1331
  %1333 = sext i32 %1332 to i64
  %1334 = call noalias ptr @malloc(i64 noundef %1333) #13
  %1335 = icmp eq ptr %1334, null
  br i1 %1335, label %1349, label %1336

1336:                                             ; preds = %1327
  %1337 = icmp sgt i32 %1328, 0
  %1338 = load ptr, ptr %1126, align 8, !tbaa !3
  br i1 %1337, label %1339, label %1514

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
  br label %1350

1349:                                             ; preds = %1327
  store i32 3, ptr @nj, align 8, !tbaa !18
  br label %1653

1350:                                             ; preds = %1459, %1339
  %1351 = phi i64 [ 0, %1339 ], [ %1512, %1459 ]
  %1352 = getelementptr inbounds i8, ptr %1338, i64 %1351
  %1353 = getelementptr inbounds i8, ptr %1334, i64 %1351
  %1354 = load i8, ptr %1352, align 1, !tbaa !13
  %1355 = zext i8 %1354 to i32
  %1356 = mul nuw nsw i32 %1355, 139
  %1357 = getelementptr inbounds i8, ptr %1352, i64 %1340
  %1358 = load i8, ptr %1357, align 1, !tbaa !13
  %1359 = zext i8 %1358 to i32
  %1360 = mul nsw i32 %1359, -11
  %1361 = add nuw nsw i32 %1356, 64
  %1362 = add nsw i32 %1361, %1360
  %1363 = ashr i32 %1362, 7
  %1364 = call i32 @llvm.smin.i32(i32 %1363, i32 255)
  %1365 = call i32 @llvm.smax.i32(i32 %1364, i32 0)
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, ptr %1353, align 1, !tbaa !13
  %1367 = getelementptr inbounds i8, ptr %1353, i64 %1341
  %1368 = load i8, ptr %1352, align 1, !tbaa !13
  %1369 = zext i8 %1368 to i32
  %1370 = mul nuw nsw i32 %1369, 104
  %1371 = load i8, ptr %1357, align 1, !tbaa !13
  %1372 = zext i8 %1371 to i32
  %1373 = mul nuw nsw i32 %1372, 27
  %1374 = getelementptr inbounds i8, ptr %1352, i64 %1342
  %1375 = load i8, ptr %1374, align 1, !tbaa !13
  %1376 = zext i8 %1375 to i32
  %1377 = mul nsw i32 %1376, -3
  %1378 = add nuw nsw i32 %1370, 64
  %1379 = add nuw nsw i32 %1378, %1373
  %1380 = add nsw i32 %1379, %1377
  %1381 = ashr i32 %1380, 7
  %1382 = call i32 @llvm.smin.i32(i32 %1381, i32 255)
  %1383 = call i32 @llvm.smax.i32(i32 %1382, i32 0)
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, ptr %1367, align 1, !tbaa !13
  %1385 = getelementptr inbounds i8, ptr %1367, i64 %1341
  %1386 = load i8, ptr %1352, align 1, !tbaa !13
  %1387 = zext i8 %1386 to i32
  %1388 = mul nuw nsw i32 %1387, 28
  %1389 = load i8, ptr %1357, align 1, !tbaa !13
  %1390 = zext i8 %1389 to i32
  %1391 = mul nuw nsw i32 %1390, 109
  %1392 = load i8, ptr %1374, align 1, !tbaa !13
  %1393 = zext i8 %1392 to i32
  %1394 = mul nsw i32 %1393, -9
  %1395 = add nuw nsw i32 %1388, 64
  %1396 = add nuw nsw i32 %1395, %1391
  %1397 = add nsw i32 %1396, %1394
  %1398 = ashr i32 %1397, 7
  %1399 = call i32 @llvm.smin.i32(i32 %1398, i32 255)
  %1400 = call i32 @llvm.smax.i32(i32 %1399, i32 0)
  %1401 = trunc i32 %1400 to i8
  store i8 %1401, ptr %1385, align 1, !tbaa !13
  %1402 = getelementptr inbounds i8, ptr %1385, i64 %1341
  br i1 %1344, label %1459, label %1403

1403:                                             ; preds = %1350, %1403
  %1404 = phi ptr [ %1457, %1403 ], [ %1402, %1350 ]
  %1405 = phi ptr [ %1409, %1403 ], [ %1353, %1350 ]
  %1406 = phi i32 [ %1454, %1403 ], [ %1343, %1350 ]
  %1407 = phi ptr [ %1417, %1403 ], [ %1357, %1350 ]
  %1408 = getelementptr inbounds i8, ptr %1405, i64 %1341
  %1409 = getelementptr inbounds i8, ptr %1408, i64 %1341
  %1410 = getelementptr inbounds i8, ptr %1407, i64 %1346
  %1411 = load i8, ptr %1410, align 1, !tbaa !13
  %1412 = zext i8 %1411 to i32
  %1413 = mul nsw i32 %1412, -9
  %1414 = load i8, ptr %1407, align 1, !tbaa !13
  %1415 = zext i8 %1414 to i32
  %1416 = mul nuw nsw i32 %1415, 111
  %1417 = getelementptr inbounds i8, ptr %1407, i64 %1340
  %1418 = load i8, ptr %1417, align 1, !tbaa !13
  %1419 = zext i8 %1418 to i32
  %1420 = mul nuw nsw i32 %1419, 29
  %1421 = getelementptr inbounds i8, ptr %1407, i64 %1342
  %1422 = load i8, ptr %1421, align 1, !tbaa !13
  %1423 = zext i8 %1422 to i32
  %1424 = mul nsw i32 %1423, -3
  %1425 = add nsw i32 %1413, 64
  %1426 = add nsw i32 %1425, %1416
  %1427 = add nsw i32 %1426, %1420
  %1428 = add nsw i32 %1427, %1424
  %1429 = ashr i32 %1428, 7
  %1430 = call i32 @llvm.smin.i32(i32 %1429, i32 255)
  %1431 = call i32 @llvm.smax.i32(i32 %1430, i32 0)
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, ptr %1404, align 1, !tbaa !13
  %1433 = getelementptr inbounds i8, ptr %1404, i64 %1341
  %1434 = load i8, ptr %1410, align 1, !tbaa !13
  %1435 = zext i8 %1434 to i32
  %1436 = mul nsw i32 %1435, -3
  %1437 = load i8, ptr %1407, align 1, !tbaa !13
  %1438 = zext i8 %1437 to i32
  %1439 = mul nuw nsw i32 %1438, 29
  %1440 = load i8, ptr %1417, align 1, !tbaa !13
  %1441 = zext i8 %1440 to i32
  %1442 = mul nuw nsw i32 %1441, 111
  %1443 = load i8, ptr %1421, align 1, !tbaa !13
  %1444 = zext i8 %1443 to i32
  %1445 = mul nsw i32 %1444, -9
  %1446 = add nsw i32 %1436, 64
  %1447 = add nsw i32 %1446, %1439
  %1448 = add nsw i32 %1447, %1442
  %1449 = add nsw i32 %1448, %1445
  %1450 = ashr i32 %1449, 7
  %1451 = call i32 @llvm.smin.i32(i32 %1450, i32 255)
  %1452 = call i32 @llvm.smax.i32(i32 %1451, i32 0)
  %1453 = trunc i32 %1452 to i8
  store i8 %1453, ptr %1433, align 1, !tbaa !13
  %1454 = add nsw i32 %1406, -1
  %1455 = getelementptr inbounds i8, ptr %1409, i64 %1341
  %1456 = getelementptr inbounds i8, ptr %1455, i64 %1341
  %1457 = getelementptr inbounds i8, ptr %1456, i64 %1341
  %1458 = icmp eq i32 %1454, 0
  br i1 %1458, label %1459, label %1403, !llvm.loop !66

1459:                                             ; preds = %1403, %1350
  %1460 = phi ptr [ %1352, %1350 ], [ %1407, %1403 ]
  %1461 = phi ptr [ %1402, %1350 ], [ %1457, %1403 ]
  %1462 = getelementptr inbounds i8, ptr %1460, i64 %1340
  %1463 = getelementptr inbounds i8, ptr %1462, i64 %1340
  %1464 = load i8, ptr %1463, align 1, !tbaa !13
  %1465 = zext i8 %1464 to i32
  %1466 = mul nuw nsw i32 %1465, 28
  %1467 = getelementptr inbounds i8, ptr %1463, i64 %1346
  %1468 = load i8, ptr %1467, align 1, !tbaa !13
  %1469 = zext i8 %1468 to i32
  %1470 = mul nuw nsw i32 %1469, 109
  %1471 = getelementptr inbounds i8, ptr %1463, i64 %1348
  %1472 = load i8, ptr %1471, align 1, !tbaa !13
  %1473 = zext i8 %1472 to i32
  %1474 = mul nsw i32 %1473, -9
  %1475 = add nuw nsw i32 %1466, 64
  %1476 = add nuw nsw i32 %1475, %1470
  %1477 = add nsw i32 %1476, %1474
  %1478 = ashr i32 %1477, 7
  %1479 = call i32 @llvm.smin.i32(i32 %1478, i32 255)
  %1480 = call i32 @llvm.smax.i32(i32 %1479, i32 0)
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, ptr %1461, align 1, !tbaa !13
  %1482 = getelementptr inbounds i8, ptr %1461, i64 %1341
  %1483 = load i8, ptr %1463, align 1, !tbaa !13
  %1484 = zext i8 %1483 to i32
  %1485 = mul nuw nsw i32 %1484, 104
  %1486 = load i8, ptr %1467, align 1, !tbaa !13
  %1487 = zext i8 %1486 to i32
  %1488 = mul nuw nsw i32 %1487, 27
  %1489 = load i8, ptr %1471, align 1, !tbaa !13
  %1490 = zext i8 %1489 to i32
  %1491 = mul nsw i32 %1490, -3
  %1492 = add nuw nsw i32 %1485, 64
  %1493 = add nuw nsw i32 %1492, %1488
  %1494 = add nsw i32 %1493, %1491
  %1495 = ashr i32 %1494, 7
  %1496 = call i32 @llvm.smin.i32(i32 %1495, i32 255)
  %1497 = call i32 @llvm.smax.i32(i32 %1496, i32 0)
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, ptr %1482, align 1, !tbaa !13
  %1499 = getelementptr inbounds i8, ptr %1482, i64 %1341
  %1500 = load i8, ptr %1463, align 1, !tbaa !13
  %1501 = zext i8 %1500 to i32
  %1502 = mul nuw nsw i32 %1501, 139
  %1503 = load i8, ptr %1467, align 1, !tbaa !13
  %1504 = zext i8 %1503 to i32
  %1505 = mul nsw i32 %1504, -11
  %1506 = add nuw nsw i32 %1502, 64
  %1507 = add nsw i32 %1506, %1505
  %1508 = ashr i32 %1507, 7
  %1509 = call i32 @llvm.smin.i32(i32 %1508, i32 255)
  %1510 = call i32 @llvm.smax.i32(i32 %1509, i32 0)
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, ptr %1499, align 1, !tbaa !13
  %1512 = add nuw nsw i64 %1351, 1
  %1513 = icmp eq i64 %1512, %1341
  br i1 %1513, label %1514, label %1350, !llvm.loop !67

1514:                                             ; preds = %1459, %1336
  store i32 %1331, ptr %1125, align 8, !tbaa !31
  store i32 %1328, ptr %1127, align 4, !tbaa !32
  call void @free(ptr noundef %1338) #12
  store ptr %1334, ptr %1126, align 8, !tbaa !3
  %1515 = load i32, ptr @nj, align 8, !tbaa !18
  br label %1516

1516:                                             ; preds = %1514, %1323
  %1517 = phi i32 [ %1515, %1514 ], [ 0, %1323 ]
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1128, label %1653, !llvm.loop !68

1519:                                             ; preds = %1132
  %1520 = add nuw nsw i32 %1122, 1
  %1521 = getelementptr inbounds %struct._nj_cmp, ptr %1123, i64 1
  %1522 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %1523 = icmp slt i32 %1520, %1522
  br i1 %1523, label %1121, label %1524, !llvm.loop !69

1524:                                             ; preds = %1519
  %1525 = icmp eq i32 %1522, 3
  br i1 %1525, label %1526, label %1598

1526:                                             ; preds = %1524
  %1527 = icmp eq i32 %1134, 0
  br i1 %1527, label %1653, label %1528

1528:                                             ; preds = %1526
  %1529 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !tbaa !3
  %1530 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !tbaa !3
  %1531 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %1532 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  br label %1533

1533:                                             ; preds = %1584, %1528
  %1534 = phi i32 [ %1585, %1584 ], [ %1130, %1528 ]
  %1535 = phi ptr [ %1595, %1584 ], [ %1529, %1528 ]
  %1536 = phi ptr [ %1592, %1584 ], [ %1530, %1528 ]
  %1537 = phi ptr [ %1589, %1584 ], [ %1531, %1528 ]
  %1538 = phi ptr [ %1586, %1584 ], [ %1532, %1528 ]
  %1539 = phi i32 [ %1596, %1584 ], [ %1134, %1528 ]
  %1540 = icmp sgt i32 %1534, 0
  br i1 %1540, label %1541, label %1584

1541:                                             ; preds = %1533, %1541
  %1542 = phi i64 [ %1580, %1541 ], [ 0, %1533 ]
  %1543 = phi ptr [ %1579, %1541 ], [ %1538, %1533 ]
  %1544 = getelementptr inbounds i8, ptr %1537, i64 %1542
  %1545 = load i8, ptr %1544, align 1, !tbaa !13
  %1546 = zext i8 %1545 to i32
  %1547 = shl nuw nsw i32 %1546, 8
  %1548 = getelementptr inbounds i8, ptr %1536, i64 %1542
  %1549 = load i8, ptr %1548, align 1, !tbaa !13
  %1550 = zext i8 %1549 to i32
  %1551 = add nsw i32 %1550, -128
  %1552 = getelementptr inbounds i8, ptr %1535, i64 %1542
  %1553 = load i8, ptr %1552, align 1, !tbaa !13
  %1554 = zext i8 %1553 to i32
  %1555 = add nsw i32 %1554, -128
  %1556 = mul nsw i32 %1555, 359
  %1557 = or i32 %1547, 128
  %1558 = add nsw i32 %1556, %1557
  %1559 = ashr i32 %1558, 8
  %1560 = call i32 @llvm.smin.i32(i32 %1559, i32 255)
  %1561 = call i32 @llvm.smax.i32(i32 %1560, i32 0)
  %1562 = trunc i32 %1561 to i8
  %1563 = getelementptr inbounds i8, ptr %1543, i64 1
  store i8 %1562, ptr %1543, align 1, !tbaa !13
  %1564 = mul nsw i32 %1551, -88
  %1565 = mul nsw i32 %1555, -183
  %1566 = add nsw i32 %1564, %1557
  %1567 = add nsw i32 %1566, %1565
  %1568 = ashr i32 %1567, 8
  %1569 = call i32 @llvm.smin.i32(i32 %1568, i32 255)
  %1570 = call i32 @llvm.smax.i32(i32 %1569, i32 0)
  %1571 = trunc i32 %1570 to i8
  %1572 = getelementptr inbounds i8, ptr %1543, i64 2
  store i8 %1571, ptr %1563, align 1, !tbaa !13
  %1573 = mul nsw i32 %1551, 454
  %1574 = add nsw i32 %1573, %1557
  %1575 = ashr i32 %1574, 8
  %1576 = call i32 @llvm.smin.i32(i32 %1575, i32 255)
  %1577 = call i32 @llvm.smax.i32(i32 %1576, i32 0)
  %1578 = trunc i32 %1577 to i8
  %1579 = getelementptr inbounds i8, ptr %1543, i64 3
  store i8 %1578, ptr %1572, align 1, !tbaa !13
  %1580 = add nuw nsw i64 %1542, 1
  %1581 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %1582 = sext i32 %1581 to i64
  %1583 = icmp slt i64 %1580, %1582
  br i1 %1583, label %1541, label %1584, !llvm.loop !70

1584:                                             ; preds = %1541, %1533
  %1585 = phi i32 [ %1534, %1533 ], [ %1581, %1541 ]
  %1586 = phi ptr [ %1538, %1533 ], [ %1579, %1541 ]
  %1587 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1588 = sext i32 %1587 to i64
  %1589 = getelementptr inbounds i8, ptr %1537, i64 %1588
  %1590 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 5), align 4, !tbaa !32
  %1591 = sext i32 %1590 to i64
  %1592 = getelementptr inbounds i8, ptr %1536, i64 %1591
  %1593 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 5), align 4, !tbaa !32
  %1594 = sext i32 %1593 to i64
  %1595 = getelementptr inbounds i8, ptr %1535, i64 %1594
  %1596 = add nsw i32 %1539, -1
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1653, label %1533, !llvm.loop !71

1598:                                             ; preds = %1524, %1118
  %1599 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1600 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1601 = icmp eq i32 %1599, %1600
  br i1 %1601, label %1653, label %1602

1602:                                             ; preds = %1598
  %1603 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 4), align 8, !tbaa !31
  %1604 = add nsw i32 %1603, -1
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1651, label %1606

1606:                                             ; preds = %1602
  %1607 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %1608 = sext i32 %1599 to i64
  %1609 = getelementptr inbounds i8, ptr %1607, i64 %1608
  %1610 = sext i32 %1600 to i64
  %1611 = getelementptr inbounds i8, ptr %1607, i64 %1610
  %1612 = and i32 %1604, 1
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1623, label %1614

1614:                                             ; preds = %1606
  %1615 = sext i32 %1599 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1609, ptr align 1 %1611, i64 %1615, i1 false)
  %1616 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds i8, ptr %1611, i64 %1617
  %1619 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds i8, ptr %1609, i64 %1620
  %1622 = add nsw i32 %1603, -2
  br label %1623

1623:                                             ; preds = %1614, %1606
  %1624 = phi i32 [ undef, %1606 ], [ %1619, %1614 ]
  %1625 = phi i32 [ %1599, %1606 ], [ %1619, %1614 ]
  %1626 = phi i32 [ %1604, %1606 ], [ %1622, %1614 ]
  %1627 = phi ptr [ %1609, %1606 ], [ %1621, %1614 ]
  %1628 = phi ptr [ %1611, %1606 ], [ %1618, %1614 ]
  %1629 = icmp eq i32 %1603, 2
  br i1 %1629, label %1651, label %1630

1630:                                             ; preds = %1623, %1630
  %1631 = phi i32 [ %1646, %1630 ], [ %1625, %1623 ]
  %1632 = phi i32 [ %1649, %1630 ], [ %1626, %1623 ]
  %1633 = phi ptr [ %1648, %1630 ], [ %1627, %1623 ]
  %1634 = phi ptr [ %1645, %1630 ], [ %1628, %1623 ]
  %1635 = sext i32 %1631 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1633, ptr align 1 %1634, i64 %1635, i1 false)
  %1636 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1637 = sext i32 %1636 to i64
  %1638 = getelementptr inbounds i8, ptr %1634, i64 %1637
  %1639 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i8, ptr %1633, i64 %1640
  %1642 = sext i32 %1639 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1641, ptr align 1 %1638, i64 %1642, i1 false)
  %1643 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds i8, ptr %1638, i64 %1644
  %1646 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1647 = sext i32 %1646 to i64
  %1648 = getelementptr inbounds i8, ptr %1641, i64 %1647
  %1649 = add nsw i32 %1632, -2
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1651, label %1630, !llvm.loop !72

1651:                                             ; preds = %1623, %1630, %1602
  %1652 = phi i32 [ %1599, %1602 ], [ %1624, %1623 ], [ %1646, %1630 ]
  store i32 %1652, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  br label %1653

1653:                                             ; preds = %1320, %1516, %1584, %1144, %1349, %1526, %1598, %1651
  %1654 = load i32, ptr @nj, align 8, !tbaa !18
  br label %1655

1655:                                             ; preds = %32, %1076, %39, %42, %22, %19, %1653
  %1656 = phi i32 [ %1654, %1653 ], [ 1, %19 ], [ 1, %22 ], [ %38, %32 ], [ 2, %1076 ], [ 5, %39 ], [ 5, %42 ]
  ret i32 %1656
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetWidth() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetHeight() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njIsColor() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %2 = icmp ne i32 %1, 1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @njGetImage() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %2 = icmp eq i32 %1, 1
  %3 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8
  %5 = select i1 %2, ptr %3, ptr %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetImageSize() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %3 = mul nsw i32 %2, %1
  %4 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %5 = mul nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @njGetBits(i32 noundef %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @njShowBits(i32 noundef %0)
  %3 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %4 = icmp slt i32 %3, %0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @njShowBits(i32 noundef %0)
  %7 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  %10 = sub nsw i32 %9, %0
  store i32 %10, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  ret i32 %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @njGetVLC(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #8 {
  %3 = tail call fastcc i32 @njShowBits(i32 noundef 16)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct._nj_code, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %44

9:                                                ; preds = %2
  %10 = zext i8 %6 to i32
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %12 = icmp slt i32 %11, %10
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @njShowBits(i32 noundef %10)
  %15 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i32 [ %15, %13 ], [ %11, %9 ]
  %18 = sub nsw i32 %17, %10
  store i32 %18, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %19 = getelementptr inbounds %struct._nj_code, ptr %0, i64 %4, i32 1
  %20 = load i8, ptr %19, align 1, !tbaa !42
  %21 = icmp eq ptr %1, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i8 %20, ptr %1, align 1, !tbaa !13
  br label %23

23:                                               ; preds = %22, %16
  %24 = and i8 %20, 15
  %25 = zext i8 %24 to i32
  %26 = icmp eq i8 %24, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @njShowBits(i32 noundef %25)
  %29 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %30 = icmp slt i32 %29, %25
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @njShowBits(i32 noundef %25)
  %33 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  br label %34

34:                                               ; preds = %27, %31
  %35 = phi i32 [ %33, %31 ], [ %29, %27 ]
  %36 = sub nsw i32 %35, %25
  store i32 %36, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %37 = add nsw i32 %25, -1
  %38 = shl nuw nsw i32 1, %37
  %39 = icmp slt i32 %28, %38
  %40 = shl nsw i32 -1, %25
  %41 = or i32 %40, 1
  %42 = select i1 %39, i32 %41, i32 0
  %43 = add nsw i32 %42, %28
  br label %44

44:                                               ; preds = %23, %34, %8
  %45 = phi i32 [ %43, %34 ], [ 0, %8 ], [ 0, %23 ]
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @njShowBits(i32 noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %3 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !73
  %4 = icmp slt i32 %2, %0
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %7 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i32 [ %22, %18 ], [ %2, %5 ]
  %10 = phi i32 [ %21, %18 ], [ %7, %5 ]
  %11 = phi ptr [ %20, %18 ], [ %6, %5 ]
  %12 = phi i32 [ %19, %18 ], [ %3, %5 ]
  %13 = icmp slt i32 %10, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = shl i32 %12, 8
  %16 = or i32 %15, 255
  store i32 %16, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !73
  %17 = add nsw i32 %9, 8
  store i32 %17, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  br label %18

18:                                               ; preds = %24, %49, %44, %45, %35, %35, %40, %14
  %19 = phi i32 [ %16, %14 ], [ %31, %40 ], [ %31, %35 ], [ %31, %35 ], [ %47, %45 ], [ %31, %44 ], [ %31, %49 ], [ %31, %24 ]
  %20 = phi ptr [ %11, %14 ], [ %36, %40 ], [ %36, %35 ], [ %36, %35 ], [ %36, %45 ], [ %36, %44 ], [ %25, %49 ], [ %25, %24 ]
  %21 = phi i32 [ %10, %14 ], [ 0, %40 ], [ %38, %35 ], [ %38, %35 ], [ %38, %45 ], [ %38, %44 ], [ 0, %49 ], [ %27, %24 ]
  %22 = phi i32 [ %17, %14 ], [ %28, %40 ], [ %28, %35 ], [ %28, %35 ], [ %48, %45 ], [ %28, %44 ], [ %28, %49 ], [ %28, %24 ]
  %23 = icmp slt i32 %22, %0
  br i1 %23, label %8, label %50, !llvm.loop !74

24:                                               ; preds = %8
  %25 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %25, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %26 = load i8, ptr %11, align 1, !tbaa !13
  %27 = add nsw i32 %10, -1
  store i32 %27, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %28 = add nsw i32 %9, 8
  store i32 %28, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %29 = shl i32 %12, 8
  %30 = zext i8 %26 to i32
  %31 = or i32 %29, %30
  store i32 %31, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !73
  %32 = icmp eq i8 %26, -1
  br i1 %32, label %33, label %18

33:                                               ; preds = %24
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %36, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %37 = load i8, ptr %25, align 1, !tbaa !13
  %38 = add nsw i32 %10, -2
  store i32 %38, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %39 = zext i8 %37 to i32
  switch i8 %37, label %41 [
    i8 0, label %18
    i8 -1, label %18
    i8 -39, label %40
  ]

40:                                               ; preds = %35
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  br label %18

41:                                               ; preds = %35
  %42 = and i32 %39, 248
  %43 = icmp eq i32 %42, 208
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %18

45:                                               ; preds = %41
  %46 = shl i32 %31, 8
  %47 = or i32 %46, %39
  store i32 %47, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !73
  %48 = add nsw i32 %9, 16
  store i32 %48, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  br label %18

49:                                               ; preds = %33
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %18

50:                                               ; preds = %18, %1
  %51 = phi i32 [ %3, %1 ], [ %19, %18 ]
  %52 = phi i32 [ %2, %1 ], [ %22, %18 ]
  %53 = sub nsw i32 %52, %0
  %54 = ashr i32 %51, %53
  %55 = shl nsw i32 -1, %0
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 16.0.6 (Fedora 16.0.6-4.fc38)"}
!3 = !{!4, !8, i64 40}
!4 = !{!"_nj_cmp", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !8, i64 40}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!10, !8, i64 525024}
!10 = !{!"_nj_ctx", !6, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 56, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 464, !5, i64 524752, !5, i64 524756, !6, i64 524760, !5, i64 525016, !8, i64 525024}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !5, i64 16}
!13 = !{!6, !6, i64 0}
!14 = !{!10, !5, i64 20}
!15 = !{!10, !5, i64 28}
!16 = !{!10, !5, i64 24}
!17 = !{!10, !5, i64 48}
!18 = !{!10, !6, i64 0}
!19 = !{!10, !5, i64 200}
!20 = !{!4, !5, i64 0}
!21 = !{!4, !5, i64 4}
!22 = !{!4, !5, i64 8}
!23 = !{!4, !5, i64 24}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!10, !5, i64 40}
!27 = !{!10, !5, i64 44}
!28 = !{!10, !5, i64 32}
!29 = !{!10, !5, i64 36}
!30 = !{!4, !5, i64 12}
!31 = !{!4, !5, i64 16}
!32 = !{!4, !5, i64 20}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = !{!36, !6, i64 0}
!36 = !{!"_nj_code", !6, i64 0, !6, i64 1}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !25, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!36, !6, i64 1}
!43 = distinct !{!43, !25, !41, !40}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = !{!10, !5, i64 204}
!48 = distinct !{!48, !25, !40}
!49 = distinct !{!49, !25}
!50 = !{!10, !5, i64 525016}
!51 = !{!4, !5, i64 32}
!52 = !{!4, !5, i64 28}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = !{!4, !5, i64 36}
!56 = !{!5, !5, i64 0}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = !{!10, !5, i64 524756}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = !{!10, !5, i64 524752}
!74 = distinct !{!74, !25}
