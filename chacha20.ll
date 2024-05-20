; ModuleID = './chacha20.c'
source_filename = "./chacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

@in = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16
@out = dso_local global [16 x i32] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @main() local_unnamed_addr #0 {
  store i32 1, ptr @in, align 16, !tbaa !3
  %1 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 1), align 4, !tbaa !3
  %2 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 2), align 8, !tbaa !3
  %3 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 3), align 4, !tbaa !3
  %4 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 4), align 16, !tbaa !3
  %5 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 5), align 4, !tbaa !3
  %6 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 6), align 8, !tbaa !3
  %7 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 7), align 4, !tbaa !3
  %8 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 8), align 16, !tbaa !3
  %9 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 9), align 4, !tbaa !3
  %10 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 10), align 8, !tbaa !3
  %11 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 11), align 4, !tbaa !3
  %12 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 12), align 16, !tbaa !3
  %13 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 13), align 4, !tbaa !3
  %14 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 14), align 8, !tbaa !3
  %15 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @in, i64 0, i64 15), align 4, !tbaa !3
  br label %33

16:                                               ; preds = %33
  %17 = add i32 %123, 1
  store i32 %17, ptr @out, align 16, !tbaa !3
  %18 = add i32 %126, %1
  store i32 %18, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 1), align 4, !tbaa !3
  %19 = add i32 %129, %2
  store i32 %19, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 2), align 8, !tbaa !3
  %20 = add i32 %132, %3
  store i32 %20, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 3), align 4, !tbaa !3
  %21 = add i32 %146, %4
  store i32 %21, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 4), align 16, !tbaa !3
  %22 = add i32 %137, %5
  store i32 %22, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 5), align 4, !tbaa !3
  %23 = add i32 %140, %6
  store i32 %23, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 6), align 8, !tbaa !3
  %24 = add i32 %143, %7
  store i32 %24, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 7), align 4, !tbaa !3
  %25 = add i32 %141, %8
  store i32 %25, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 8), align 16, !tbaa !3
  %26 = add i32 %144, %9
  store i32 %26, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 9), align 4, !tbaa !3
  %27 = add i32 %135, %10
  store i32 %27, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 10), align 8, !tbaa !3
  %28 = add i32 %138, %11
  store i32 %28, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 11), align 4, !tbaa !3
  %29 = add i32 %128, %12
  store i32 %29, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 12), align 16, !tbaa !3
  %30 = add i32 %131, %13
  store i32 %30, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 13), align 4, !tbaa !3
  %31 = add i32 %134, %14
  store i32 %31, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 14), align 8, !tbaa !3
  %32 = add i32 %125, %15
  store i32 %32, ptr getelementptr inbounds ([16 x i32], ptr @out, i64 0, i64 15), align 4, !tbaa !3
  ret ptr @out

33:                                               ; preds = %0, %33
  %34 = phi i32 [ 0, %0 ], [ %147, %33 ]
  %35 = phi i32 [ %15, %0 ], [ %125, %33 ]
  %36 = phi i32 [ %14, %0 ], [ %134, %33 ]
  %37 = phi i32 [ %13, %0 ], [ %131, %33 ]
  %38 = phi i32 [ %12, %0 ], [ %128, %33 ]
  %39 = phi i32 [ %11, %0 ], [ %138, %33 ]
  %40 = phi i32 [ %10, %0 ], [ %135, %33 ]
  %41 = phi i32 [ %9, %0 ], [ %144, %33 ]
  %42 = phi i32 [ %8, %0 ], [ %141, %33 ]
  %43 = phi i32 [ %7, %0 ], [ %143, %33 ]
  %44 = phi i32 [ %6, %0 ], [ %140, %33 ]
  %45 = phi i32 [ %5, %0 ], [ %137, %33 ]
  %46 = phi i32 [ %4, %0 ], [ %146, %33 ]
  %47 = phi i32 [ %3, %0 ], [ %132, %33 ]
  %48 = phi i32 [ %2, %0 ], [ %129, %33 ]
  %49 = phi i32 [ %1, %0 ], [ %126, %33 ]
  %50 = phi i32 [ 1, %0 ], [ %123, %33 ]
  %51 = add i32 %46, %50
  %52 = xor i32 %38, %51
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 16)
  %54 = add i32 %45, %49
  %55 = xor i32 %37, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 16)
  %57 = add i32 %44, %48
  %58 = xor i32 %36, %57
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 16)
  %60 = add i32 %43, %47
  %61 = xor i32 %35, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 16)
  %63 = add i32 %53, %42
  %64 = xor i32 %63, %46
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 12)
  %66 = add i32 %56, %41
  %67 = xor i32 %66, %45
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 12)
  %69 = add i32 %59, %40
  %70 = xor i32 %69, %44
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 12)
  %72 = add i32 %62, %39
  %73 = xor i32 %72, %43
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 12)
  %75 = add i32 %65, %51
  %76 = xor i32 %75, %53
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 8)
  %78 = add i32 %68, %54
  %79 = xor i32 %78, %56
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 8)
  %81 = add i32 %71, %57
  %82 = xor i32 %81, %59
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 8)
  %84 = add i32 %74, %60
  %85 = xor i32 %84, %62
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 8)
  %87 = add i32 %77, %63
  %88 = xor i32 %87, %65
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 7)
  %90 = add i32 %80, %66
  %91 = xor i32 %90, %68
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 7)
  %93 = add i32 %83, %69
  %94 = xor i32 %93, %71
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 7)
  %96 = add i32 %86, %72
  %97 = xor i32 %96, %74
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 7)
  %99 = add i32 %92, %75
  %100 = xor i32 %99, %86
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 16)
  %102 = add i32 %95, %78
  %103 = xor i32 %102, %77
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 16)
  %105 = add i32 %98, %81
  %106 = xor i32 %105, %80
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 16)
  %108 = add i32 %89, %84
  %109 = xor i32 %108, %83
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 16)
  %111 = add i32 %101, %93
  %112 = xor i32 %111, %92
  %113 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 12)
  %114 = add i32 %104, %96
  %115 = xor i32 %114, %95
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 12)
  %117 = add i32 %107, %87
  %118 = xor i32 %117, %98
  %119 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 12)
  %120 = add i32 %110, %90
  %121 = xor i32 %120, %89
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 12)
  %123 = add i32 %113, %99
  %124 = xor i32 %123, %101
  %125 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 8)
  %126 = add i32 %116, %102
  %127 = xor i32 %126, %104
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 8)
  %129 = add i32 %119, %105
  %130 = xor i32 %129, %107
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 8)
  %132 = add i32 %122, %108
  %133 = xor i32 %132, %110
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 8)
  %135 = add i32 %125, %111
  %136 = xor i32 %135, %113
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 7)
  %138 = add i32 %128, %114
  %139 = xor i32 %138, %116
  %140 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 7)
  %141 = add i32 %131, %117
  %142 = xor i32 %141, %119
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 7)
  %144 = add i32 %134, %120
  %145 = xor i32 %144, %122
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 7)
  %147 = add nuw nsw i32 %34, 1
  %148 = icmp eq i32 %147, 20
  br i1 %148, label %16, label %33, !llvm.loop !7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 16.0.6 (Fedora 16.0.6-4.fc38)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
