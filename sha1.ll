; ModuleID = 'sha1.c'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct.SHA1_CTX = type { [64 x i8], i32, i64, [5 x i32], [4 x i32] }

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [80 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %3) #5
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %29, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %30, %4 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !3
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = or i64 %6, 1
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !3
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %10
  %17 = or i64 %6, 2
  %18 = getelementptr inbounds i8, ptr %1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !3
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %16, %21
  %23 = or i64 %6, 3
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !3
  %26 = zext i8 %25 to i32
  %27 = or i32 %22, %26
  %28 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %5
  store i32 %27, ptr %28, align 4, !tbaa !6
  %29 = add nuw nsw i64 %5, 1
  %30 = add nuw nsw i64 %6, 4
  %31 = icmp eq i64 %29, 16
  br i1 %31, label %32, label %4, !llvm.loop !8

32:                                               ; preds = %4, %32
  %33 = phi i64 [ %51, %32 ], [ 16, %4 ]
  %34 = add nsw i64 %33, -3
  %35 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = add nsw i64 %33, -8
  %38 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !6
  %40 = xor i32 %39, %36
  %41 = add nsw i64 %33, -14
  %42 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !6
  %44 = xor i32 %40, %43
  %45 = add nsw i64 %33, -16
  %46 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !6
  %48 = xor i32 %44, %47
  %49 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %33
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 1)
  store i32 %50, ptr %49, align 4, !tbaa !6
  %51 = add nuw nsw i64 %33, 1
  %52 = icmp eq i64 %51, 80
  br i1 %52, label %53, label %32, !llvm.loop !10

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !6
  %58 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 2
  %59 = load i32, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 3
  %61 = load i32, ptr %60, align 4, !tbaa !6
  %62 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 4
  %63 = load i32, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !6
  br label %69

66:                                               ; preds = %69
  %67 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 4, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !6
  br label %106

69:                                               ; preds = %69, %53
  %70 = phi i64 [ 0, %53 ], [ %101, %69 ]
  %71 = phi i32 [ %63, %53 ], [ %73, %69 ]
  %72 = phi i32 [ %61, %53 ], [ %87, %69 ]
  %73 = phi i32 [ %59, %53 ], [ %100, %69 ]
  %74 = phi i32 [ %57, %53 ], [ %86, %69 ]
  %75 = phi i32 [ %55, %53 ], [ %99, %69 ]
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 5)
  %77 = and i32 %73, %74
  %78 = xor i32 %74, -1
  %79 = and i32 %72, %78
  %80 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %70
  %81 = load i32, ptr %80, align 8, !tbaa !6
  %82 = add i32 %77, %76
  %83 = add i32 %82, %79
  %84 = add i32 %83, %71
  %85 = add i32 %84, %65
  %86 = add i32 %85, %81
  %87 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 30)
  %88 = or i64 %70, 1
  %89 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 5)
  %90 = and i32 %87, %75
  %91 = xor i32 %75, -1
  %92 = and i32 %73, %91
  %93 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %88
  %94 = load i32, ptr %93, align 4, !tbaa !6
  %95 = add i32 %90, %89
  %96 = add i32 %95, %92
  %97 = add i32 %96, %72
  %98 = add i32 %97, %65
  %99 = add i32 %98, %94
  %100 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 30)
  %101 = add nuw nsw i64 %70, 2
  %102 = icmp eq i64 %101, 20
  br i1 %102, label %66, label %69, !llvm.loop !11

103:                                              ; preds = %106
  %104 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 4, i64 2
  %105 = load i32, ptr %104, align 4, !tbaa !6
  br label %139

