; ModuleID = './nanojpeg.c'
source_filename = "./nanojpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct._nj_ctx = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct._nj_cmp], i32, i32, [4 x [64 x i8]], [4 x [65536 x %struct._nj_code]], i32, i32, [64 x i32], i32, ptr }
%struct._nj_cmp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct._nj_code = type { i8, i8 }

@nj = internal global %struct._nj_ctx zeroinitializer, align 8
@njDecodeDHT.counts = internal unnamed_addr global [16 x i8] zeroinitializer, align 16
@njZZ = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @njInit() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @njDone() local_unnamed_addr #2 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !tbaa !3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !tbaa !3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #13
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #13
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
define dso_local i32 @njDecode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %4) #13
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !tbaa !3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !tbaa !3
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #13
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %16) #13
  br label %19

19:                                               ; preds = %15, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(525032) @nj, i8 0, i64 525032, i1 false)
  store ptr %0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %20 = and i32 %1, 2147483647
  store i32 %20, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %1694, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %0, align 1, !tbaa !13
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = icmp eq i8 %25, -40
  %27 = icmp eq i8 %23, -1
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %1694

29:                                               ; preds = %22
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %30, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %31 = add nsw i32 %20, -2
  store i32 %31, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 -2, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  br label %32

32:                                               ; preds = %1100, %29
  %33 = phi i32 [ 0, %29 ], [ %1101, %1100 ]
  %34 = phi i32 [ 0, %29 ], [ %1102, %1100 ]
  %35 = phi i32 [ 0, %29 ], [ %1103, %1100 ]
  %36 = phi i32 [ 0, %29 ], [ %1104, %1100 ]
  %37 = phi i32 [ 0, %29 ], [ %1105, %1100 ]
  %38 = phi i32 [ 0, %29 ], [ %1106, %1100 ]
  switch i32 %38, label %1694 [
    i32 0, label %39
    i32 6, label %1107
  ]

39:                                               ; preds = %32
  %40 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %1694, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %44 = ptrtoint ptr %43 to i64
  %45 = load i8, ptr %43, align 1, !tbaa !13
  %46 = icmp eq i8 %45, -1
  br i1 %46, label %47, label %1694

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
  switch i8 %53, label %1065 [
    i8 -64, label %54
    i8 -60, label %235
    i8 -37, label %412
    i8 -35, label %508
    i8 -38, label %539
    i8 -2, label %1033
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
  %63 = or disjoint i32 %59, %62
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
  br i1 %69, label %70, label %1100

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
  %83 = or disjoint i32 %79, %82
  store i32 %83, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %84 = getelementptr inbounds i8, ptr %43, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i16
  %87 = shl nuw i16 %86, 8
  %88 = getelementptr inbounds i8, ptr %43, i64 8
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = zext i8 %89 to i16
  %91 = or disjoint i16 %87, %90
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
  %128 = zext nneg i8 %127 to i32
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
  %138 = zext nneg i8 %137 to i32
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
  %160 = shl nuw nsw i32 1, %148
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
  %173 = shl nuw nsw i32 %171, 3
  store i32 %173, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 8), align 8, !tbaa !26
  %174 = shl nuw nsw i32 %172, 3
  store i32 %174, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 9), align 4, !tbaa !27
  %175 = add nsw i32 %92, -1
  %176 = add nsw i32 %175, %173
  %177 = sdiv i32 %176, %173
  store i32 %177, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 6), align 8, !tbaa !28
  %178 = add nsw i32 %83, -1
  %179 = add nsw i32 %178, %174
  %180 = sdiv i32 %179, %174
  store i32 %180, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 7), align 4, !tbaa !29
  %181 = add nsw i32 %171, -1
  %182 = add nsw i32 %172, -1
  %183 = shl nsw i32 %177, 3
  %184 = shl nsw i32 %180, 3
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
  %204 = or i1 %203, %202
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
  %213 = call noalias ptr @malloc(i64 noundef %212) #14
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
  %225 = zext nneg i32 %224 to i64
  %226 = call noalias ptr @malloc(i64 noundef %225) #14
  store ptr %226, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %222, %220
  %229 = sext i32 %154 to i64
  %230 = getelementptr inbounds i8, ptr %152, i64 %229
  store ptr %230, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %231 = sub i32 %120, %121
  store i32 %231, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %1100

233:                                              ; preds = %145, %141, %135, %131, %112, %209, %205, %185, %228, %222, %107, %105, %75, %72, %70, %56, %54
  %234 = phi i32 [ 5, %54 ], [ 5, %56 ], [ 5, %70 ], [ 2, %72 ], [ 5, %75 ], [ 2, %105 ], [ 5, %107 ], [ 3, %222 ], [ 5, %228 ], [ 3, %209 ], [ 2, %185 ], [ 2, %205 ], [ 5, %145 ], [ 2, %141 ], [ 5, %135 ], [ 2, %131 ], [ 5, %112 ]
  store i32 %234, ptr @nj, align 8, !tbaa !18
  br label %1100

235:                                              ; preds = %47
  %236 = icmp ult i32 %49, 2
  br i1 %236, label %410, label %237

237:                                              ; preds = %235
  %238 = load i8, ptr %48, align 1, !tbaa !13
  %239 = zext i8 %238 to i32
  %240 = shl nuw nsw i32 %239, 8
  %241 = getelementptr inbounds i8, ptr %43, i64 3
  %242 = load i8, ptr %241, align 1, !tbaa !13
  %243 = zext i8 %242 to i32
  %244 = or disjoint i32 %240, %243
  store i32 %244, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %245 = icmp ult i32 %49, %244
  br i1 %245, label %410, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %247, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %248 = add nsw i32 %40, -4
  store i32 %248, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %249 = add nsw i32 %244, -2
  store i32 %249, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %250 = icmp eq i32 %34, 0
  br i1 %250, label %251, label %1100

251:                                              ; preds = %246
  %252 = icmp ugt i32 %244, 18
  br i1 %252, label %255, label %404

253:                                              ; preds = %298, %391, %285
  %254 = icmp sgt i32 %386, 16
  br i1 %254, label %255, label %404

255:                                              ; preds = %251, %253
  %256 = phi i32 [ %381, %253 ], [ %33, %251 ]
  %257 = phi i32 [ %382, %253 ], [ 0, %251 ]
  %258 = phi i32 [ %383, %253 ], [ 0, %251 ]
  %259 = phi i32 [ %386, %253 ], [ %249, %251 ]
  %260 = phi ptr [ %385, %253 ], [ %247, %251 ]
  %261 = phi i32 [ %384, %253 ], [ %248, %251 ]
  %262 = load i8, ptr %260, align 1, !tbaa !13
  %263 = zext i8 %262 to i32
  %264 = and i32 %263, 236
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %410

266:                                              ; preds = %255
  %267 = and i32 %263, 2
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %410

269:                                              ; preds = %266
  %270 = and i32 %263, 1
  %271 = getelementptr i8, ptr %260, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @njDecodeDHT.counts, ptr noundef nonnull align 1 dereferenceable(16) %271, i64 16, i1 false), !tbaa !13
  %272 = lshr i32 %263, 3
  %273 = or disjoint i32 %272, %270
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
  %283 = zext nneg i32 %273 to i64
  %284 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %283
  br label %302

285:                                              ; preds = %380
  %286 = icmp eq i32 %387, 0
  br i1 %286, label %253, label %287, !llvm.loop !34

287:                                              ; preds = %285
  %288 = and i32 %387, 7
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %287, %290
  %291 = phi ptr [ %295, %290 ], [ %388, %287 ]
  %292 = phi i32 [ %294, %290 ], [ %387, %287 ]
  %293 = phi i32 [ %296, %290 ], [ 0, %287 ]
  %294 = add nsw i32 %292, -1
  store i8 0, ptr %291, align 1, !tbaa !35
  %295 = getelementptr inbounds %struct._nj_code, ptr %291, i64 1
  %296 = add i32 %293, 1
  %297 = icmp eq i32 %296, %288
  br i1 %297, label %298, label %290, !llvm.loop !37

298:                                              ; preds = %290, %287
  %299 = phi ptr [ %388, %287 ], [ %295, %290 ]
  %300 = phi i32 [ %387, %287 ], [ %294, %290 ]
  %301 = icmp ult i32 %387, 8
  br i1 %301, label %253, label %391

302:                                              ; preds = %380, %279
  %303 = phi i32 [ %280, %279 ], [ %381, %380 ]
  %304 = phi i32 [ %281, %279 ], [ %382, %380 ]
  %305 = phi i32 [ %282, %279 ], [ %383, %380 ]
  %306 = phi i64 [ 1, %279 ], [ %389, %380 ]
  %307 = phi ptr [ %284, %279 ], [ %388, %380 ]
  %308 = phi i32 [ 65536, %279 ], [ %313, %380 ]
  %309 = phi i32 [ 65536, %279 ], [ %387, %380 ]
  %310 = phi i32 [ %276, %279 ], [ %386, %380 ]
  %311 = phi ptr [ %274, %279 ], [ %385, %380 ]
  %312 = phi i32 [ %275, %279 ], [ %384, %380 ]
  %313 = lshr i32 %308, 1
  %314 = add nsw i64 %306, -1
  %315 = getelementptr inbounds [16 x i8], ptr @njDecodeDHT.counts, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !13
  %317 = zext i8 %316 to i32
  %318 = icmp eq i8 %316, 0
  br i1 %318, label %380, label %319

319:                                              ; preds = %302
  %320 = icmp slt i32 %310, %317
  br i1 %320, label %410, label %321

321:                                              ; preds = %319
  %322 = trunc i64 %306 to i32
  %323 = sub i32 16, %322
  %324 = shl nuw nsw i32 %317, %323
  %325 = sub nsw i32 %309, %324
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %410, label %327

327:                                              ; preds = %321
  %328 = trunc i64 %306 to i8
  %329 = zext i8 %316 to i64
  %330 = lshr i32 %308, 1
  %331 = zext nneg i32 %330 to i64
  %332 = icmp ult i32 %308, 32
  %333 = and i64 %331, 65520
  %334 = shl nuw nsw i64 %333, 1
  %335 = trunc i64 %333 to i32
  %336 = sub nsw i32 %313, %335
  %337 = insertelement <8 x i8> poison, i8 %328, i64 0
  %338 = shufflevector <8 x i8> %337, <8 x i8> poison, <8 x i32> zeroinitializer
  %339 = icmp eq i64 %333, %331
  br label %340

340:                                              ; preds = %370, %327
  %341 = phi i64 [ 0, %327 ], [ %372, %370 ]
  %342 = phi ptr [ %307, %327 ], [ %371, %370 ]
  %343 = getelementptr inbounds i8, ptr %311, i64 %341
  %344 = load i8, ptr %343, align 1, !tbaa !13
  br i1 %332, label %360, label %345

345:                                              ; preds = %340
  %346 = getelementptr i8, ptr %342, i64 %334
  %347 = insertelement <8 x i8> poison, i8 %344, i64 0
  %348 = shufflevector <8 x i8> %347, <8 x i8> poison, <8 x i32> zeroinitializer
  %349 = shufflevector <8 x i8> %338, <8 x i8> %348, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  br label %350

350:                                              ; preds = %350, %345
  %351 = phi i64 [ 0, %345 ], [ %357, %350 ]
  %352 = shl i64 %351, 1
  %353 = getelementptr i8, ptr %342, i64 %352
  %354 = shl i64 %351, 1
  %355 = or disjoint i64 %354, 16
  %356 = getelementptr i8, ptr %342, i64 %355
  store <16 x i8> %349, ptr %353, align 1, !tbaa !13
  store <16 x i8> %349, ptr %356, align 1, !tbaa !13
  %357 = add nuw i64 %351, 16
  %358 = icmp eq i64 %357, %333
  br i1 %358, label %359, label %350, !llvm.loop !39

359:                                              ; preds = %350
  br i1 %339, label %370, label %360

360:                                              ; preds = %340, %359
  %361 = phi ptr [ %342, %340 ], [ %346, %359 ]
  %362 = phi i32 [ %313, %340 ], [ %336, %359 ]
  br label %363

363:                                              ; preds = %360, %363
  %364 = phi ptr [ %367, %363 ], [ %361, %360 ]
  %365 = phi i32 [ %368, %363 ], [ %362, %360 ]
  store i8 %328, ptr %364, align 1, !tbaa !35
  %366 = getelementptr inbounds %struct._nj_code, ptr %364, i64 0, i32 1
  store i8 %344, ptr %366, align 1, !tbaa !42
  %367 = getelementptr inbounds %struct._nj_code, ptr %364, i64 1
  %368 = add nsw i32 %365, -1
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %363, !llvm.loop !43

370:                                              ; preds = %363, %359
  %371 = phi ptr [ %346, %359 ], [ %367, %363 ]
  %372 = add nuw nsw i64 %341, 1
  %373 = icmp eq i64 %372, %329
  br i1 %373, label %374, label %340, !llvm.loop !44

374:                                              ; preds = %370
  %375 = getelementptr inbounds i8, ptr %311, i64 %329
  store ptr %375, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %376 = sub nsw i32 %312, %317
  store i32 %376, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %377 = sub nsw i32 %310, %317
  store i32 %377, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %378 = icmp slt i32 %376, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %380

