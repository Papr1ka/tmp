; ModuleID = 'sha256.c'
source_filename = "sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct.SHA256_CTX = type { [64 x i8], i32, i64, [8 x i32] }

@k = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #5
  br label %6

4:                                                ; preds = %6
  %5 = load i32, ptr %3, align 16, !tbaa !3
  br label %34

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %31, %6 ]
  %8 = phi i64 [ 0, %2 ], [ %32, %6 ]
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !7
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = or i64 %8, 1
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !7
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %12
  %19 = or i64 %8, 2
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %18, %23
  %25 = or i64 %8, 3
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !7
  %28 = zext i8 %27 to i32
  %29 = or i32 %24, %28
  %30 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %7
  store i32 %29, ptr %30, align 4, !tbaa !3
  %31 = add nuw nsw i64 %7, 1
  %32 = add nuw nsw i64 %8, 4
  %33 = icmp eq i64 %31, 16
  br i1 %33, label %4, label %6, !llvm.loop !8

34:                                               ; preds = %4, %34
  %35 = phi i32 [ %5, %4 ], [ %51, %34 ]
  %36 = phi i64 [ 16, %4 ], [ %60, %34 ]
  %37 = add nsw i64 %36, -2
  %38 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !3
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 15)
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %42 = xor i32 %40, %41
  %43 = lshr i32 %39, 10
  %44 = xor i32 %42, %43
  %45 = add nsw i64 %36, -7
  %46 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !3
  %48 = add i32 %44, %47
  %49 = add nsw i64 %36, -15
  %50 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !3
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 25)
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 14)
  %54 = xor i32 %52, %53
  %55 = lshr i32 %51, 3
  %56 = xor i32 %54, %55
  %57 = add i32 %48, %35
  %58 = add i32 %57, %56
  %59 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %36
  store i32 %58, ptr %59, align 4, !tbaa !3
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, 64
  br i1 %61, label %62, label %34, !llvm.loop !10

62:                                               ; preds = %34
  %63 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !3
  %65 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !3
  %67 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 2
  %68 = load i32, ptr %67, align 8, !tbaa !3
  %69 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 3
  %70 = load i32, ptr %69, align 4, !tbaa !3
  %71 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 4
  %72 = load i32, ptr %71, align 8, !tbaa !3
  %73 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 5
  %74 = load i32, ptr %73, align 4, !tbaa !3
  %75 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 6
  %76 = load i32, ptr %75, align 8, !tbaa !3
  %77 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 7
  %78 = load i32, ptr %77, align 4, !tbaa !3
  br label %79

79:                                               ; preds = %62, %79
  %80 = phi i64 [ 0, %62 ], [ %118, %79 ]
  %81 = phi i32 [ %64, %62 ], [ %117, %79 ]
  %82 = phi i32 [ %66, %62 ], [ %81, %79 ]
  %83 = phi i32 [ %78, %62 ], [ %84, %79 ]
  %84 = phi i32 [ %76, %62 ], [ %85, %79 ]
  %85 = phi i32 [ %74, %62 ], [ %86, %79 ]
  %86 = phi i32 [ %72, %62 ], [ %116, %79 ]
  %87 = phi i32 [ %70, %62 ], [ %88, %79 ]
  %88 = phi i32 [ %68, %62 ], [ %82, %79 ]
  %89 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 26)
  %90 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 21)
  %91 = xor i32 %89, %90
  %92 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 7)
  %93 = xor i32 %91, %92
  %94 = and i32 %85, %86
  %95 = xor i32 %86, -1
  %96 = and i32 %84, %95
  %97 = getelementptr inbounds [64 x i32], ptr @k, i64 0, i64 %80
  %98 = load i32, ptr %97, align 4, !tbaa !3
  %99 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %80
  %100 = load i32, ptr %99, align 4, !tbaa !3
  %101 = add i32 %93, %94
  %102 = add i32 %101, %83
  %103 = add i32 %102, %96
  %104 = add i32 %103, %98
  %105 = add i32 %104, %100
  %106 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 30)
  %107 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 19)
  %108 = xor i32 %106, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 10)
  %110 = xor i32 %108, %109
  %111 = xor i32 %82, %88
  %112 = and i32 %81, %111
  %113 = and i32 %82, %88
  %114 = xor i32 %112, %113
  %115 = add i32 %110, %114
  %116 = add i32 %105, %87
  %117 = add i32 %115, %105
  %118 = add nuw nsw i64 %80, 1
  %119 = icmp eq i64 %118, 64
  br i1 %119, label %120, label %79, !llvm.loop !11