106:                                              ; preds = %106, %66
  %107 = phi i64 [ 20, %66 ], [ %134, %106 ]
  %108 = phi i32 [ %73, %66 ], [ %110, %106 ]
  %109 = phi i32 [ %87, %66 ], [ %122, %106 ]
  %110 = phi i32 [ %100, %66 ], [ %133, %106 ]
  %111 = phi i32 [ %86, %66 ], [ %121, %106 ]
  %112 = phi i32 [ %99, %66 ], [ %132, %106 ]
  %113 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 5)
  %114 = xor i32 %110, %111
  %115 = xor i32 %114, %109
  %116 = add i32 %115, %113
  %117 = add i32 %116, %108
  %118 = add i32 %117, %68
  %119 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %107
  %120 = load i32, ptr %119, align 8, !tbaa !6
  %121 = add i32 %118, %120
  %122 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 30)
  %123 = or i64 %107, 1
  %124 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 5)
  %125 = xor i32 %122, %112
  %126 = xor i32 %125, %110
  %127 = add i32 %126, %124
  %128 = add i32 %127, %109
  %129 = add i32 %128, %68
  %130 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %123
  %131 = load i32, ptr %130, align 4, !tbaa !6
  %132 = add i32 %129, %131
  %133 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 30)
  %134 = add nuw nsw i64 %107, 2
  %135 = icmp eq i64 %134, 40
  br i1 %135, label %103, label %106, !llvm.loop !12

136:                                              ; preds = %139
  %137 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 4, i64 3
  %138 = load i32, ptr %137, align 4, !tbaa !6
  br label %173

139:                                              ; preds = %139, %103
  %140 = phi i64 [ 40, %103 ], [ %171, %139 ]
  %141 = phi i32 [ %110, %103 ], [ %143, %139 ]
  %142 = phi i32 [ %122, %103 ], [ %157, %139 ]
  %143 = phi i32 [ %133, %103 ], [ %170, %139 ]
  %144 = phi i32 [ %121, %103 ], [ %156, %139 ]
  %145 = phi i32 [ %132, %103 ], [ %169, %139 ]
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 5)
  %147 = xor i32 %142, %143
  %148 = and i32 %147, %144
  %149 = and i32 %142, %143
  %150 = xor i32 %148, %149
  %151 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %140
  %152 = load i32, ptr %151, align 8, !tbaa !6
  %153 = add i32 %141, %146
  %154 = add i32 %153, %150
  %155 = add i32 %154, %105
  %156 = add i32 %155, %152
  %157 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 30)
  %158 = or i64 %140, 1
  %159 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 5)
  %160 = xor i32 %143, %157
  %161 = and i32 %160, %145
  %162 = and i32 %143, %157
  %163 = xor i32 %161, %162
  %164 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %158
  %165 = load i32, ptr %164, align 4, !tbaa !6
  %166 = add i32 %142, %159
  %167 = add i32 %166, %163
  %168 = add i32 %167, %105
  %169 = add i32 %168, %165
  %170 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 30)
  %171 = add nuw nsw i64 %140, 2
  %172 = icmp eq i64 %171, 60
  br i1 %172, label %136, label %139, !llvm.loop !13

173:                                              ; preds = %173, %136
  %174 = phi i64 [ 60, %136 ], [ %201, %173 ]
  %175 = phi i32 [ %143, %136 ], [ %177, %173 ]
  %176 = phi i32 [ %157, %136 ], [ %189, %173 ]
  %177 = phi i32 [ %170, %136 ], [ %200, %173 ]
  %178 = phi i32 [ %156, %136 ], [ %188, %173 ]
  %179 = phi i32 [ %169, %136 ], [ %199, %173 ]
  %180 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 5)
  %181 = xor i32 %177, %178
  %182 = xor i32 %181, %176
  %183 = add i32 %182, %180
  %184 = add i32 %183, %175
  %185 = add i32 %184, %138
  %186 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %174
  %187 = load i32, ptr %186, align 8, !tbaa !6
  %188 = add i32 %185, %187
  %189 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 30)
  %190 = or i64 %174, 1
  %191 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 5)
  %192 = xor i32 %189, %179
  %193 = xor i32 %192, %177
  %194 = add i32 %193, %191
  %195 = add i32 %194, %176
  %196 = add i32 %195, %138
  %197 = getelementptr inbounds [80 x i32], ptr %3, i64 0, i64 %190
  %198 = load i32, ptr %197, align 4, !tbaa !6
  %199 = add i32 %196, %198
  %200 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 30)
  %201 = add nuw nsw i64 %174, 2
  %202 = icmp eq i64 %201, 80
  br i1 %202, label %203, label %173, !llvm.loop !14