380:                                              ; preds = %379, %374, %302
  %381 = phi i32 [ %303, %302 ], [ %303, %374 ], [ 5, %379 ]
  %382 = phi i32 [ %304, %302 ], [ %304, %374 ], [ 5, %379 ]
  %383 = phi i32 [ %305, %302 ], [ %305, %374 ], [ 5, %379 ]
  %384 = phi i32 [ %312, %302 ], [ %376, %374 ], [ %376, %379 ]
  %385 = phi ptr [ %311, %302 ], [ %375, %374 ], [ %375, %379 ]
  %386 = phi i32 [ %310, %302 ], [ %377, %374 ], [ %377, %379 ]
  %387 = phi i32 [ %309, %302 ], [ %325, %374 ], [ %325, %379 ]
  %388 = phi ptr [ %307, %302 ], [ %371, %374 ], [ %371, %379 ]
  %389 = add nuw nsw i64 %306, 1
  %390 = icmp eq i64 %389, 17
  br i1 %390, label %285, label %302, !llvm.loop !45

391:                                              ; preds = %298, %391
  %392 = phi ptr [ %402, %391 ], [ %299, %298 ]
  %393 = phi i32 [ %401, %391 ], [ %300, %298 ]
  store i8 0, ptr %392, align 1, !tbaa !35
  %394 = getelementptr inbounds %struct._nj_code, ptr %392, i64 1
  store i8 0, ptr %394, align 1, !tbaa !35
  %395 = getelementptr inbounds %struct._nj_code, ptr %392, i64 2
  store i8 0, ptr %395, align 1, !tbaa !35
  %396 = getelementptr inbounds %struct._nj_code, ptr %392, i64 3
  store i8 0, ptr %396, align 1, !tbaa !35
  %397 = getelementptr inbounds %struct._nj_code, ptr %392, i64 4
  store i8 0, ptr %397, align 1, !tbaa !35
  %398 = getelementptr inbounds %struct._nj_code, ptr %392, i64 5
  store i8 0, ptr %398, align 1, !tbaa !35
  %399 = getelementptr inbounds %struct._nj_code, ptr %392, i64 6
  store i8 0, ptr %399, align 1, !tbaa !35
  %400 = getelementptr inbounds %struct._nj_code, ptr %392, i64 7
  %401 = add nsw i32 %393, -8
  store i8 0, ptr %400, align 1, !tbaa !35
  %402 = getelementptr inbounds %struct._nj_code, ptr %392, i64 8
  %403 = icmp eq i32 %401, 0
  br i1 %403, label %253, label %391, !llvm.loop !46

404:                                              ; preds = %253, %251
  %405 = phi i32 [ %33, %251 ], [ %381, %253 ]
  %406 = phi i32 [ 0, %251 ], [ %382, %253 ]
  %407 = phi i32 [ 0, %251 ], [ %383, %253 ]
  %408 = phi i32 [ %249, %251 ], [ %386, %253 ]
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %1100, label %410

410:                                              ; preds = %266, %255, %321, %319, %404, %237, %235
  %411 = phi i32 [ 5, %235 ], [ 5, %237 ], [ 5, %404 ], [ 5, %319 ], [ 5, %321 ], [ 2, %266 ], [ 5, %255 ]
  store i32 %411, ptr @nj, align 8, !tbaa !18
  br label %1100

412:                                              ; preds = %47
  %413 = icmp ult i32 %49, 2
  br i1 %413, label %507, label %414

414:                                              ; preds = %412
  %415 = load i8, ptr %48, align 1, !tbaa !13
  %416 = zext i8 %415 to i32
  %417 = shl nuw nsw i32 %416, 8
  %418 = getelementptr inbounds i8, ptr %43, i64 3
  %419 = load i8, ptr %418, align 1, !tbaa !13
  %420 = zext i8 %419 to i32
  %421 = or disjoint i32 %417, %420
  store i32 %421, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %422 = icmp ult i32 %49, %421
  br i1 %422, label %507, label %423

423:                                              ; preds = %414
  %424 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %424, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %425 = add nsw i32 %40, -4
  store i32 %425, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %426 = add nsw i32 %421, -2
  store i32 %426, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %427 = icmp eq i32 %35, 0
  br i1 %427, label %428, label %1100

428:                                              ; preds = %423
  %429 = icmp ugt i32 %421, 66
  br i1 %429, label %430, label %500

430:                                              ; preds = %428
  %431 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 13), align 4, !tbaa !47
  %432 = sub i64 add (i64 ptrtoint (ptr @nj to i64), i64 203), %44
  br label %433

433:                                              ; preds = %493, %430
  %434 = phi i64 [ %499, %493 ], [ 0, %430 ]
  %435 = phi i32 [ %494, %493 ], [ %33, %430 ]
  %436 = phi i32 [ %495, %493 ], [ %34, %430 ]
  %437 = phi i32 [ %496, %493 ], [ 0, %430 ]
  %438 = phi i32 [ %497, %493 ], [ 0, %430 ]
  %439 = phi i32 [ %490, %493 ], [ %426, %430 ]
  %440 = phi ptr [ %488, %493 ], [ %424, %430 ]
  %441 = phi i32 [ %450, %493 ], [ %431, %430 ]
  %442 = phi i32 [ %489, %493 ], [ %425, %430 ]
  %443 = load i8, ptr %440, align 1, !tbaa !13
  %444 = icmp ult i8 %443, 4
  br i1 %444, label %445, label %507

445:                                              ; preds = %433
  %446 = mul nsw i64 %434, -65
  %447 = add i64 %432, %446
  %448 = zext nneg i8 %443 to i32
  %449 = shl nuw nsw i32 1, %448
  %450 = or i32 %449, %441
  store i32 %450, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 13), align 4, !tbaa !47
  %451 = zext nneg i8 %443 to i64
  %452 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %451
  %453 = shl nuw nsw i64 %451, 6
  %454 = add i64 %447, %453
  %455 = icmp ult i64 %454, 16
  br i1 %455, label %468, label %456

456:                                              ; preds = %445
  %457 = getelementptr inbounds i8, ptr %440, i64 1
  %458 = load <16 x i8>, ptr %457, align 1, !tbaa !13
  store <16 x i8> %458, ptr %452, align 8, !tbaa !13
  %459 = getelementptr inbounds i8, ptr %440, i64 17
  %460 = load <16 x i8>, ptr %459, align 1, !tbaa !13
  %461 = getelementptr inbounds i8, ptr %452, i64 16
  store <16 x i8> %460, ptr %461, align 8, !tbaa !13
  %462 = getelementptr inbounds i8, ptr %440, i64 33
  %463 = load <16 x i8>, ptr %462, align 1, !tbaa !13
  %464 = getelementptr inbounds i8, ptr %452, i64 32
  store <16 x i8> %463, ptr %464, align 8, !tbaa !13
  %465 = getelementptr inbounds i8, ptr %440, i64 49
  %466 = load <16 x i8>, ptr %465, align 1, !tbaa !13
  %467 = getelementptr inbounds i8, ptr %452, i64 48
  store <16 x i8> %466, ptr %467, align 8, !tbaa !13
  br label %487

468:                                              ; preds = %445, %468
  %469 = phi i64 [ %482, %468 ], [ 0, %445 ]
  %470 = or disjoint i64 %469, 1
  %471 = getelementptr inbounds i8, ptr %440, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !13
  %473 = getelementptr inbounds i8, ptr %452, i64 %469
  store i8 %472, ptr %473, align 4, !tbaa !13
  %474 = or disjoint i64 %469, 2
  %475 = getelementptr inbounds i8, ptr %440, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !13
  %477 = getelementptr inbounds i8, ptr %452, i64 %470
  store i8 %476, ptr %477, align 1, !tbaa !13
  %478 = or disjoint i64 %469, 3
  %479 = getelementptr inbounds i8, ptr %440, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !13
  %481 = getelementptr inbounds i8, ptr %452, i64 %474
  store i8 %480, ptr %481, align 2, !tbaa !13
  %482 = add nuw nsw i64 %469, 4
  %483 = getelementptr inbounds i8, ptr %440, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !13
  %485 = getelementptr inbounds i8, ptr %452, i64 %478
  store i8 %484, ptr %485, align 1, !tbaa !13
  %486 = icmp eq i64 %482, 64
  br i1 %486, label %487, label %468, !llvm.loop !48

487:                                              ; preds = %468, %456
  %488 = getelementptr inbounds i8, ptr %440, i64 65
  store ptr %488, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %489 = add nsw i32 %442, -65
  store i32 %489, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %490 = add nsw i32 %439, -65
  store i32 %490, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %491 = icmp slt i32 %442, 65
  br i1 %491, label %492, label %493

492:                                              ; preds = %487
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %493

493:                                              ; preds = %492, %487
  %494 = phi i32 [ 5, %492 ], [ %435, %487 ]
  %495 = phi i32 [ 5, %492 ], [ %436, %487 ]
  %496 = phi i32 [ 5, %492 ], [ %437, %487 ]
  %497 = phi i32 [ 5, %492 ], [ %438, %487 ]
  %498 = icmp sgt i32 %439, 129
  %499 = add i64 %434, 1
  br i1 %498, label %433, label %500, !llvm.loop !49

500:                                              ; preds = %493, %428
  %501 = phi i32 [ %33, %428 ], [ %494, %493 ]
  %502 = phi i32 [ %34, %428 ], [ %495, %493 ]
  %503 = phi i32 [ 0, %428 ], [ %496, %493 ]
  %504 = phi i32 [ 0, %428 ], [ %497, %493 ]
  %505 = phi i32 [ %426, %428 ], [ %490, %493 ]
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %1100, label %507

507:                                              ; preds = %433, %500, %414, %412
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

508:                                              ; preds = %47
  %509 = icmp ult i32 %49, 2
  br i1 %509, label %538, label %510

510:                                              ; preds = %508
  %511 = load i8, ptr %48, align 1, !tbaa !13
  %512 = zext i8 %511 to i32
  %513 = shl nuw nsw i32 %512, 8
  %514 = getelementptr inbounds i8, ptr %43, i64 3
  %515 = load i8, ptr %514, align 1, !tbaa !13
  %516 = zext i8 %515 to i32
  %517 = or disjoint i32 %513, %516
  store i32 %517, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %518 = icmp ult i32 %49, %517
  br i1 %518, label %538, label %519

519:                                              ; preds = %510
  %520 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %520, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %521 = add nsw i32 %40, -4
  store i32 %521, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %522 = add nsw i32 %517, -2
  store i32 %522, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %523 = icmp eq i32 %36, 0
  br i1 %523, label %524, label %1100

524:                                              ; preds = %519
  %525 = icmp ult i32 %517, 4
  br i1 %525, label %538, label %526

526:                                              ; preds = %524
  %527 = load i8, ptr %520, align 1, !tbaa !13
  %528 = zext i8 %527 to i32
  %529 = shl nuw nsw i32 %528, 8
  %530 = getelementptr inbounds i8, ptr %43, i64 5
  %531 = load i8, ptr %530, align 1, !tbaa !13
  %532 = zext i8 %531 to i32
  %533 = or disjoint i32 %529, %532
  store i32 %533, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  %534 = zext nneg i32 %522 to i64
  %535 = getelementptr inbounds i8, ptr %520, i64 %534
  store ptr %535, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %536 = sub nsw i32 %49, %517
  store i32 %536, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %538, label %1100

538:                                              ; preds = %526, %524, %510, %508
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

539:                                              ; preds = %47
  %540 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  %541 = icmp ult i32 %49, 2
  br i1 %541, label %542, label %543

542:                                              ; preds = %539
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

543:                                              ; preds = %539
  %544 = load i8, ptr %48, align 1, !tbaa !13
  %545 = zext i8 %544 to i32
  %546 = shl nuw nsw i32 %545, 8
  %547 = getelementptr inbounds i8, ptr %43, i64 3
  %548 = load i8, ptr %547, align 1, !tbaa !13
  %549 = zext i8 %548 to i32
  %550 = or disjoint i32 %546, %549
  store i32 %550, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %551 = icmp ult i32 %49, %550
  br i1 %551, label %552, label %553

552:                                              ; preds = %543
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

553:                                              ; preds = %543
  %554 = getelementptr inbounds i8, ptr %43, i64 4
  store ptr %554, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %555 = add nsw i32 %40, -4
  store i32 %555, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %556 = add nsw i32 %550, -2
  store i32 %556, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %557 = icmp eq i32 %37, 0
  br i1 %557, label %558, label %1100

558:                                              ; preds = %553
  %559 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %560 = shl nsw i32 %559, 1
  %561 = add nsw i32 %560, 4
  %562 = icmp slt i32 %556, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %558
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

564:                                              ; preds = %558
  %565 = load i8, ptr %554, align 1, !tbaa !13
  %566 = zext i8 %565 to i32
  %567 = icmp eq i32 %559, %566
  br i1 %567, label %569, label %568

568:                                              ; preds = %564
  store i32 2, ptr @nj, align 8, !tbaa !18
  br label %1100

569:                                              ; preds = %564
  %570 = getelementptr inbounds i8, ptr %43, i64 5
  store ptr %570, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %571 = add nsw i32 %40, -5
  store i32 %571, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %572 = add nsw i32 %550, -3
  store i32 %572, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %573 = icmp eq i32 %49, 2
  br i1 %573, label %574, label %575