120:                                              ; preds = %79
  %121 = add i32 %117, %64
  store i32 %121, ptr %63, align 8, !tbaa !3
  %122 = add i32 %81, %66
  store i32 %122, ptr %65, align 4, !tbaa !3
  %123 = add i32 %82, %68
  store i32 %123, ptr %67, align 8, !tbaa !3
  %124 = add i32 %88, %70
  store i32 %124, ptr %69, align 4, !tbaa !3
  %125 = add i32 %116, %72
  store i32 %125, ptr %71, align 8, !tbaa !3
  %126 = add i32 %86, %74
  store i32 %126, ptr %73, align 4, !tbaa !3
  %127 = add i32 %85, %76
  store i32 %127, ptr %75, align 8, !tbaa !3
  %128 = add i32 %84, %78
  store i32 %128, ptr %77, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %4, align 8, !tbaa !3
  %5 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 4
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %5, align 8, !tbaa !3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %6, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %8, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %25, %22 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr %6, align 8, !tbaa !12
  %17 = add i32 %16, 1
  store i32 %17, ptr %6, align 8, !tbaa !12
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %20 = load i64, ptr %7, align 8, !tbaa !15
  %21 = add i64 %20, 512
  store i64 %21, ptr %7, align 8, !tbaa !15
  store i32 0, ptr %6, align 8, !tbaa !12
  br label %22

22:                                               ; preds = %9, %19
  %23 = phi i32 [ %17, %9 ], [ 0, %19 ]
  %24 = add nuw nsw i64 %11, 1
  %25 = and i64 %24, 4294967295
  %26 = icmp ult i64 %25, %2
  br i1 %26, label %9, label %27, !llvm.loop !16

27:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp ult i32 %4, 56
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %6
  store i8 -128, ptr %7, align 1, !tbaa !7
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 0, i64 %16, i1 false), !tbaa !7
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %21, i8 0, i64 %24, i1 false), !tbaa !7
  br label %25

25:                                               ; preds = %19, %17
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %26

