; ModuleID = 'arcfour.c'
source_filename = "arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @arcfour_key_setup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1, !tbaa !3
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %4, align 1, !tbaa !3
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %5, align 1, !tbaa !3
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %6, align 1, !tbaa !3
  %7 = getelementptr inbounds i8, ptr %0, i64 64
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %7, align 1, !tbaa !3
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %8, align 1, !tbaa !3
  %9 = getelementptr inbounds i8, ptr %0, i64 96
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %9, align 1, !tbaa !3
  %10 = getelementptr inbounds i8, ptr %0, i64 112
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %10, align 1, !tbaa !3
  %11 = getelementptr inbounds i8, ptr %0, i64 128
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %11, align 1, !tbaa !3
  %12 = getelementptr inbounds i8, ptr %0, i64 144
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %12, align 1, !tbaa !3
  %13 = getelementptr inbounds i8, ptr %0, i64 160
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %13, align 1, !tbaa !3
  %14 = getelementptr inbounds i8, ptr %0, i64 176
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %14, align 1, !tbaa !3
  %15 = getelementptr inbounds i8, ptr %0, i64 192
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %15, align 1, !tbaa !3
  %16 = getelementptr inbounds i8, ptr %0, i64 208
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %16, align 1, !tbaa !3
  %17 = getelementptr inbounds i8, ptr %0, i64 224
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %17, align 1, !tbaa !3
  %18 = getelementptr inbounds i8, ptr %0, i64 240
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %18, align 1, !tbaa !3
  br label %19

19:                                               ; preds = %3, %19
  %20 = phi i64 [ %34, %19 ], [ 0, %3 ]
  %21 = phi i8 [ %30, %19 ], [ 0, %3 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !3
  %24 = add i8 %23, %21
  %25 = trunc i64 %20 to i32
  %26 = srem i32 %25, %2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !3
  %30 = add i8 %24, %29
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !3
  store i8 %33, ptr %22, align 1, !tbaa !3
  store i8 %23, ptr %32, align 1, !tbaa !3
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %36, label %19, !llvm.loop !6

36:                                               ; preds = %19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @arcfour_generate_stream(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = phi i64 [ %24, %5 ], [ 0, %3 ]
  %8 = phi i8 [ %14, %5 ], [ 0, %3 ]
  %9 = add nsw i32 %6, 1
  %10 = srem i32 %9, 256
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !3
  %14 = add i8 %13, %8
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !3
  store i8 %17, ptr %12, align 1, !tbaa !3
  store i8 %13, ptr %16, align 1, !tbaa !3
  %18 = load i8, ptr %12, align 1, !tbaa !3
  %19 = add i8 %18, %13
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !3
  %23 = getelementptr inbounds i8, ptr %1, i64 %7
  store i8 %22, ptr %23, align 1, !tbaa !3
  %24 = add nuw i64 %7, 1
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %5, !llvm.loop !8

26:                                               ; preds = %5, %3
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 16.0.6 (Fedora 16.0.6-4.fc38)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