574:                                              ; preds = %569
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %575

575:                                              ; preds = %574, %569
  %576 = icmp eq i32 %559, 0
  br i1 %576, label %612, label %577

577:                                              ; preds = %575, %608
  %578 = phi ptr [ %610, %608 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %575 ]
  %579 = phi i32 [ %609, %608 ], [ 0, %575 ]
  %580 = phi ptr [ %603, %608 ], [ %570, %575 ]
  %581 = phi i32 [ %604, %608 ], [ %571, %575 ]
  %582 = phi i32 [ %605, %608 ], [ %572, %575 ]
  %583 = load i8, ptr %580, align 1, !tbaa !13
  %584 = zext i8 %583 to i32
  %585 = load i32, ptr %578, align 8, !tbaa !20
  %586 = icmp eq i32 %585, %584
  br i1 %586, label %588, label %587

587:                                              ; preds = %577
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

588:                                              ; preds = %577
  %589 = getelementptr inbounds i8, ptr %580, i64 1
  %590 = load i8, ptr %589, align 1, !tbaa !13
  %591 = zext i8 %590 to i32
  %592 = and i32 %591, 238
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %595, label %594

594:                                              ; preds = %588
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

595:                                              ; preds = %588
  %596 = lshr i32 %591, 4
  %597 = getelementptr inbounds %struct._nj_cmp, ptr %578, i64 0, i32 8
  store i32 %596, ptr %597, align 8, !tbaa !51
  %598 = load i8, ptr %589, align 1, !tbaa !13
  %599 = and i8 %598, 1
  %600 = or disjoint i8 %599, 2
  %601 = zext nneg i8 %600 to i32
  %602 = getelementptr inbounds %struct._nj_cmp, ptr %578, i64 0, i32 7
  store i32 %601, ptr %602, align 4, !tbaa !52
  %603 = getelementptr inbounds i8, ptr %580, i64 2
  store ptr %603, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %604 = add nsw i32 %581, -2
  store i32 %604, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  %605 = add nsw i32 %582, -2
  store i32 %605, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %606 = icmp slt i32 %581, 2
  br i1 %606, label %607, label %608

607:                                              ; preds = %595
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %608

608:                                              ; preds = %607, %595
  %609 = add nuw nsw i32 %579, 1
  %610 = getelementptr inbounds %struct._nj_cmp, ptr %578, i64 1
  %611 = icmp eq i32 %609, %559
  br i1 %611, label %612, label %577, !llvm.loop !53

612:                                              ; preds = %608, %575
  %613 = phi i32 [ %571, %575 ], [ %604, %608 ]
  %614 = phi i32 [ %572, %575 ], [ %605, %608 ]
  %615 = phi ptr [ %570, %575 ], [ %603, %608 ]
  %616 = load i8, ptr %615, align 1, !tbaa !13
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %626

618:                                              ; preds = %612
  %619 = getelementptr inbounds i8, ptr %615, i64 1
  %620 = load i8, ptr %619, align 1, !tbaa !13
  %621 = icmp eq i8 %620, 63
  br i1 %621, label %622, label %626

622:                                              ; preds = %618
  %623 = getelementptr inbounds i8, ptr %615, i64 2
  %624 = load i8, ptr %623, align 1, !tbaa !13
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %627, label %626

626:                                              ; preds = %622, %618, %612
  store i32 2, ptr @nj, align 8, !tbaa !18
  br label %1100

627:                                              ; preds = %622
  %628 = sext i32 %614 to i64
  %629 = getelementptr inbounds i8, ptr %615, i64 %628
  store ptr %629, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %630 = sub nsw i32 %613, %614
  store i32 %630, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %631 = icmp slt i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %627
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %633

633:                                              ; preds = %632, %627
  br label %634

634:                                              ; preds = %1027, %633
  %635 = phi i32 [ %1028, %1027 ], [ %559, %633 ]
  %636 = phi i32 [ %1010, %1027 ], [ 0, %633 ]
  %637 = phi i32 [ %1011, %1027 ], [ 0, %633 ]
  %638 = phi i32 [ %1030, %1027 ], [ %540, %633 ]
  %639 = phi i32 [ %1031, %1027 ], [ 0, %633 ]
  br label %640

640:                                              ; preds = %634, %1014
  %641 = phi i32 [ %1000, %1014 ], [ %635, %634 ]
  %642 = phi i32 [ %1001, %1014 ], [ %635, %634 ]
  %643 = phi i32 [ %1010, %1014 ], [ %636, %634 ]
  %644 = phi i32 [ %1011, %1014 ], [ %637, %634 ]
  %645 = phi i32 [ %1015, %1014 ], [ %638, %634 ]
  br label %646

646:                                              ; preds = %640, %1009
  %647 = phi i32 [ %1000, %1009 ], [ %641, %640 ]
  %648 = phi i32 [ %1001, %1009 ], [ %642, %640 ]
  %649 = phi i32 [ %1010, %1009 ], [ %643, %640 ]
  %650 = phi i32 [ %1011, %1009 ], [ %644, %640 ]
  %651 = icmp sgt i32 %648, 0
  br i1 %651, label %652, label %999

652:                                              ; preds = %646, %994
  %653 = phi i32 [ %995, %994 ], [ %647, %646 ]
  %654 = phi ptr [ %997, %994 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %646 ]
  %655 = phi i32 [ %996, %994 ], [ 0, %646 ]
  %656 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 2
  %657 = load i32, ptr %656, align 8, !tbaa !22
  %658 = icmp sgt i32 %657, 0
  br i1 %658, label %659, label %994

659:                                              ; preds = %652
  %660 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 1
  %661 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 10
  %662 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 5
  %663 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 8
  %664 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 9
  %665 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 6
  %666 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 0, i32 7
  %667 = load i32, ptr %660, align 4, !tbaa !21
  br label %668

668:                                              ; preds = %987, %659
  %669 = phi i32 [ %657, %659 ], [ %988, %987 ]
  %670 = phi i32 [ %667, %659 ], [ %989, %987 ]
  %671 = phi i32 [ 0, %659 ], [ %990, %987 ]
  %672 = icmp sgt i32 %670, 0
  br i1 %672, label %677, label %987

673:                                              ; preds = %982
  %674 = add nuw nsw i32 %679, 1
  %675 = load i32, ptr %660, align 4, !tbaa !21
  %676 = icmp slt i32 %674, %675
  br i1 %676, label %677, label %985, !llvm.loop !54

677:                                              ; preds = %668, %673
  %678 = phi i32 [ %675, %673 ], [ %670, %668 ]
  %679 = phi i32 [ %674, %673 ], [ 0, %668 ]
  %680 = load ptr, ptr %661, align 8, !tbaa !3
  %681 = load i32, ptr %656, align 8, !tbaa !22
  %682 = mul nsw i32 %681, %650
  %683 = add nsw i32 %682, %671
  %684 = load i32, ptr %662, align 4, !tbaa !32
  %685 = mul nsw i32 %683, %684
  %686 = mul nsw i32 %678, %649
  %687 = add i32 %686, %679
  %688 = add i32 %687, %685
  %689 = shl i32 %688, 3
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, ptr %680, i64 %690
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 18), i8 0, i64 256, i1 false)
  %692 = load i32, ptr %663, align 8, !tbaa !51
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %693
  %695 = call fastcc i32 @njGetVLC(ptr noundef nonnull %694, ptr noundef null)
  %696 = load i32, ptr %664, align 4, !tbaa !55
  %697 = add nsw i32 %696, %695
  store i32 %697, ptr %664, align 4, !tbaa !55
  %698 = load i32, ptr %665, align 8, !tbaa !23
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %699
  %701 = load i8, ptr %700, align 8, !tbaa !13
  %702 = zext i8 %701 to i32
  %703 = mul nsw i32 %697, %702
  store i32 %703, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 18), align 8, !tbaa !56
  br label %704

704:                                              ; preds = %723, %677
  %705 = phi i32 [ 0, %677 ], [ %721, %723 ]
  %706 = load i32, ptr %666, align 4, !tbaa !52
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 15, i64 %707
  %709 = call fastcc i32 @njGetVLC(ptr noundef nonnull %708, ptr noundef nonnull %3)
  %710 = load i8, ptr %3, align 1
  %711 = icmp eq i8 %710, 0
  br i1 %711, label %736, label %712

712:                                              ; preds = %704
  %713 = zext i8 %710 to i32
  %714 = and i32 %713, 15
  %715 = icmp eq i32 %714, 0
  %716 = icmp ne i8 %710, -16
  %717 = and i1 %716, %715
  br i1 %717, label %981, label %718

718:                                              ; preds = %712
  %719 = lshr i32 %713, 4
  %720 = add nuw nsw i32 %705, 1
  %721 = add nuw nsw i32 %720, %719
  %722 = icmp ugt i32 %721, 63
  br i1 %722, label %981, label %723

723:                                              ; preds = %718
  %724 = load i32, ptr %665, align 8, !tbaa !23
  %725 = sext i32 %724 to i64
  %726 = zext nneg i32 %721 to i64
  %727 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 14, i64 %725, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !13
  %729 = zext i8 %728 to i32
  %730 = mul nsw i32 %709, %729
  %731 = getelementptr inbounds [64 x i8], ptr @njZZ, i64 0, i64 %726
  %732 = load i8, ptr %731, align 1, !tbaa !13
  %733 = sext i8 %732 to i64
  %734 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %733
  store i32 %730, ptr %734, align 4, !tbaa !56
  %735 = icmp eq i32 %721, 63
  br i1 %735, label %736, label %704, !llvm.loop !57

736:                                              ; preds = %723, %704
  br label %737

737:                                              ; preds = %736, %820
  %738 = phi i64 [ %829, %820 ], [ 0, %736 ]
  %739 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %738
  %740 = getelementptr inbounds i32, ptr %739, i64 4
  %741 = load i32, ptr %740, align 8, !tbaa !56
  %742 = shl i32 %741, 11
  %743 = getelementptr inbounds i32, ptr %739, i64 6
  %744 = load i32, ptr %743, align 8, !tbaa !56
  %745 = or i32 %742, %744
  %746 = getelementptr inbounds i32, ptr %739, i64 2
  %747 = load i32, ptr %746, align 8, !tbaa !56
  %748 = or i32 %745, %747
  %749 = getelementptr inbounds i32, ptr %739, i64 1
  %750 = load i32, ptr %749, align 4, !tbaa !56
  %751 = or i32 %748, %750
  %752 = getelementptr inbounds i32, ptr %739, i64 7
  %753 = load i32, ptr %752, align 4, !tbaa !56
  %754 = or i32 %751, %753
  %755 = getelementptr inbounds i32, ptr %739, i64 5
  %756 = load i32, ptr %755, align 4, !tbaa !56
  %757 = or i32 %754, %756
  %758 = getelementptr inbounds i32, ptr %739, i64 3
  %759 = load i32, ptr %758, align 4, !tbaa !56
  %760 = or i32 %757, %759
  %761 = icmp eq i32 %760, 0
  %762 = load i32, ptr %739, align 8, !tbaa !56
  br i1 %761, label %763, label %765

763:                                              ; preds = %737
  %764 = shl i32 %762, 3
  br label %820

765:                                              ; preds = %737
  %766 = shl i32 %762, 11
  %767 = or disjoint i32 %766, 128
  %768 = add nsw i32 %753, %750
  %769 = mul nsw i32 %768, 565
  %770 = mul nsw i32 %750, 2276
  %771 = add nsw i32 %769, %770
  %772 = mul i32 %753, -3406
  %773 = add i32 %769, %772
  %774 = add nsw i32 %759, %756
  %775 = mul nsw i32 %774, 2408
  %776 = mul i32 %756, -799
  %777 = add i32 %775, %776
  %778 = mul i32 %759, -4017
  %779 = add i32 %775, %778
  %780 = add nsw i32 %767, %742
  %781 = sub nsw i32 %767, %742
  %782 = add nsw i32 %747, %744
  %783 = mul nsw i32 %782, 1108
  %784 = mul i32 %744, -3784
  %785 = add i32 %783, %784
  %786 = mul nsw i32 %747, 1568
  %787 = add nsw i32 %783, %786
  %788 = add nsw i32 %777, %771
  %789 = sub nsw i32 %771, %777
  %790 = add nsw i32 %779, %773
  %791 = sub nsw i32 %773, %779
  %792 = add nsw i32 %780, %787
  %793 = sub nsw i32 %780, %787
  %794 = add nsw i32 %781, %785
  %795 = sub nsw i32 %781, %785
  %796 = add nsw i32 %789, %791
  %797 = mul nsw i32 %796, 181
  %798 = add nsw i32 %797, 128
  %799 = ashr i32 %798, 8
  %800 = sub nsw i32 %789, %791
  %801 = mul nsw i32 %800, 181
  %802 = add nsw i32 %801, 128
  %803 = ashr i32 %802, 8
  %804 = add nsw i32 %792, %788
  %805 = ashr i32 %804, 8
  %806 = add nsw i32 %799, %794
  %807 = ashr i32 %806, 8
  %808 = add nsw i32 %803, %795
  %809 = ashr i32 %808, 8
  %810 = add nsw i32 %793, %790
  %811 = ashr i32 %810, 8
  %812 = sub nsw i32 %793, %790
  %813 = ashr i32 %812, 8
  %814 = sub nsw i32 %795, %803
  %815 = ashr i32 %814, 8
  %816 = sub nsw i32 %794, %799
  %817 = ashr i32 %816, 8
  %818 = sub nsw i32 %792, %788
  %819 = ashr i32 %818, 8
  br label %820