26:                                               ; preds = %11, %9, %25
  %27 = load i32, ptr %3, align 8, !tbaa !12
  %28 = shl i32 %27, 3
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = add i64 %31, %29
  store i64 %32, ptr %30, align 8, !tbaa !15
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 63
  store i8 %33, ptr %34, align 1, !tbaa !7
  %35 = lshr i64 %32, 8
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 62
  store i8 %36, ptr %37, align 2, !tbaa !7
  %38 = lshr i64 %32, 16
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 61
  store i8 %39, ptr %40, align 1, !tbaa !7
  %41 = lshr i64 %32, 24
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 60
  store i8 %42, ptr %43, align 4, !tbaa !7
  %44 = lshr i64 %32, 32
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 59
  store i8 %45, ptr %46, align 1, !tbaa !7
  %47 = lshr i64 %32, 40
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 58
  store i8 %48, ptr %49, align 2, !tbaa !7
  %50 = lshr i64 %32, 48
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 57
  store i8 %51, ptr %52, align 1, !tbaa !7
  %53 = lshr i64 %32, 56
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 56
  store i8 %54, ptr %55, align 8, !tbaa !7
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %56 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 1
  %58 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 2
  %59 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 3
  %60 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 4
  %61 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 5
  %62 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 6
  %63 = getelementptr inbounds %struct.SHA256_CTX, ptr %0, i64 0, i32 3, i64 7
  %64 = load i32, ptr %56, align 8, !tbaa !3
  %65 = lshr i32 %64, 24
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %1, align 1, !tbaa !7
  %67 = load i32, ptr %57, align 4, !tbaa !3
  %68 = lshr i32 %67, 24
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %69, ptr %70, align 1, !tbaa !7
  %71 = load i32, ptr %58, align 8, !tbaa !3
  %72 = lshr i32 %71, 24
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 %73, ptr %74, align 1, !tbaa !7
  %75 = load i32, ptr %59, align 4, !tbaa !3
  %76 = lshr i32 %75, 24
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds i8, ptr %1, i64 12
  store i8 %77, ptr %78, align 1, !tbaa !7
  %79 = load i32, ptr %60, align 8, !tbaa !3
  %80 = lshr i32 %79, 24
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds i8, ptr %1, i64 16
  store i8 %81, ptr %82, align 1, !tbaa !7
  %83 = load i32, ptr %61, align 4, !tbaa !3
  %84 = lshr i32 %83, 24
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds i8, ptr %1, i64 20
  store i8 %85, ptr %86, align 1, !tbaa !7
  %87 = load i32, ptr %62, align 8, !tbaa !3
  %88 = lshr i32 %87, 24
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds i8, ptr %1, i64 24
  store i8 %89, ptr %90, align 1, !tbaa !7
  %91 = load i32, ptr %63, align 4, !tbaa !3
  %92 = lshr i32 %91, 24
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, ptr %1, i64 28
  store i8 %93, ptr %94, align 1, !tbaa !7
  %95 = load i32, ptr %56, align 8, !tbaa !3
  %96 = lshr i32 %95, 16
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %97, ptr %98, align 1, !tbaa !7
  %99 = load i32, ptr %57, align 4, !tbaa !3
  %100 = lshr i32 %99, 16
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %101, ptr %102, align 1, !tbaa !7
  %103 = load i32, ptr %58, align 8, !tbaa !3
  %104 = lshr i32 %103, 16
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %105, ptr %106, align 1, !tbaa !7
  %107 = load i32, ptr %59, align 4, !tbaa !3
  %108 = lshr i32 %107, 16
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds i8, ptr %1, i64 13
  store i8 %109, ptr %110, align 1, !tbaa !7
  %111 = load i32, ptr %60, align 8, !tbaa !3
  %112 = lshr i32 %111, 16
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds i8, ptr %1, i64 17
  store i8 %113, ptr %114, align 1, !tbaa !7
  %115 = load i32, ptr %61, align 4, !tbaa !3
  %116 = lshr i32 %115, 16
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 %117, ptr %118, align 1, !tbaa !7
  %119 = load i32, ptr %62, align 8, !tbaa !3
  %120 = lshr i32 %119, 16
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds i8, ptr %1, i64 25
  store i8 %121, ptr %122, align 1, !tbaa !7
  %123 = load i32, ptr %63, align 4, !tbaa !3
  %124 = lshr i32 %123, 16
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, ptr %1, i64 29
  store i8 %125, ptr %126, align 1, !tbaa !7
  %127 = load i32, ptr %56, align 8, !tbaa !3
  %128 = lshr i32 %127, 8
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %129, ptr %130, align 1, !tbaa !7
  %131 = load i32, ptr %57, align 4, !tbaa !3
  %132 = lshr i32 %131, 8
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %133, ptr %134, align 1, !tbaa !7
  %135 = load i32, ptr %58, align 8, !tbaa !3
  %136 = lshr i32 %135, 8
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %137, ptr %138, align 1, !tbaa !7
  %139 = load i32, ptr %59, align 4, !tbaa !3
  %140 = lshr i32 %139, 8
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %1, i64 14
  store i8 %141, ptr %142, align 1, !tbaa !7
  %143 = load i32, ptr %60, align 8, !tbaa !3
  %144 = lshr i32 %143, 8
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds i8, ptr %1, i64 18
  store i8 %145, ptr %146, align 1, !tbaa !7
  %147 = load i32, ptr %61, align 4, !tbaa !3
  %148 = lshr i32 %147, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds i8, ptr %1, i64 22
  store i8 %149, ptr %150, align 1, !tbaa !7
  %151 = load i32, ptr %62, align 8, !tbaa !3
  %152 = lshr i32 %151, 8
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds i8, ptr %1, i64 26
  store i8 %153, ptr %154, align 1, !tbaa !7
  %155 = load i32, ptr %63, align 4, !tbaa !3
  %156 = lshr i32 %155, 8
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds i8, ptr %1, i64 30
  store i8 %157, ptr %158, align 1, !tbaa !7
  %159 = load i32, ptr %56, align 8, !tbaa !3
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %160, ptr %161, align 1, !tbaa !7
  %162 = load i32, ptr %57, align 4, !tbaa !3
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %163, ptr %164, align 1, !tbaa !7
  %165 = load i32, ptr %58, align 8, !tbaa !3
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %166, ptr %167, align 1, !tbaa !7
  %168 = load i32, ptr %59, align 4, !tbaa !3
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds i8, ptr %1, i64 15
  store i8 %169, ptr %170, align 1, !tbaa !7
  %171 = load i32, ptr %60, align 8, !tbaa !3
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds i8, ptr %1, i64 19
  store i8 %172, ptr %173, align 1, !tbaa !7
  %174 = load i32, ptr %61, align 4, !tbaa !3
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds i8, ptr %1, i64 23
  store i8 %175, ptr %176, align 1, !tbaa !7
  %177 = load i32, ptr %62, align 8, !tbaa !3
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds i8, ptr %1, i64 27
  store i8 %178, ptr %179, align 1, !tbaa !7
  %180 = load i32, ptr %63, align 4, !tbaa !3
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds i8, ptr %1, i64 31
  store i8 %181, ptr %182, align 1, !tbaa !7
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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = !{!13, !4, i64 64}
!13 = !{!"", !5, i64 0, !4, i64 64, !14, i64 72, !5, i64 80}
!14 = !{!"long long", !5, i64 0}
!15 = !{!13, !14, i64 72}
!16 = distinct !{!16, !9}