203:                                              ; preds = %173
  %204 = add i32 %199, %55
  store i32 %204, ptr %54, align 8, !tbaa !6
  %205 = add i32 %188, %57
  store i32 %205, ptr %56, align 4, !tbaa !6
  %206 = add i32 %200, %59
  store i32 %206, ptr %58, align 8, !tbaa !6
  %207 = add i32 %189, %61
  store i32 %207, ptr %60, align 4, !tbaa !6
  %208 = add i32 %177, %63
  store i32 %208, ptr %62, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha1_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %4, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 4
  store <4 x i32> <i32 -1009589776, i32 1518500249, i32 1859775393, i32 -1894007588>, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 4, i64 3
  store i32 -899497514, ptr %6, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %6, align 8, !tbaa !15
  br label %9

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %8, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %24, %22 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !3
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !3
  %16 = load i32, ptr %6, align 8, !tbaa !15
  %17 = add i32 %16, 1
  store i32 %17, ptr %6, align 8, !tbaa !15
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  tail call void @sha1_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %20 = load i64, ptr %7, align 8, !tbaa !18
  %21 = add i64 %20, 512
  store i64 %21, ptr %7, align 8, !tbaa !18
  store i32 0, ptr %6, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %9, %19
  %23 = phi i32 [ %17, %9 ], [ 0, %19 ]
  %24 = add nuw i64 %11, 1
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %9, !llvm.loop !19

26:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_final(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = icmp ult i32 %4, 56
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !3
  %8 = add i32 %4, 1
  br i1 %5, label %9, label %17

9:                                                ; preds = %2
  %10 = icmp ult i32 %8, 56
  br i1 %10, label %11, label %26

11:                                               ; preds = %9
  %12 = add nuw nsw i64 %6, 1
  %13 = getelementptr i8, ptr %0, i64 %12
  %14 = sub nuw nsw i32 54, %4
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 0, i64 %16, i1 false), !tbaa !3
  br label %26

17:                                               ; preds = %2
  %18 = icmp ult i32 %8, 64
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = zext i32 %8 to i64
  %21 = getelementptr i8, ptr %0, i64 %20
  %22 = sub nsw i32 62, %4
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %21, i8 0, i64 %24, i1 false), !tbaa !3
  br label %25

25:                                               ; preds = %19, %17
  tail call void @sha1_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %26