820:                                              ; preds = %765, %763
  %821 = phi i32 [ %819, %765 ], [ %764, %763 ]
  %822 = phi i32 [ %817, %765 ], [ %764, %763 ]
  %823 = phi i32 [ %815, %765 ], [ %764, %763 ]
  %824 = phi i32 [ %813, %765 ], [ %764, %763 ]
  %825 = phi i32 [ %811, %765 ], [ %764, %763 ]
  %826 = phi i32 [ %809, %765 ], [ %764, %763 ]
  %827 = phi i32 [ %807, %765 ], [ %764, %763 ]
  %828 = phi i32 [ %805, %765 ], [ %764, %763 ]
  store i32 %821, ptr %752, align 4, !tbaa !56
  store i32 %822, ptr %743, align 8
  store i32 %823, ptr %755, align 4
  store i32 %824, ptr %740, align 8
  store i32 %825, ptr %758, align 4
  store i32 %826, ptr %746, align 8
  store i32 %827, ptr %749, align 4
  store i32 %828, ptr %739, align 8
  %829 = add nuw nsw i64 %738, 8
  %830 = icmp ult i64 %738, 56
  br i1 %830, label %737, label %831, !llvm.loop !58

831:                                              ; preds = %820, %978
  %832 = phi i64 [ %979, %978 ], [ 0, %820 ]
  %833 = getelementptr inbounds %struct._nj_ctx, ptr @nj, i64 0, i32 18, i64 %832
  %834 = getelementptr inbounds i8, ptr %691, i64 %832
  %835 = load i32, ptr %662, align 4, !tbaa !32
  %836 = getelementptr inbounds i32, ptr %833, i64 32
  %837 = load i32, ptr %836, align 4, !tbaa !56
  %838 = shl i32 %837, 8
  %839 = getelementptr inbounds i32, ptr %833, i64 48
  %840 = load i32, ptr %839, align 4, !tbaa !56
  %841 = or i32 %838, %840
  %842 = getelementptr inbounds i32, ptr %833, i64 16
  %843 = load i32, ptr %842, align 4, !tbaa !56
  %844 = or i32 %841, %843
  %845 = getelementptr inbounds i32, ptr %833, i64 8
  %846 = load i32, ptr %845, align 4, !tbaa !56
  %847 = or i32 %844, %846
  %848 = getelementptr inbounds i32, ptr %833, i64 56
  %849 = load i32, ptr %848, align 4, !tbaa !56
  %850 = or i32 %847, %849
  %851 = getelementptr inbounds i32, ptr %833, i64 40
  %852 = load i32, ptr %851, align 4, !tbaa !56
  %853 = or i32 %850, %852
  %854 = getelementptr inbounds i32, ptr %833, i64 24
  %855 = load i32, ptr %854, align 4, !tbaa !56
  %856 = or i32 %853, %855
  %857 = icmp eq i32 %856, 0
  %858 = load i32, ptr %833, align 4, !tbaa !56
  br i1 %857, label %859, label %874

859:                                              ; preds = %831
  %860 = add nsw i32 %858, 32
  %861 = ashr i32 %860, 6
  %862 = call i32 @llvm.smin.i32(i32 %861, i32 127)
  %863 = call i32 @llvm.smax.i32(i32 %862, i32 -128)
  %864 = trunc i32 %863 to i8
  %865 = xor i8 %864, -128
  %866 = sext i32 %835 to i64
  store i8 %865, ptr %834, align 1, !tbaa !13
  %867 = getelementptr inbounds i8, ptr %834, i64 %866
  store i8 %865, ptr %867, align 1, !tbaa !13
  %868 = getelementptr inbounds i8, ptr %867, i64 %866
  store i8 %865, ptr %868, align 1, !tbaa !13
  %869 = getelementptr inbounds i8, ptr %868, i64 %866
  store i8 %865, ptr %869, align 1, !tbaa !13
  %870 = getelementptr inbounds i8, ptr %869, i64 %866
  store i8 %865, ptr %870, align 1, !tbaa !13
  %871 = getelementptr inbounds i8, ptr %870, i64 %866
  store i8 %865, ptr %871, align 1, !tbaa !13
  %872 = getelementptr inbounds i8, ptr %871, i64 %866
  store i8 %865, ptr %872, align 1, !tbaa !13
  %873 = getelementptr inbounds i8, ptr %872, i64 %866
  store i8 %865, ptr %873, align 1, !tbaa !13
  br label %978

874:                                              ; preds = %831
  %875 = shl i32 %858, 8
  %876 = add nsw i32 %875, 8192
  %877 = add nsw i32 %849, %846
  %878 = mul nsw i32 %877, 565
  %879 = add nsw i32 %878, 4
  %880 = mul nsw i32 %846, 2276
  %881 = add nsw i32 %879, %880
  %882 = ashr i32 %881, 3
  %883 = mul i32 %849, -3406
  %884 = add i32 %879, %883
  %885 = ashr i32 %884, 3
  %886 = add nsw i32 %855, %852
  %887 = mul nsw i32 %886, 2408
  %888 = or disjoint i32 %887, 4
  %889 = mul i32 %852, -799
  %890 = add i32 %888, %889
  %891 = ashr i32 %890, 3
  %892 = mul i32 %855, -4017
  %893 = add i32 %888, %892
  %894 = ashr i32 %893, 3
  %895 = add nsw i32 %876, %838
  %896 = sub nsw i32 %876, %838
  %897 = add nsw i32 %843, %840
  %898 = mul nsw i32 %897, 1108
  %899 = add nsw i32 %898, 4
  %900 = mul i32 %840, -3784
  %901 = add i32 %899, %900
  %902 = ashr i32 %901, 3
  %903 = mul nsw i32 %843, 1568
  %904 = add nsw i32 %899, %903
  %905 = ashr i32 %904, 3
  %906 = add nsw i32 %891, %882
  %907 = sub nsw i32 %882, %891
  %908 = add nsw i32 %894, %885
  %909 = sub nsw i32 %885, %894
  %910 = add nsw i32 %895, %905
  %911 = sub nsw i32 %895, %905
  %912 = add nsw i32 %896, %902
  %913 = sub nsw i32 %896, %902
  %914 = add nsw i32 %907, %909
  %915 = mul nsw i32 %914, 181
  %916 = add nsw i32 %915, 128
  %917 = ashr i32 %916, 8
  %918 = sub nsw i32 %907, %909
  %919 = mul nsw i32 %918, 181
  %920 = add nsw i32 %919, 128
  %921 = ashr i32 %920, 8
  %922 = add nsw i32 %906, %910
  %923 = ashr i32 %922, 14
  %924 = call i32 @llvm.smin.i32(i32 %923, i32 127)
  %925 = call i32 @llvm.smax.i32(i32 %924, i32 -128)
  %926 = trunc i32 %925 to i8
  %927 = xor i8 %926, -128
  store i8 %927, ptr %834, align 1, !tbaa !13
  %928 = sext i32 %835 to i64
  %929 = getelementptr inbounds i8, ptr %834, i64 %928
  %930 = add nsw i32 %917, %912
  %931 = ashr i32 %930, 14
  %932 = call i32 @llvm.smin.i32(i32 %931, i32 127)
  %933 = call i32 @llvm.smax.i32(i32 %932, i32 -128)
  %934 = trunc i32 %933 to i8
  %935 = xor i8 %934, -128
  store i8 %935, ptr %929, align 1, !tbaa !13
  %936 = getelementptr inbounds i8, ptr %929, i64 %928
  %937 = add nsw i32 %921, %913
  %938 = ashr i32 %937, 14
  %939 = call i32 @llvm.smin.i32(i32 %938, i32 127)
  %940 = call i32 @llvm.smax.i32(i32 %939, i32 -128)
  %941 = trunc i32 %940 to i8
  %942 = xor i8 %941, -128
  store i8 %942, ptr %936, align 1, !tbaa !13
  %943 = getelementptr inbounds i8, ptr %936, i64 %928
  %944 = add nsw i32 %908, %911
  %945 = ashr i32 %944, 14
  %946 = call i32 @llvm.smin.i32(i32 %945, i32 127)
  %947 = call i32 @llvm.smax.i32(i32 %946, i32 -128)
  %948 = trunc i32 %947 to i8
  %949 = xor i8 %948, -128
  store i8 %949, ptr %943, align 1, !tbaa !13
  %950 = getelementptr inbounds i8, ptr %943, i64 %928
  %951 = sub nsw i32 %911, %908
  %952 = ashr i32 %951, 14
  %953 = call i32 @llvm.smin.i32(i32 %952, i32 127)
  %954 = call i32 @llvm.smax.i32(i32 %953, i32 -128)
  %955 = trunc i32 %954 to i8
  %956 = xor i8 %955, -128
  store i8 %956, ptr %950, align 1, !tbaa !13
  %957 = getelementptr inbounds i8, ptr %950, i64 %928
  %958 = sub nsw i32 %913, %921
  %959 = ashr i32 %958, 14
  %960 = call i32 @llvm.smin.i32(i32 %959, i32 127)
  %961 = call i32 @llvm.smax.i32(i32 %960, i32 -128)
  %962 = trunc i32 %961 to i8
  %963 = xor i8 %962, -128
  store i8 %963, ptr %957, align 1, !tbaa !13
  %964 = getelementptr inbounds i8, ptr %957, i64 %928
  %965 = sub nsw i32 %912, %917
  %966 = ashr i32 %965, 14
  %967 = call i32 @llvm.smin.i32(i32 %966, i32 127)
  %968 = call i32 @llvm.smax.i32(i32 %967, i32 -128)
  %969 = trunc i32 %968 to i8
  %970 = xor i8 %969, -128
  store i8 %970, ptr %964, align 1, !tbaa !13
  %971 = getelementptr inbounds i8, ptr %964, i64 %928
  %972 = sub nsw i32 %910, %906
  %973 = ashr i32 %972, 14
  %974 = call i32 @llvm.smin.i32(i32 %973, i32 127)
  %975 = call i32 @llvm.smax.i32(i32 %974, i32 -128)
  %976 = trunc i32 %975 to i8
  %977 = xor i8 %976, -128
  store i8 %977, ptr %971, align 1, !tbaa !13
  br label %978

978:                                              ; preds = %874, %859
  %979 = add nuw nsw i64 %832, 1
  %980 = icmp eq i64 %979, 8
  br i1 %980, label %982, label %831, !llvm.loop !59

981:                                              ; preds = %718, %712
  store i32 5, ptr @nj, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %1100

982:                                              ; preds = %978
  %983 = load i32, ptr @nj, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %673, label %1100, !llvm.loop !60

985:                                              ; preds = %673
  %986 = load i32, ptr %656, align 8, !tbaa !22
  br label %987

987:                                              ; preds = %985, %668
  %988 = phi i32 [ %986, %985 ], [ %669, %668 ]
  %989 = phi i32 [ %675, %985 ], [ %670, %668 ]
  %990 = add nuw nsw i32 %671, 1
  %991 = icmp slt i32 %990, %988
  br i1 %991, label %668, label %992, !llvm.loop !61

992:                                              ; preds = %987
  %993 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  br label %994

994:                                              ; preds = %992, %652
  %995 = phi i32 [ %993, %992 ], [ %653, %652 ]
  %996 = add nuw nsw i32 %655, 1
  %997 = getelementptr inbounds %struct._nj_cmp, ptr %654, i64 1
  %998 = icmp slt i32 %996, %995
  br i1 %998, label %652, label %999, !llvm.loop !62

999:                                              ; preds = %994, %646
  %1000 = phi i32 [ %647, %646 ], [ %995, %994 ]
  %1001 = phi i32 [ %648, %646 ], [ %995, %994 ]
  %1002 = add nsw i32 %649, 1
  %1003 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 6), align 8, !tbaa !28
  %1004 = icmp slt i32 %1002, %1003
  br i1 %1004, label %1009, label %1005

1005:                                             ; preds = %999
  %1006 = add nsw i32 %650, 1
  %1007 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 7), align 4, !tbaa !29
  %1008 = icmp slt i32 %1006, %1007
  br i1 %1008, label %1009, label %1032

1009:                                             ; preds = %1005, %999
  %1010 = phi i32 [ 0, %1005 ], [ %1002, %999 ]
  %1011 = phi i32 [ %1006, %1005 ], [ %650, %999 ]
  %1012 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %646, label %1014

1014:                                             ; preds = %1009
  %1015 = add nsw i32 %645, -1
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %640

1017:                                             ; preds = %1014
  %1018 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %1019 = and i32 %1018, 248
  store i32 %1019, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %1020 = call fastcc i32 @njGetBits(i32 noundef 16)
  %1021 = and i32 %1020, 65528
  %1022 = icmp eq i32 %1021, 65488
  %1023 = and i32 %1020, 7
  %1024 = icmp eq i32 %1023, %639
  %1025 = select i1 %1022, i1 %1024, i1 false
  br i1 %1025, label %1027, label %1026

1026:                                             ; preds = %1017
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

