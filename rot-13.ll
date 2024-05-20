; ModuleID = 'rot-13.c'
source_filename = "rot-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @rot13(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #2
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %7

7:                                                ; preds = %5, %32
  %8 = phi i64 [ 0, %5 ], [ %33, %32 ]
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !3
  %11 = freeze i8 %10
  %12 = icmp slt i8 %11, 65
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = add nsw i8 %11, -91
  %15 = icmp ult i8 %14, 6
  %16 = icmp ugt i8 %11, 122
  %17 = or i1 %16, %15
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = icmp ugt i8 %11, 96
  %20 = select i1 %19, i32 97, i32 65
  %21 = zext i8 %11 to i32
  %22 = add nuw nsw i32 %21, 13
  %23 = or i32 %20, 26
  %24 = icmp ult i32 %22, %23
  %25 = select i1 %24, i32 0, i32 %23
  %26 = sub nuw nsw i32 %22, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %9, align 1, !tbaa !3
  %28 = icmp slt i8 %27, 26
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = add nuw nsw i32 %26, %20
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %9, align 1, !tbaa !3
  br label %32

32:                                               ; preds = %13, %18, %29, %7
  %33 = add nuw nsw i64 %8, 1
  %34 = icmp eq i64 %33, %6
  br i1 %34, label %35, label %7, !llvm.loop !6

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