26:                                               ; preds = %11, %9, %25
  %27 = load i32, ptr %3, align 8, !tbaa !15
  %28 = shl i32 %27, 3
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !18
  %32 = add i64 %31, %29
  store i64 %32, ptr %30, align 8, !tbaa !18
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 63
  store i8 %33, ptr %34, align 1, !tbaa !3
  %35 = lshr i64 %32, 8
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 62
  store i8 %36, ptr %37, align 2, !tbaa !3
  %38 = lshr i64 %32, 16
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 61
  store i8 %39, ptr %40, align 1, !tbaa !3
  %41 = lshr i64 %32, 24
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 60
  store i8 %42, ptr %43, align 4, !tbaa !3
  %44 = lshr i64 %32, 32
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 59
  store i8 %45, ptr %46, align 1, !tbaa !3
  %47 = lshr i64 %32, 40
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 58
  store i8 %48, ptr %49, align 2, !tbaa !3
  %50 = lshr i64 %32, 48
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 57
  store i8 %51, ptr %52, align 1, !tbaa !3
  %53 = lshr i64 %32, 56
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 56
  store i8 %54, ptr %55, align 8, !tbaa !3
  tail call void @sha1_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %56 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 1
  %58 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 2
  %59 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 3
  %60 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 3, i64 4
  %61 = load i32, ptr %56, align 8, !tbaa !6
  %62 = lshr i32 %61, 24
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %1, align 1, !tbaa !3
  %64 = load i32, ptr %57, align 4, !tbaa !6
  %65 = lshr i32 %64, 24
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %66, ptr %67, align 1, !tbaa !3
  %68 = load i32, ptr %58, align 8, !tbaa !6
  %69 = lshr i32 %68, 24
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 %70, ptr %71, align 1, !tbaa !3
  %72 = load i32, ptr %59, align 4, !tbaa !6
  %73 = lshr i32 %72, 24
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %1, i64 12
  store i8 %74, ptr %75, align 1, !tbaa !3
  %76 = load i32, ptr %60, align 8, !tbaa !6
  %77 = lshr i32 %76, 24
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %1, i64 16
  store i8 %78, ptr %79, align 1, !tbaa !3
  %80 = load i32, ptr %56, align 8, !tbaa !6
  %81 = lshr i32 %80, 16
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %82, ptr %83, align 1, !tbaa !3
  %84 = load i32, ptr %57, align 4, !tbaa !6
  %85 = lshr i32 %84, 16
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %86, ptr %87, align 1, !tbaa !3
  %88 = load i32, ptr %58, align 8, !tbaa !6
  %89 = lshr i32 %88, 16
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %90, ptr %91, align 1, !tbaa !3
  %92 = load i32, ptr %59, align 4, !tbaa !6
  %93 = lshr i32 %92, 16
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %1, i64 13
  store i8 %94, ptr %95, align 1, !tbaa !3
  %96 = load i32, ptr %60, align 8, !tbaa !6
  %97 = lshr i32 %96, 16
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds i8, ptr %1, i64 17
  store i8 %98, ptr %99, align 1, !tbaa !3
  %100 = load i32, ptr %56, align 8, !tbaa !6
  %101 = lshr i32 %100, 8
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %102, ptr %103, align 1, !tbaa !3
  %104 = load i32, ptr %57, align 4, !tbaa !6
  %105 = lshr i32 %104, 8
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %106, ptr %107, align 1, !tbaa !3
  %108 = load i32, ptr %58, align 8, !tbaa !6
  %109 = lshr i32 %108, 8
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %110, ptr %111, align 1, !tbaa !3
  %112 = load i32, ptr %59, align 4, !tbaa !6
  %113 = lshr i32 %112, 8
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds i8, ptr %1, i64 14
  store i8 %114, ptr %115, align 1, !tbaa !3
  %116 = load i32, ptr %60, align 8, !tbaa !6
  %117 = lshr i32 %116, 8
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds i8, ptr %1, i64 18
  store i8 %118, ptr %119, align 1, !tbaa !3
  %120 = load i32, ptr %56, align 8, !tbaa !6
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %121, ptr %122, align 1, !tbaa !3
  %123 = load i32, ptr %57, align 4, !tbaa !6
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %124, ptr %125, align 1, !tbaa !3
  %126 = load i32, ptr %58, align 8, !tbaa !6
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %127, ptr %128, align 1, !tbaa !3
  %129 = load i32, ptr %59, align 4, !tbaa !6
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds i8, ptr %1, i64 15
  store i8 %130, ptr %131, align 1, !tbaa !3
  %132 = load i32, ptr %60, align 8, !tbaa !6
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, ptr %1, i64 19
  store i8 %133, ptr %134, align 1, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 16.0.6 (Fedora 16.0.6-4.fc38)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = !{!16, !7, i64 64}
!16 = !{!"", !4, i64 0, !7, i64 64, !17, i64 72, !4, i64 80, !4, i64 100}
!17 = !{!"long long", !4, i64 0}
!18 = !{!16, !17, i64 72}
!19 = distinct !{!19, !9}