1027:                                             ; preds = %1017
  %1028 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %1029 = add nuw nsw i32 %639, 1
  %1030 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 19), align 8, !tbaa !50
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 9), align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 9), align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 9), align 4, !tbaa !55
  %1031 = and i32 %1029, 7
  br label %634

1032:                                             ; preds = %1005
  store i32 6, ptr @nj, align 8, !tbaa !18
  br label %1100

1033:                                             ; preds = %47
  %1034 = icmp ult i32 %49, 2
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1033
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1049

1036:                                             ; preds = %1033
  %1037 = load i8, ptr %48, align 1, !tbaa !13
  %1038 = zext i8 %1037 to i32
  %1039 = shl nuw nsw i32 %1038, 8
  %1040 = getelementptr inbounds i8, ptr %43, i64 3
  %1041 = load i8, ptr %1040, align 1, !tbaa !13
  %1042 = zext i8 %1041 to i32
  %1043 = or disjoint i32 %1039, %1042
  %1044 = icmp ult i32 %49, %1043
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1036
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1049

1046:                                             ; preds = %1036
  %1047 = add nsw i32 %40, -4
  %1048 = add nsw i32 %1043, -2
  br label %1049

1049:                                             ; preds = %1046, %1045, %1035
  %1050 = phi i32 [ 5, %1035 ], [ 5, %1045 ], [ %33, %1046 ]
  %1051 = phi i32 [ 5, %1035 ], [ 5, %1045 ], [ %34, %1046 ]
  %1052 = phi i32 [ 5, %1035 ], [ 5, %1045 ], [ %35, %1046 ]
  %1053 = phi i32 [ 5, %1035 ], [ 5, %1045 ], [ %36, %1046 ]
  %1054 = phi i32 [ 5, %1035 ], [ 5, %1045 ], [ %37, %1046 ]
  %1055 = phi i32 [ 5, %1035 ], [ 5, %1045 ], [ 0, %1046 ]
  %1056 = phi i32 [ %49, %1035 ], [ %49, %1045 ], [ %1047, %1046 ]
  %1057 = phi i64 [ 2, %1035 ], [ 2, %1045 ], [ 4, %1046 ]
  %1058 = phi i32 [ %51, %1035 ], [ %1043, %1045 ], [ %1048, %1046 ]
  %1059 = getelementptr inbounds i8, ptr %43, i64 %1057
  %1060 = sext i32 %1058 to i64
  %1061 = getelementptr inbounds i8, ptr %1059, i64 %1060
  store ptr %1061, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %1062 = sub nsw i32 %1056, %1058
  store i32 %1062, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %1063 = icmp slt i32 %1062, 0
  br i1 %1063, label %1064, label %1100

1064:                                             ; preds = %1049
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

1065:                                             ; preds = %47
  %1066 = and i8 %53, -16
  %1067 = icmp eq i8 %1066, -32
  br i1 %1067, label %1068, label %1694

1068:                                             ; preds = %1065
  %1069 = icmp ult i32 %49, 2
  br i1 %1069, label %1070, label %1071

1070:                                             ; preds = %1068
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1084

1071:                                             ; preds = %1068
  %1072 = load i8, ptr %48, align 1, !tbaa !13
  %1073 = zext i8 %1072 to i32
  %1074 = shl nuw nsw i32 %1073, 8
  %1075 = getelementptr inbounds i8, ptr %43, i64 3
  %1076 = load i8, ptr %1075, align 1, !tbaa !13
  %1077 = zext i8 %1076 to i32
  %1078 = or disjoint i32 %1074, %1077
  %1079 = icmp ult i32 %49, %1078
  br i1 %1079, label %1080, label %1081

1080:                                             ; preds = %1071
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1084

1081:                                             ; preds = %1071
  %1082 = add nsw i32 %40, -4
  %1083 = add nsw i32 %1078, -2
  br label %1084

1084:                                             ; preds = %1081, %1080, %1070
  %1085 = phi i32 [ 5, %1070 ], [ 5, %1080 ], [ %33, %1081 ]
  %1086 = phi i32 [ 5, %1070 ], [ 5, %1080 ], [ %34, %1081 ]
  %1087 = phi i32 [ 5, %1070 ], [ 5, %1080 ], [ %35, %1081 ]
  %1088 = phi i32 [ 5, %1070 ], [ 5, %1080 ], [ %36, %1081 ]
  %1089 = phi i32 [ 5, %1070 ], [ 5, %1080 ], [ %37, %1081 ]
  %1090 = phi i32 [ 5, %1070 ], [ 5, %1080 ], [ 0, %1081 ]
  %1091 = phi i32 [ %49, %1070 ], [ %49, %1080 ], [ %1082, %1081 ]
  %1092 = phi i64 [ 2, %1070 ], [ 2, %1080 ], [ 4, %1081 ]
  %1093 = phi i32 [ %51, %1070 ], [ %1078, %1080 ], [ %1083, %1081 ]
  %1094 = getelementptr inbounds i8, ptr %43, i64 %1092
  %1095 = sext i32 %1093 to i64
  %1096 = getelementptr inbounds i8, ptr %1094, i64 %1095
  store ptr %1096, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 1), align 8, !tbaa !11
  %1097 = sub nsw i32 %1091, %1093
  store i32 %1097, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 2), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 3), align 4, !tbaa !14
  %1098 = icmp slt i32 %1097, 0
  br i1 %1098, label %1099, label %1100

1099:                                             ; preds = %1084
  store i32 5, ptr @nj, align 8, !tbaa !18
  br label %1100

1100:                                             ; preds = %982, %1099, %1084, %1064, %1049, %1032, %1026, %981, %626, %594, %587, %568, %563, %553, %552, %542, %538, %526, %519, %507, %500, %423, %410, %404, %246, %233, %228, %65
  %1101 = phi i32 [ 5, %1099 ], [ %1085, %1084 ], [ 5, %1064 ], [ %1050, %1049 ], [ 6, %1032 ], [ 5, %1026 ], [ 5, %981 ], [ 2, %626 ], [ 5, %594 ], [ 5, %587 ], [ 2, %568 ], [ 5, %563 ], [ %33, %553 ], [ 5, %552 ], [ 5, %542 ], [ 5, %538 ], [ %33, %526 ], [ %33, %519 ], [ 5, %507 ], [ %501, %500 ], [ %33, %423 ], [ %411, %410 ], [ %405, %404 ], [ %33, %246 ], [ %234, %233 ], [ %158, %228 ], [ %33, %65 ], [ %983, %982 ]
  %1102 = phi i32 [ 5, %1099 ], [ %1086, %1084 ], [ 5, %1064 ], [ %1051, %1049 ], [ 6, %1032 ], [ 5, %1026 ], [ 5, %981 ], [ 2, %626 ], [ 5, %594 ], [ 5, %587 ], [ 2, %568 ], [ 5, %563 ], [ %34, %553 ], [ 5, %552 ], [ 5, %542 ], [ 5, %538 ], [ %34, %526 ], [ %34, %519 ], [ 5, %507 ], [ %502, %500 ], [ %34, %423 ], [ %411, %410 ], [ %406, %404 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %983, %982 ]
  %1103 = phi i32 [ 5, %1099 ], [ %1087, %1084 ], [ 5, %1064 ], [ %1052, %1049 ], [ 6, %1032 ], [ 5, %1026 ], [ 5, %981 ], [ 2, %626 ], [ 5, %594 ], [ 5, %587 ], [ 2, %568 ], [ 5, %563 ], [ %35, %553 ], [ 5, %552 ], [ 5, %542 ], [ 5, %538 ], [ %35, %526 ], [ %35, %519 ], [ 5, %507 ], [ %503, %500 ], [ %35, %423 ], [ %411, %410 ], [ %407, %404 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %983, %982 ]
  %1104 = phi i32 [ 5, %1099 ], [ %1088, %1084 ], [ 5, %1064 ], [ %1053, %1049 ], [ 6, %1032 ], [ 5, %1026 ], [ 5, %981 ], [ 2, %626 ], [ 5, %594 ], [ 5, %587 ], [ 2, %568 ], [ 5, %563 ], [ %36, %553 ], [ 5, %552 ], [ 5, %542 ], [ 5, %538 ], [ 0, %526 ], [ %36, %519 ], [ 5, %507 ], [ %504, %500 ], [ %35, %423 ], [ %411, %410 ], [ %407, %404 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %983, %982 ]
  %1105 = phi i32 [ 5, %1099 ], [ %1089, %1084 ], [ 5, %1064 ], [ %1054, %1049 ], [ 6, %1032 ], [ 5, %1026 ], [ 5, %981 ], [ 2, %626 ], [ 5, %594 ], [ 5, %587 ], [ 2, %568 ], [ 5, %563 ], [ %37, %553 ], [ 5, %552 ], [ 5, %542 ], [ 5, %538 ], [ 0, %526 ], [ %36, %519 ], [ 5, %507 ], [ %504, %500 ], [ %35, %423 ], [ %411, %410 ], [ %407, %404 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %983, %982 ]
  %1106 = phi i32 [ 5, %1099 ], [ %1090, %1084 ], [ 5, %1064 ], [ %1055, %1049 ], [ 6, %1032 ], [ 5, %1026 ], [ 5, %981 ], [ 2, %626 ], [ 5, %594 ], [ 5, %587 ], [ 2, %568 ], [ 5, %563 ], [ %37, %553 ], [ 5, %552 ], [ 5, %542 ], [ 5, %538 ], [ 0, %526 ], [ %36, %519 ], [ 5, %507 ], [ %504, %500 ], [ %35, %423 ], [ %411, %410 ], [ %407, %404 ], [ %34, %246 ], [ %234, %233 ], [ %159, %228 ], [ %33, %65 ], [ %983, %982 ]
  br label %32, !llvm.loop !60

1107:                                             ; preds = %32
  store i32 0, ptr @nj, align 8, !tbaa !18
  %1108 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %1109 = icmp sgt i32 %1108, 0
  br i1 %1109, label %1110, label %1637

1110:                                             ; preds = %1107, %1558
  %1111 = phi i32 [ %1559, %1558 ], [ 0, %1107 ]
  %1112 = phi ptr [ %1560, %1558 ], [ getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11), %1107 ]
  %1113 = getelementptr inbounds %struct._nj_cmp, ptr %1112, i64 0, i32 3
  %1114 = getelementptr inbounds %struct._nj_cmp, ptr %1112, i64 0, i32 4
  %1115 = getelementptr inbounds %struct._nj_cmp, ptr %1112, i64 0, i32 10
  %1116 = getelementptr inbounds %struct._nj_cmp, ptr %1112, i64 0, i32 5
  br label %1117

1117:                                             ; preds = %1555, %1110
  %1118 = load i32, ptr %1113, align 4, !tbaa !30
  %1119 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %1120 = icmp slt i32 %1118, %1119
  br i1 %1120, label %1125, label %1121

1121:                                             ; preds = %1117
  %1122 = load i32, ptr %1114, align 8, !tbaa !31
  %1123 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %1124 = icmp slt i32 %1122, %1123
  br i1 %1124, label %1389, label %1558

1125:                                             ; preds = %1117
  %1126 = add i32 %1118, -3
  %1127 = load i32, ptr %1114, align 8, !tbaa !31
  %1128 = shl i32 %1118, 1
  %1129 = mul i32 %1127, %1128
  %1130 = sext i32 %1129 to i64
  %1131 = call noalias ptr @malloc(i64 noundef %1130) #14
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1133, label %1134

1133:                                             ; preds = %1125
  store i32 3, ptr @nj, align 8, !tbaa !18
  br label %1692

1134:                                             ; preds = %1125
  %1135 = load ptr, ptr %1115, align 8, !tbaa !3
  %1136 = icmp eq i32 %1127, 0
  br i1 %1136, label %1386, label %1137

1137:                                             ; preds = %1134
  %1138 = icmp sgt i32 %1118, 3
  %1139 = load i32, ptr %1116, align 4, !tbaa !32
  %1140 = sext i32 %1139 to i64
  %1141 = sext i32 %1128 to i64
  %1142 = zext i32 %1126 to i64
  %1143 = add nsw i64 %1142, -1
  %1144 = getelementptr i8, ptr %1135, i64 3
  %1145 = add i32 %1127, -1
  %1146 = zext i32 %1145 to i64
  %1147 = mul nsw i64 %1140, %1146
  %1148 = getelementptr i8, ptr %1144, i64 %1147
  %1149 = getelementptr i8, ptr %1148, i64 %1142
  %1150 = getelementptr i8, ptr %1131, i64 3
  %1151 = mul nsw i64 %1141, %1146
  %1152 = shl nuw nsw i64 %1142, 1
  %1153 = getelementptr i8, ptr %1150, i64 %1151
  %1154 = getelementptr i8, ptr %1153, i64 %1152
  %1155 = getelementptr i8, ptr %1131, i64 3
  %1156 = getelementptr i8, ptr %1131, i64 4
  %1157 = icmp ult i32 %1126, 16
  %1158 = trunc i64 %1143 to i32
  %1159 = shl i32 %1158, 1
  %1160 = icmp ugt i32 %1159, 2147483645
  %1161 = trunc i64 %1143 to i32
  %1162 = shl i32 %1161, 1
  %1163 = icmp ugt i32 %1162, 2147483643
  %1164 = icmp ugt i64 %1143, 2147483647
  %1165 = or i1 %1163, %1164
  %1166 = shl nsw i64 %1143, 1
  %1167 = shl nsw i64 %1143, 1
  %1168 = or i1 %1160, %1165
  %1169 = icmp ult ptr %1144, %1154
  %1170 = icmp ult ptr %1150, %1149
  %1171 = and i1 %1169, %1170
  %1172 = or i32 %1139, %1128
  %1173 = icmp slt i32 %1172, 0
  %1174 = or i1 %1171, %1173
  %1175 = and i64 %1142, 4294967288
  %1176 = icmp eq i64 %1175, %1142
  br label %1177

1177:                                             ; preds = %1340, %1137
  %1178 = phi i64 [ %1385, %1340 ], [ 0, %1137 ]
  %1179 = phi i32 [ %1383, %1340 ], [ %1127, %1137 ]
  %1180 = phi ptr [ %1342, %1340 ], [ %1131, %1137 ]
  %1181 = phi ptr [ %1341, %1340 ], [ %1135, %1137 ]
  %1182 = mul i64 %1178, %1141
  %1183 = getelementptr i8, ptr %1155, i64 %1182
  %1184 = getelementptr i8, ptr %1156, i64 %1182
  %1185 = load i8, ptr %1181, align 1, !tbaa !13
  %1186 = zext i8 %1185 to i32
  %1187 = mul nuw nsw i32 %1186, 139
  %1188 = getelementptr inbounds i8, ptr %1181, i64 1
  %1189 = load i8, ptr %1188, align 1, !tbaa !13
  %1190 = zext i8 %1189 to i32
  %1191 = mul nsw i32 %1190, -11
  %1192 = add nuw nsw i32 %1187, 64
  %1193 = add nsw i32 %1192, %1191
  %1194 = ashr i32 %1193, 7
  %1195 = call i32 @llvm.smin.i32(i32 %1194, i32 255)
  %1196 = call i32 @llvm.smax.i32(i32 %1195, i32 0)
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, ptr %1180, align 1, !tbaa !13
  %1198 = mul nuw nsw i32 %1186, 104
  %1199 = mul nuw nsw i32 %1190, 27
  %1200 = getelementptr inbounds i8, ptr %1181, i64 2
  %1201 = load i8, ptr %1200, align 1, !tbaa !13
  %1202 = zext i8 %1201 to i32
  %1203 = mul nsw i32 %1202, -3
  %1204 = add nuw nsw i32 %1198, 64
  %1205 = add nuw nsw i32 %1204, %1199
  %1206 = add nsw i32 %1205, %1203
  %1207 = ashr i32 %1206, 7
  %1208 = call i32 @llvm.smin.i32(i32 %1207, i32 255)
  %1209 = call i32 @llvm.smax.i32(i32 %1208, i32 0)
  %1210 = trunc i32 %1209 to i8
  %1211 = getelementptr inbounds i8, ptr %1180, i64 1
  store i8 %1210, ptr %1211, align 1, !tbaa !13
  %1212 = mul nuw nsw i32 %1186, 28
  %1213 = mul nuw nsw i32 %1190, 109
  %1214 = mul nsw i32 %1202, -9
  %1215 = add nuw nsw i32 %1212, 64
  %1216 = add nuw nsw i32 %1215, %1213
  %1217 = add nsw i32 %1216, %1214
  %1218 = ashr i32 %1217, 7
  %1219 = call i32 @llvm.smin.i32(i32 %1218, i32 255)
  %1220 = call i32 @llvm.smax.i32(i32 %1219, i32 0)
  %1221 = trunc i32 %1220 to i8
  %1222 = getelementptr inbounds i8, ptr %1180, i64 2
  store i8 %1221, ptr %1222, align 1, !tbaa !13
  br i1 %1138, label %1223, label %1340

1223:                                             ; preds = %1177
  br i1 %1157, label %1288, label %1224

1224:                                             ; preds = %1223
  %1225 = getelementptr i8, ptr %1183, i64 %1166
  %1226 = icmp ult ptr %1225, %1183
  %1227 = getelementptr i8, ptr %1184, i64 %1167
  %1228 = icmp ult ptr %1227, %1184
  %1229 = or i1 %1168, %1226
  %1230 = or i1 %1229, %1228
  br i1 %1230, label %1288, label %1231

1231:                                             ; preds = %1224
  br i1 %1174, label %1288, label %1232

1232:                                             ; preds = %1231
  %1233 = insertelement <8 x i8> poison, i8 %1201, i64 7
  %1234 = insertelement <8 x i8> poison, i8 %1189, i64 7
  %1235 = insertelement <8 x i8> poison, i8 %1185, i64 7
  %1236 = getelementptr i8, ptr %1180, i64 -1
  br label %1237

1237:                                             ; preds = %1237, %1232
  %1238 = phi i64 [ 0, %1232 ], [ %1282, %1237 ]
  %1239 = phi <8 x i8> [ %1233, %1232 ], [ %1245, %1237 ]
  %1240 = phi <8 x i8> [ %1234, %1232 ], [ %1246, %1237 ]
  %1241 = phi <8 x i8> [ %1235, %1232 ], [ %1247, %1237 ]
  %1242 = trunc i64 %1238 to i32
  %1243 = or disjoint i64 %1238, 3
  %1244 = getelementptr inbounds i8, ptr %1181, i64 %1243
  %1245 = load <8 x i8>, ptr %1244, align 1, !tbaa !13, !alias.scope !64, !noalias !67
  %1246 = shufflevector <8 x i8> %1239, <8 x i8> %1245, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %1247 = shufflevector <8 x i8> %1240, <8 x i8> %1246, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %1248 = shufflevector <8 x i8> %1241, <8 x i8> %1247, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %1249 = zext <8 x i8> %1248 to <8 x i32>
  %1250 = mul nsw <8 x i32> %1249, <i32 -9, i32 -9, i32 -9, i32 -9, i32 -9, i32 -9, i32 -9, i32 -9>
  %1251 = zext <8 x i8> %1247 to <8 x i32>
  %1252 = mul nuw nsw <8 x i32> %1251, <i32 111, i32 111, i32 111, i32 111, i32 111, i32 111, i32 111, i32 111>
  %1253 = zext <8 x i8> %1246 to <8 x i32>
  %1254 = mul nuw nsw <8 x i32> %1253, <i32 29, i32 29, i32 29, i32 29, i32 29, i32 29, i32 29, i32 29>
  %1255 = zext <8 x i8> %1245 to <8 x i32>
  %1256 = mul nsw <8 x i32> %1255, <i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3>
  %1257 = add nuw nsw <8 x i32> %1254, <i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64>
  %1258 = add nuw nsw <8 x i32> %1257, %1252
  %1259 = add nsw <8 x i32> %1258, %1250
  %1260 = add nsw <8 x i32> %1259, %1256
  %1261 = ashr <8 x i32> %1260, <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %1262 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %1261, <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>)
  %1263 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %1262, <8 x i32> zeroinitializer)
  %1264 = trunc <8 x i32> %1263 to <8 x i8>
  %1265 = mul nsw <8 x i32> %1249, <i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3>
  %1266 = mul nuw nsw <8 x i32> %1251, <i32 29, i32 29, i32 29, i32 29, i32 29, i32 29, i32 29, i32 29>
  %1267 = mul nuw nsw <8 x i32> %1253, <i32 111, i32 111, i32 111, i32 111, i32 111, i32 111, i32 111, i32 111>
  %1268 = mul nsw <8 x i32> %1255, <i32 -9, i32 -9, i32 -9, i32 -9, i32 -9, i32 -9, i32 -9, i32 -9>
  %1269 = add nuw nsw <8 x i32> %1267, <i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64>
  %1270 = add nuw nsw <8 x i32> %1269, %1266
  %1271 = add nsw <8 x i32> %1270, %1265
  %1272 = add nsw <8 x i32> %1271, %1268
  %1273 = ashr <8 x i32> %1272, <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %1274 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %1273, <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>)
  %1275 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %1274, <8 x i32> zeroinitializer)
  %1276 = trunc <8 x i32> %1275 to <8 x i8>
  %1277 = shl i32 %1242, 1
  %1278 = or disjoint i32 %1277, 4
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr i8, ptr %1236, i64 %1279
  %1281 = shufflevector <8 x i8> %1264, <8 x i8> %1276, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %1281, ptr %1280, align 1, !tbaa !13
  %1282 = add nuw i64 %1238, 8
  %1283 = icmp eq i64 %1282, %1175
  br i1 %1283, label %1284, label %1237, !llvm.loop !69

1284:                                             ; preds = %1237
  %1285 = extractelement <8 x i8> %1245, i64 7
  %1286 = extractelement <8 x i8> %1245, i64 6
  %1287 = extractelement <8 x i8> %1245, i64 5
  br i1 %1176, label %1340, label %1288

1288:                                             ; preds = %1231, %1224, %1223, %1284
  %1289 = phi i8 [ %1285, %1284 ], [ %1201, %1223 ], [ %1201, %1224 ], [ %1201, %1231 ]
  %1290 = phi i8 [ %1286, %1284 ], [ %1189, %1223 ], [ %1189, %1224 ], [ %1189, %1231 ]
  %1291 = phi i8 [ %1287, %1284 ], [ %1185, %1223 ], [ %1185, %1224 ], [ %1185, %1231 ]
  %1292 = phi i64 [ %1175, %1284 ], [ 0, %1223 ], [ 0, %1224 ], [ 0, %1231 ]
  br label %1293

1293:                                             ; preds = %1288, %1293
  %1294 = phi i8 [ %1307, %1293 ], [ %1289, %1288 ]
  %1295 = phi i8 [ %1294, %1293 ], [ %1290, %1288 ]
  %1296 = phi i8 [ %1295, %1293 ], [ %1291, %1288 ]
  %1297 = phi i64 [ %1300, %1293 ], [ %1292, %1288 ]
  %1298 = zext i8 %1296 to i32
  %1299 = mul nsw i32 %1298, -9
  %1300 = add nuw nsw i64 %1297, 1
  %1301 = zext i8 %1295 to i32
  %1302 = mul nuw nsw i32 %1301, 111
  %1303 = zext i8 %1294 to i32
  %1304 = mul nuw nsw i32 %1303, 29
  %1305 = add nuw nsw i64 %1297, 3
  %1306 = getelementptr inbounds i8, ptr %1181, i64 %1305
  %1307 = load i8, ptr %1306, align 1, !tbaa !13
  %1308 = zext i8 %1307 to i32
  %1309 = mul nsw i32 %1308, -3
  %1310 = add nuw nsw i32 %1304, 64
  %1311 = add nuw nsw i32 %1310, %1302
  %1312 = add nsw i32 %1311, %1299
  %1313 = add nsw i32 %1312, %1309
  %1314 = ashr i32 %1313, 7
  %1315 = call i32 @llvm.smin.i32(i32 %1314, i32 255)
  %1316 = call i32 @llvm.smax.i32(i32 %1315, i32 0)
  %1317 = trunc i32 %1316 to i8
  %1318 = shl i64 %1297, 33
  %1319 = add nuw i64 %1318, 12884901888
  %1320 = ashr exact i64 %1319, 32
  %1321 = getelementptr inbounds i8, ptr %1180, i64 %1320
  store i8 %1317, ptr %1321, align 1, !tbaa !13
  %1322 = mul nsw i32 %1298, -3
  %1323 = mul nuw nsw i32 %1301, 29
  %1324 = mul nuw nsw i32 %1303, 111
  %1325 = mul nsw i32 %1308, -9
  %1326 = add nuw nsw i32 %1324, 64
  %1327 = add nuw nsw i32 %1326, %1323
  %1328 = add nsw i32 %1327, %1322
  %1329 = add nsw i32 %1328, %1325
  %1330 = ashr i32 %1329, 7
  %1331 = call i32 @llvm.smin.i32(i32 %1330, i32 255)
  %1332 = call i32 @llvm.smax.i32(i32 %1331, i32 0)
  %1333 = trunc i32 %1332 to i8
  %1334 = trunc i64 %1297 to i32
  %1335 = shl i32 %1334, 1
  %1336 = add nsw i32 %1335, 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds i8, ptr %1180, i64 %1337
  store i8 %1333, ptr %1338, align 1, !tbaa !13
  %1339 = icmp eq i64 %1300, %1142
  br i1 %1339, label %1340, label %1293, !llvm.loop !70

1340:                                             ; preds = %1293, %1284, %1177
  %1341 = getelementptr inbounds i8, ptr %1181, i64 %1140
  %1342 = getelementptr inbounds i8, ptr %1180, i64 %1141
  %1343 = getelementptr inbounds i8, ptr %1341, i64 -1
  %1344 = load i8, ptr %1343, align 1, !tbaa !13
  %1345 = zext i8 %1344 to i32
  %1346 = mul nuw nsw i32 %1345, 28
  %1347 = getelementptr inbounds i8, ptr %1341, i64 -2
  %1348 = load i8, ptr %1347, align 1, !tbaa !13
  %1349 = zext i8 %1348 to i32
  %1350 = mul nuw nsw i32 %1349, 109
  %1351 = getelementptr inbounds i8, ptr %1341, i64 -3
  %1352 = load i8, ptr %1351, align 1, !tbaa !13
  %1353 = zext i8 %1352 to i32
  %1354 = mul nsw i32 %1353, -9
  %1355 = add nuw nsw i32 %1346, 64
  %1356 = add nuw nsw i32 %1355, %1350
  %1357 = add nsw i32 %1356, %1354
  %1358 = ashr i32 %1357, 7
  %1359 = call i32 @llvm.smin.i32(i32 %1358, i32 255)
  %1360 = call i32 @llvm.smax.i32(i32 %1359, i32 0)
  %1361 = trunc i32 %1360 to i8
  %1362 = getelementptr inbounds i8, ptr %1342, i64 -3
  store i8 %1361, ptr %1362, align 1, !tbaa !13
  %1363 = mul nuw nsw i32 %1345, 104
  %1364 = mul nuw nsw i32 %1349, 27
  %1365 = mul nsw i32 %1353, -3
  %1366 = add nuw nsw i32 %1363, 64
  %1367 = add nuw nsw i32 %1366, %1364
  %1368 = add nsw i32 %1367, %1365
  %1369 = ashr i32 %1368, 7
  %1370 = call i32 @llvm.smin.i32(i32 %1369, i32 255)
  %1371 = call i32 @llvm.smax.i32(i32 %1370, i32 0)
  %1372 = trunc i32 %1371 to i8
  %1373 = getelementptr inbounds i8, ptr %1342, i64 -2
  store i8 %1372, ptr %1373, align 1, !tbaa !13
  %1374 = mul nuw nsw i32 %1345, 139
  %1375 = mul nsw i32 %1349, -11
  %1376 = add nuw nsw i32 %1374, 64
  %1377 = add nsw i32 %1376, %1375
  %1378 = ashr i32 %1377, 7
  %1379 = call i32 @llvm.smin.i32(i32 %1378, i32 255)
  %1380 = call i32 @llvm.smax.i32(i32 %1379, i32 0)
  %1381 = trunc i32 %1380 to i8
  %1382 = getelementptr inbounds i8, ptr %1342, i64 -1
  store i8 %1381, ptr %1382, align 1, !tbaa !13
  %1383 = add nsw i32 %1179, -1
  %1384 = icmp eq i32 %1383, 0
  %1385 = add i64 %1178, 1
  br i1 %1384, label %1386, label %1177, !llvm.loop !71

1386:                                             ; preds = %1340, %1134
  store i32 %1128, ptr %1113, align 4, !tbaa !30
  store i32 %1128, ptr %1116, align 4, !tbaa !32
  call void @free(ptr noundef %1135) #13
  store ptr %1131, ptr %1115, align 8, !tbaa !3
  %1387 = load i32, ptr @nj, align 8, !tbaa !18
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1389, label %1692

1389:                                             ; preds = %1121, %1386
  %1390 = load i32, ptr %1114, align 8, !tbaa !31
  %1391 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %1392 = icmp slt i32 %1390, %1391
  br i1 %1392, label %1393, label %1555

1393:                                             ; preds = %1389
  %1394 = load i32, ptr %1113, align 4, !tbaa !30
  %1395 = load i32, ptr %1116, align 4, !tbaa !32
  %1396 = shl nsw i32 %1395, 1
  %1397 = shl i32 %1390, 1
  %1398 = mul i32 %1394, %1397
  %1399 = sext i32 %1398 to i64
  %1400 = call noalias ptr @malloc(i64 noundef %1399) #14
  %1401 = icmp eq ptr %1400, null
  br i1 %1401, label %1414, label %1402

1402:                                             ; preds = %1393
  %1403 = icmp sgt i32 %1394, 0
  br i1 %1403, label %1404, label %1552

1404:                                             ; preds = %1402
  %1405 = sext i32 %1395 to i64
  %1406 = zext nneg i32 %1394 to i64
  %1407 = sext i32 %1396 to i64
  %1408 = add nsw i32 %1390, -3
  %1409 = icmp eq i32 %1408, 0
  %1410 = sub nsw i32 0, %1395
  %1411 = sext i32 %1410 to i64
  %1412 = sub nsw i32 0, %1396
  %1413 = sext i32 %1412 to i64
  br label %1415

1414:                                             ; preds = %1393
  store i32 3, ptr @nj, align 8, !tbaa !18
  br label %1692

1415:                                             ; preds = %1507, %1404
  %1416 = phi i64 [ 0, %1404 ], [ %1550, %1507 ]
  %1417 = load ptr, ptr %1115, align 8, !tbaa !3
  %1418 = getelementptr inbounds i8, ptr %1417, i64 %1416
  %1419 = getelementptr inbounds i8, ptr %1400, i64 %1416
  %1420 = load i8, ptr %1418, align 1, !tbaa !13
  %1421 = zext i8 %1420 to i32
  %1422 = mul nuw nsw i32 %1421, 139
  %1423 = getelementptr inbounds i8, ptr %1418, i64 %1405
  %1424 = load i8, ptr %1423, align 1, !tbaa !13
  %1425 = zext i8 %1424 to i32
  %1426 = mul nsw i32 %1425, -11
  %1427 = add nuw nsw i32 %1422, 64
  %1428 = add nsw i32 %1427, %1426
  %1429 = ashr i32 %1428, 7
  %1430 = call i32 @llvm.smin.i32(i32 %1429, i32 255)
  %1431 = call i32 @llvm.smax.i32(i32 %1430, i32 0)
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, ptr %1419, align 1, !tbaa !13
  %1433 = getelementptr inbounds i8, ptr %1419, i64 %1406
  %1434 = mul nuw nsw i32 %1421, 104
  %1435 = mul nuw nsw i32 %1425, 27
  %1436 = getelementptr inbounds i8, ptr %1418, i64 %1407
  %1437 = load i8, ptr %1436, align 1, !tbaa !13
  %1438 = zext i8 %1437 to i32
  %1439 = mul nsw i32 %1438, -3
  %1440 = add nuw nsw i32 %1434, 64
  %1441 = add nuw nsw i32 %1440, %1435
  %1442 = add nsw i32 %1441, %1439
  %1443 = ashr i32 %1442, 7
  %1444 = call i32 @llvm.smin.i32(i32 %1443, i32 255)
  %1445 = call i32 @llvm.smax.i32(i32 %1444, i32 0)
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, ptr %1433, align 1, !tbaa !13
  %1447 = getelementptr inbounds i8, ptr %1433, i64 %1406
  %1448 = mul nuw nsw i32 %1421, 28
  %1449 = mul nuw nsw i32 %1425, 109
  %1450 = mul nsw i32 %1438, -9
  %1451 = add nuw nsw i32 %1448, 64
  %1452 = add nuw nsw i32 %1451, %1449
  %1453 = add nsw i32 %1452, %1450
  %1454 = ashr i32 %1453, 7
  %1455 = call i32 @llvm.smin.i32(i32 %1454, i32 255)
  %1456 = call i32 @llvm.smax.i32(i32 %1455, i32 0)
  %1457 = trunc i32 %1456 to i8
  store i8 %1457, ptr %1447, align 1, !tbaa !13
  %1458 = getelementptr inbounds i8, ptr %1447, i64 %1406
  br i1 %1409, label %1507, label %1459

1459:                                             ; preds = %1415, %1459
  %1460 = phi i8 [ %1474, %1459 ], [ %1424, %1415 ]
  %1461 = phi ptr [ %1505, %1459 ], [ %1458, %1415 ]
  %1462 = phi ptr [ %1466, %1459 ], [ %1419, %1415 ]
  %1463 = phi i32 [ %1502, %1459 ], [ %1408, %1415 ]
  %1464 = phi ptr [ %1473, %1459 ], [ %1423, %1415 ]
  %1465 = getelementptr inbounds i8, ptr %1462, i64 %1406
  %1466 = getelementptr inbounds i8, ptr %1465, i64 %1406
  %1467 = getelementptr inbounds i8, ptr %1464, i64 %1411
  %1468 = load i8, ptr %1467, align 1, !tbaa !13
  %1469 = zext i8 %1468 to i32
  %1470 = mul nsw i32 %1469, -9
  %1471 = zext i8 %1460 to i32
  %1472 = mul nuw nsw i32 %1471, 111
  %1473 = getelementptr inbounds i8, ptr %1464, i64 %1405
  %1474 = load i8, ptr %1473, align 1, !tbaa !13
  %1475 = zext i8 %1474 to i32
  %1476 = mul nuw nsw i32 %1475, 29
  %1477 = getelementptr inbounds i8, ptr %1464, i64 %1407
  %1478 = load i8, ptr %1477, align 1, !tbaa !13
  %1479 = zext i8 %1478 to i32
  %1480 = mul nsw i32 %1479, -3
  %1481 = add nuw nsw i32 %1472, 64
  %1482 = add nsw i32 %1481, %1470
  %1483 = add nsw i32 %1482, %1476
  %1484 = add nsw i32 %1483, %1480
  %1485 = ashr i32 %1484, 7
  %1486 = call i32 @llvm.smin.i32(i32 %1485, i32 255)
  %1487 = call i32 @llvm.smax.i32(i32 %1486, i32 0)
  %1488 = trunc i32 %1487 to i8
  store i8 %1488, ptr %1461, align 1, !tbaa !13
  %1489 = getelementptr inbounds i8, ptr %1461, i64 %1406
  %1490 = mul nsw i32 %1469, -3
  %1491 = mul nuw nsw i32 %1471, 29
  %1492 = mul nuw nsw i32 %1475, 111
  %1493 = mul nsw i32 %1479, -9
  %1494 = add nuw nsw i32 %1491, 64
  %1495 = add nsw i32 %1494, %1490
  %1496 = add nsw i32 %1495, %1492
  %1497 = add nsw i32 %1496, %1493
  %1498 = ashr i32 %1497, 7
  %1499 = call i32 @llvm.smin.i32(i32 %1498, i32 255)
  %1500 = call i32 @llvm.smax.i32(i32 %1499, i32 0)
  %1501 = trunc i32 %1500 to i8
  store i8 %1501, ptr %1489, align 1, !tbaa !13
  %1502 = add nsw i32 %1463, -1
  %1503 = getelementptr inbounds i8, ptr %1466, i64 %1406
  %1504 = getelementptr inbounds i8, ptr %1503, i64 %1406
  %1505 = getelementptr inbounds i8, ptr %1504, i64 %1406
  %1506 = icmp eq i32 %1502, 0
  br i1 %1506, label %1507, label %1459, !llvm.loop !72

1507:                                             ; preds = %1459, %1415
  %1508 = phi ptr [ %1418, %1415 ], [ %1464, %1459 ]
  %1509 = phi ptr [ %1458, %1415 ], [ %1505, %1459 ]
  %1510 = getelementptr inbounds i8, ptr %1508, i64 %1405
  %1511 = getelementptr inbounds i8, ptr %1510, i64 %1405
  %1512 = load i8, ptr %1511, align 1, !tbaa !13
  %1513 = zext i8 %1512 to i32
  %1514 = mul nuw nsw i32 %1513, 28
  %1515 = getelementptr inbounds i8, ptr %1511, i64 %1411
  %1516 = load i8, ptr %1515, align 1, !tbaa !13
  %1517 = zext i8 %1516 to i32
  %1518 = mul nuw nsw i32 %1517, 109
  %1519 = getelementptr inbounds i8, ptr %1511, i64 %1413
  %1520 = load i8, ptr %1519, align 1, !tbaa !13
  %1521 = zext i8 %1520 to i32
  %1522 = mul nsw i32 %1521, -9
  %1523 = add nuw nsw i32 %1514, 64
  %1524 = add nuw nsw i32 %1523, %1518
  %1525 = add nsw i32 %1524, %1522
  %1526 = ashr i32 %1525, 7
  %1527 = call i32 @llvm.smin.i32(i32 %1526, i32 255)
  %1528 = call i32 @llvm.smax.i32(i32 %1527, i32 0)
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, ptr %1509, align 1, !tbaa !13
  %1530 = getelementptr inbounds i8, ptr %1509, i64 %1406
  %1531 = mul nuw nsw i32 %1513, 104
  %1532 = mul nuw nsw i32 %1517, 27
  %1533 = mul nsw i32 %1521, -3
  %1534 = add nuw nsw i32 %1531, 64
  %1535 = add nuw nsw i32 %1534, %1532
  %1536 = add nsw i32 %1535, %1533
  %1537 = ashr i32 %1536, 7
  %1538 = call i32 @llvm.smin.i32(i32 %1537, i32 255)
  %1539 = call i32 @llvm.smax.i32(i32 %1538, i32 0)
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, ptr %1530, align 1, !tbaa !13
  %1541 = getelementptr inbounds i8, ptr %1530, i64 %1406
  %1542 = mul nuw nsw i32 %1513, 139
  %1543 = mul nsw i32 %1517, -11
  %1544 = add nuw nsw i32 %1542, 64
  %1545 = add nsw i32 %1544, %1543
  %1546 = ashr i32 %1545, 7
  %1547 = call i32 @llvm.smin.i32(i32 %1546, i32 255)
  %1548 = call i32 @llvm.smax.i32(i32 %1547, i32 0)
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, ptr %1541, align 1, !tbaa !13
  %1550 = add nuw nsw i64 %1416, 1
  %1551 = icmp eq i64 %1550, %1406
  br i1 %1551, label %1552, label %1415, !llvm.loop !73

1552:                                             ; preds = %1507, %1402
  store i32 %1397, ptr %1114, align 8, !tbaa !31
  store i32 %1394, ptr %1116, align 4, !tbaa !32
  %1553 = load ptr, ptr %1115, align 8, !tbaa !3
  call void @free(ptr noundef %1553) #13
  store ptr %1400, ptr %1115, align 8, !tbaa !3
  %1554 = load i32, ptr @nj, align 8, !tbaa !18
  br label %1555

1555:                                             ; preds = %1552, %1389
  %1556 = phi i32 [ %1554, %1552 ], [ 0, %1389 ]
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1117, label %1692, !llvm.loop !74

1558:                                             ; preds = %1121
  %1559 = add nuw nsw i32 %1111, 1
  %1560 = getelementptr inbounds %struct._nj_cmp, ptr %1112, i64 1
  %1561 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %1562 = icmp slt i32 %1559, %1561
  br i1 %1562, label %1110, label %1563, !llvm.loop !75

1563:                                             ; preds = %1558
  %1564 = icmp eq i32 %1561, 3
  br i1 %1564, label %1565, label %1637

1565:                                             ; preds = %1563
  %1566 = icmp eq i32 %1123, 0
  br i1 %1566, label %1692, label %1567

1567:                                             ; preds = %1565
  %1568 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 10), align 8, !tbaa !3
  %1569 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 10), align 8, !tbaa !3
  %1570 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %1571 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8, !tbaa !9
  br label %1572

1572:                                             ; preds = %1623, %1567
  %1573 = phi i32 [ %1624, %1623 ], [ %1119, %1567 ]
  %1574 = phi ptr [ %1634, %1623 ], [ %1568, %1567 ]
  %1575 = phi ptr [ %1631, %1623 ], [ %1569, %1567 ]
  %1576 = phi ptr [ %1628, %1623 ], [ %1570, %1567 ]
  %1577 = phi ptr [ %1625, %1623 ], [ %1571, %1567 ]
  %1578 = phi i32 [ %1635, %1623 ], [ %1123, %1567 ]
  %1579 = icmp sgt i32 %1573, 0
  br i1 %1579, label %1580, label %1623

1580:                                             ; preds = %1572, %1580
  %1581 = phi i64 [ %1619, %1580 ], [ 0, %1572 ]
  %1582 = phi ptr [ %1618, %1580 ], [ %1577, %1572 ]
  %1583 = getelementptr inbounds i8, ptr %1576, i64 %1581
  %1584 = load i8, ptr %1583, align 1, !tbaa !13
  %1585 = zext i8 %1584 to i32
  %1586 = shl nuw nsw i32 %1585, 8
  %1587 = getelementptr inbounds i8, ptr %1575, i64 %1581
  %1588 = load i8, ptr %1587, align 1, !tbaa !13
  %1589 = zext i8 %1588 to i32
  %1590 = add nsw i32 %1589, -128
  %1591 = getelementptr inbounds i8, ptr %1574, i64 %1581
  %1592 = load i8, ptr %1591, align 1, !tbaa !13
  %1593 = zext i8 %1592 to i32
  %1594 = add nsw i32 %1593, -128
  %1595 = mul nsw i32 %1594, 359
  %1596 = or disjoint i32 %1586, 128
  %1597 = add nsw i32 %1595, %1596
  %1598 = ashr i32 %1597, 8
  %1599 = call i32 @llvm.smin.i32(i32 %1598, i32 255)
  %1600 = call i32 @llvm.smax.i32(i32 %1599, i32 0)
  %1601 = trunc i32 %1600 to i8
  %1602 = getelementptr inbounds i8, ptr %1582, i64 1
  store i8 %1601, ptr %1582, align 1, !tbaa !13
  %1603 = mul nsw i32 %1590, -88
  %1604 = mul nsw i32 %1594, -183
  %1605 = add nsw i32 %1603, %1596
  %1606 = add nsw i32 %1605, %1604
  %1607 = ashr i32 %1606, 8
  %1608 = call i32 @llvm.smin.i32(i32 %1607, i32 255)
  %1609 = call i32 @llvm.smax.i32(i32 %1608, i32 0)
  %1610 = trunc i32 %1609 to i8
  %1611 = getelementptr inbounds i8, ptr %1582, i64 2
  store i8 %1610, ptr %1602, align 1, !tbaa !13
  %1612 = mul nsw i32 %1590, 454
  %1613 = add nsw i32 %1612, %1596
  %1614 = ashr i32 %1613, 8
  %1615 = call i32 @llvm.smin.i32(i32 %1614, i32 255)
  %1616 = call i32 @llvm.smax.i32(i32 %1615, i32 0)
  %1617 = trunc i32 %1616 to i8
  %1618 = getelementptr inbounds i8, ptr %1582, i64 3
  store i8 %1617, ptr %1611, align 1, !tbaa !13
  %1619 = add nuw nsw i64 %1581, 1
  %1620 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %1621 = sext i32 %1620 to i64
  %1622 = icmp slt i64 %1619, %1621
  br i1 %1622, label %1580, label %1623, !llvm.loop !76

1623:                                             ; preds = %1580, %1572
  %1624 = phi i32 [ %1573, %1572 ], [ %1620, %1580 ]
  %1625 = phi ptr [ %1577, %1572 ], [ %1618, %1580 ]
  %1626 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds i8, ptr %1576, i64 %1627
  %1629 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 1, i32 5), align 4, !tbaa !32
  %1630 = sext i32 %1629 to i64
  %1631 = getelementptr inbounds i8, ptr %1575, i64 %1630
  %1632 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 2, i32 5), align 4, !tbaa !32
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds i8, ptr %1574, i64 %1633
  %1635 = add nsw i32 %1578, -1
  %1636 = icmp eq i32 %1635, 0
  br i1 %1636, label %1692, label %1572, !llvm.loop !77

1637:                                             ; preds = %1563, %1107
  %1638 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1639 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1640 = icmp eq i32 %1638, %1639
  br i1 %1640, label %1692, label %1641

1641:                                             ; preds = %1637
  %1642 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 4), align 8, !tbaa !31
  %1643 = add nsw i32 %1642, -1
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %1690, label %1645

1645:                                             ; preds = %1641
  %1646 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8, !tbaa !3
  %1647 = sext i32 %1638 to i64
  %1648 = getelementptr inbounds i8, ptr %1646, i64 %1647
  %1649 = sext i32 %1639 to i64
  %1650 = getelementptr inbounds i8, ptr %1646, i64 %1649
  %1651 = and i32 %1643, 1
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1662, label %1653

1653:                                             ; preds = %1645
  %1654 = sext i32 %1638 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1648, ptr align 1 %1650, i64 %1654, i1 false)
  %1655 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1656 = sext i32 %1655 to i64
  %1657 = getelementptr inbounds i8, ptr %1650, i64 %1656
  %1658 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1659 = sext i32 %1658 to i64
  %1660 = getelementptr inbounds i8, ptr %1648, i64 %1659
  %1661 = add nsw i32 %1642, -2
  br label %1662

1662:                                             ; preds = %1653, %1645
  %1663 = phi i32 [ undef, %1645 ], [ %1658, %1653 ]
  %1664 = phi i32 [ %1638, %1645 ], [ %1658, %1653 ]
  %1665 = phi i32 [ %1643, %1645 ], [ %1661, %1653 ]
  %1666 = phi ptr [ %1648, %1645 ], [ %1660, %1653 ]
  %1667 = phi ptr [ %1650, %1645 ], [ %1657, %1653 ]
  %1668 = icmp eq i32 %1642, 2
  br i1 %1668, label %1690, label %1669

1669:                                             ; preds = %1662, %1669
  %1670 = phi i32 [ %1685, %1669 ], [ %1664, %1662 ]
  %1671 = phi i32 [ %1688, %1669 ], [ %1665, %1662 ]
  %1672 = phi ptr [ %1687, %1669 ], [ %1666, %1662 ]
  %1673 = phi ptr [ %1684, %1669 ], [ %1667, %1662 ]
  %1674 = sext i32 %1670 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1672, ptr align 1 %1673, i64 %1674, i1 false)
  %1675 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1676 = sext i32 %1675 to i64
  %1677 = getelementptr inbounds i8, ptr %1673, i64 %1676
  %1678 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1679 = sext i32 %1678 to i64
  %1680 = getelementptr inbounds i8, ptr %1672, i64 %1679
  %1681 = sext i32 %1678 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1680, ptr align 1 %1677, i64 %1681, i1 false)
  %1682 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  %1683 = sext i32 %1682 to i64
  %1684 = getelementptr inbounds i8, ptr %1677, i64 %1683
  %1685 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 3), align 4, !tbaa !30
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds i8, ptr %1680, i64 %1686
  %1688 = add nsw i32 %1671, -2
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1690, label %1669, !llvm.loop !78

1690:                                             ; preds = %1662, %1669, %1641
  %1691 = phi i32 [ %1638, %1641 ], [ %1663, %1662 ], [ %1685, %1669 ]
  store i32 %1691, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 5), align 4, !tbaa !32
  br label %1692

1692:                                             ; preds = %1386, %1555, %1623, %1133, %1414, %1565, %1637, %1690
  %1693 = load i32, ptr @nj, align 8, !tbaa !18
  br label %1694

1694:                                             ; preds = %32, %1065, %39, %42, %22, %19, %1692
  %1695 = phi i32 [ %1693, %1692 ], [ 1, %19 ], [ 1, %22 ], [ %38, %32 ], [ 2, %1065 ], [ 5, %39 ], [ 5, %42 ]
  ret i32 %1695
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetWidth() local_unnamed_addr #6 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetHeight() local_unnamed_addr #6 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njIsColor() local_unnamed_addr #6 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %2 = icmp ne i32 %1, 1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @njGetImage() local_unnamed_addr #6 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %2 = icmp eq i32 %1, 1
  %3 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 11, i64 0, i32 10), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 20), align 8
  %5 = select i1 %2, ptr %3, ptr %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @njGetImageSize() local_unnamed_addr #6 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 4), align 8, !tbaa !16
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 5), align 4, !tbaa !15
  %3 = mul nsw i32 %2, %1
  %4 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 10), align 8, !tbaa !17
  %5 = mul nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @njGetBits(i32 noundef %0) unnamed_addr #8 {
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
define internal fastcc i32 @njGetVLC(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #9 {
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
  %25 = zext nneg i8 %24 to i32
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
  %41 = or disjoint i32 %40, 1
  %42 = select i1 %39, i32 %41, i32 0
  %43 = add nsw i32 %42, %28
  br label %44

44:                                               ; preds = %23, %34, %8
  %45 = phi i32 [ %43, %34 ], [ 0, %8 ], [ 0, %23 ]
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @njShowBits(i32 noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  %3 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !79
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
  %16 = or disjoint i32 %15, 255
  store i32 %16, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !79
  %17 = add nsw i32 %9, 8
  store i32 %17, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 17), align 4, !tbaa !63
  br label %18

18:                                               ; preds = %24, %49, %44, %45, %35, %35, %40, %14
  %19 = phi i32 [ %16, %14 ], [ %31, %40 ], [ %31, %35 ], [ %31, %35 ], [ %47, %45 ], [ %31, %44 ], [ %31, %49 ], [ %31, %24 ]
  %20 = phi ptr [ %11, %14 ], [ %36, %40 ], [ %36, %35 ], [ %36, %35 ], [ %36, %45 ], [ %36, %44 ], [ %25, %49 ], [ %25, %24 ]
  %21 = phi i32 [ %10, %14 ], [ 0, %40 ], [ %38, %35 ], [ %38, %35 ], [ %38, %45 ], [ %38, %44 ], [ 0, %49 ], [ %27, %24 ]
  %22 = phi i32 [ %17, %14 ], [ %28, %40 ], [ %28, %35 ], [ %28, %35 ], [ %48, %45 ], [ %28, %44 ], [ %28, %49 ], [ %28, %24 ]
  %23 = icmp slt i32 %22, %0
  br i1 %23, label %8, label %50, !llvm.loop !80

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
  %31 = or disjoint i32 %29, %30
  store i32 %31, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !79
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
  %47 = or disjoint i32 %46, %39
  store i32 %47, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i64 0, i32 16), align 8, !tbaa !79
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 18.1.1 (Fedora 18.1.1-1.fc40)"}
!3 = !{!4, !8, i64 40}
!4 = !{!"_nj_cmp", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !8, i64 40}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!10, !8, i64 525024}
!10 = !{!"_nj_ctx", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 56, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 464, !5, i64 524752, !5, i64 524756, !6, i64 524760, !5, i64 525016, !8, i64 525024}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !5, i64 16}
!13 = !{!6, !6, i64 0}
!14 = !{!10, !5, i64 20}
!15 = !{!10, !5, i64 28}
!16 = !{!10, !5, i64 24}
!17 = !{!10, !5, i64 48}
!18 = !{!10, !5, i64 0}
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
!64 = !{!65}
!65 = distinct !{!65, !66}
!66 = distinct !{!66, !"LVerDomain"}
!67 = !{!68}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !25, !40, !41}
!70 = distinct !{!70, !25, !40}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = !{!10, !5, i64 524752}
!80 = distinct !{!80, !25}
