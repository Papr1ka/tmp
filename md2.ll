; ModuleID = 'md2.c'
source_filename = "md2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct.MD2_CTX = type { [16 x i8], [48 x i8], [16 x i8], i32 }

@s = internal unnamed_addr constant [256 x i8] c").C\C9\A2\D8|\01=6T\A1\EC\F0\06\13b\A7\05\F3\C0\C7s\8C\98\93+\D9\BCL\82\CA\1E\9BW<\FD\D4\E0\16gBo\18\8A\17\E5\12\BEN\C4\D6\DA\9E\DEI\A0\FB\F5\8E\BB/\EEz\A9hy\91\15\B2\07?\94\C2\10\89\0B\22_!\80\7F]\9AZ\902'5>\CC\E7\BF\F7\97\03\FF\190\B3H\A5\B5\D1\D7^\92*\ACV\AA\C6O\B88\D2\96\A4}\B6v\FCk\E2\9Ct\04\F1E\9DpYdq\87 \86[\CFe\E6-\A8\02\1B`%\AD\AE\B0\B9\F6\1CFai4@~\0FUG\A3#\DDQ\AF:\C3\\\F9\CE\BA\C5\EA&,S\0Dn\85(\84\09\D3\DF\CD\F4A\81MRj\DC7\C8l\C1\AB\FA$\E1{\08\0C\BD\B1Jx\88\95\8B\E3c\E8m\E9\CB\D5\FE;\00\1D9\F2\EF\B7\0EfX\D0\E4\A6wr\F8\EBuK\0A1DP\B4\8F\ED\1F\1A\DB\99\8D3\9F\11\83\14", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md2_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i64 64
  %4 = icmp ult ptr %0, %1
  %5 = icmp ugt ptr %3, %1
  %6 = and i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load <16 x i8>, ptr %1, align 1, !tbaa !3, !alias.scope !6
  %9 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 16
  store <16 x i8> %8, ptr %9, align 1, !tbaa !3, !alias.scope !9, !noalias !6
  %10 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 0
  %11 = load <16 x i8>, ptr %10, align 1, !tbaa !3, !alias.scope !9, !noalias !6
  %12 = xor <16 x i8> %11, %8
  %13 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 32
  store <16 x i8> %12, ptr %13, align 1, !tbaa !3, !alias.scope !9, !noalias !6
  br label %37

14:                                               ; preds = %2, %14
  %15 = phi i64 [ %35, %14 ], [ 0, %2 ]
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !3
  %18 = add nuw nsw i64 %15, 16
  %19 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %18
  store i8 %17, ptr %19, align 1, !tbaa !3
  %20 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %15
  %21 = load i8, ptr %20, align 1, !tbaa !3
  %22 = xor i8 %21, %17
  %23 = add nuw nsw i64 %15, 32
  %24 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %23
  store i8 %22, ptr %24, align 1, !tbaa !3
  %25 = or i64 %15, 1
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !3
  %28 = add nuw nsw i64 %15, 17
  %29 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %28
  store i8 %27, ptr %29, align 1, !tbaa !3
  %30 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %25
  %31 = load i8, ptr %30, align 1, !tbaa !3
  %32 = xor i8 %31, %27
  %33 = add nuw nsw i64 %15, 33
  %34 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %33
  store i8 %32, ptr %34, align 1, !tbaa !3
  %35 = add nuw nsw i64 %15, 2
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %37, label %14, !llvm.loop !11

37:                                               ; preds = %14, %7
  br label %38

38:                                               ; preds = %37, %67
  %39 = phi i32 [ %69, %67 ], [ 0, %37 ]
  %40 = phi i32 [ %70, %67 ], [ 0, %37 ]
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i64 [ 0, %38 ], [ %65, %41 ]
  %43 = phi i32 [ %39, %38 ], [ %64, %41 ]
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !3
  %47 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %42
  %48 = load i8, ptr %47, align 1, !tbaa !3
  %49 = xor i8 %48, %46
  store i8 %49, ptr %47, align 1, !tbaa !3
  %50 = add nuw nsw i64 %42, 1
  %51 = zext i8 %49 to i64
  %52 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !3
  %54 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %50
  %55 = load i8, ptr %54, align 1, !tbaa !3
  %56 = xor i8 %55, %53
  store i8 %56, ptr %54, align 1, !tbaa !3
  %57 = add nuw nsw i64 %42, 2
  %58 = zext i8 %56 to i64
  %59 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !3
  %61 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1, i64 %57
  %62 = load i8, ptr %61, align 1, !tbaa !3
  %63 = xor i8 %62, %60
  store i8 %63, ptr %61, align 1, !tbaa !3
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i64 %42, 3
  %66 = icmp eq i64 %65, 48
  br i1 %66, label %67, label %41, !llvm.loop !14

67:                                               ; preds = %41
  %68 = add nuw nsw i32 %40, %64
  %69 = and i32 %68, 255
  %70 = add nuw nsw i32 %40, 1
  %71 = icmp eq i32 %70, 18
  br i1 %71, label %72, label %38, !llvm.loop !15

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 15
  %74 = load i8, ptr %73, align 1, !tbaa !3
  %75 = load i8, ptr %1, align 1, !tbaa !3
  %76 = xor i8 %75, %74
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !3
  %80 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 0
  %81 = load i8, ptr %80, align 1, !tbaa !3
  %82 = xor i8 %81, %79
  store i8 %82, ptr %80, align 1, !tbaa !3
  %83 = getelementptr inbounds i8, ptr %1, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !3
  %85 = xor i8 %84, %82
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !3
  %89 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !3
  %91 = xor i8 %90, %88
  store i8 %91, ptr %89, align 1, !tbaa !3
  %92 = getelementptr inbounds i8, ptr %1, i64 2
  %93 = load i8, ptr %92, align 1, !tbaa !3
  %94 = xor i8 %93, %91
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !3
  %98 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !3
  %100 = xor i8 %99, %97
  store i8 %100, ptr %98, align 1, !tbaa !3
  %101 = getelementptr inbounds i8, ptr %1, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !3
  %103 = xor i8 %102, %100
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !3
  %107 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 3
  %108 = load i8, ptr %107, align 1, !tbaa !3
  %109 = xor i8 %108, %106
  store i8 %109, ptr %107, align 1, !tbaa !3
  %110 = getelementptr inbounds i8, ptr %1, i64 4
  %111 = load i8, ptr %110, align 1, !tbaa !3
  %112 = xor i8 %111, %109
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !3
  %116 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 4
  %117 = load i8, ptr %116, align 1, !tbaa !3
  %118 = xor i8 %117, %115
  store i8 %118, ptr %116, align 1, !tbaa !3
  %119 = getelementptr inbounds i8, ptr %1, i64 5
  %120 = load i8, ptr %119, align 1, !tbaa !3
  %121 = xor i8 %120, %118
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !3
  %125 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 5
  %126 = load i8, ptr %125, align 1, !tbaa !3
  %127 = xor i8 %126, %124
  store i8 %127, ptr %125, align 1, !tbaa !3
  %128 = getelementptr inbounds i8, ptr %1, i64 6
  %129 = load i8, ptr %128, align 1, !tbaa !3
  %130 = xor i8 %129, %127
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !3
  %134 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 6
  %135 = load i8, ptr %134, align 1, !tbaa !3
  %136 = xor i8 %135, %133
  store i8 %136, ptr %134, align 1, !tbaa !3
  %137 = getelementptr inbounds i8, ptr %1, i64 7
  %138 = load i8, ptr %137, align 1, !tbaa !3
  %139 = xor i8 %138, %136
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !3
  %143 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 7
  %144 = load i8, ptr %143, align 1, !tbaa !3
  %145 = xor i8 %144, %142
  store i8 %145, ptr %143, align 1, !tbaa !3
  %146 = getelementptr inbounds i8, ptr %1, i64 8
  %147 = load i8, ptr %146, align 1, !tbaa !3
  %148 = xor i8 %147, %145
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !3
  %152 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 8
  %153 = load i8, ptr %152, align 1, !tbaa !3
  %154 = xor i8 %153, %151
  store i8 %154, ptr %152, align 1, !tbaa !3
  %155 = getelementptr inbounds i8, ptr %1, i64 9
  %156 = load i8, ptr %155, align 1, !tbaa !3
  %157 = xor i8 %156, %154
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !3
  %161 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 9
  %162 = load i8, ptr %161, align 1, !tbaa !3
  %163 = xor i8 %162, %160
  store i8 %163, ptr %161, align 1, !tbaa !3
  %164 = getelementptr inbounds i8, ptr %1, i64 10
  %165 = load i8, ptr %164, align 1, !tbaa !3
  %166 = xor i8 %165, %163
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !3
  %170 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 10
  %171 = load i8, ptr %170, align 1, !tbaa !3
  %172 = xor i8 %171, %169
  store i8 %172, ptr %170, align 1, !tbaa !3
  %173 = getelementptr inbounds i8, ptr %1, i64 11
  %174 = load i8, ptr %173, align 1, !tbaa !3
  %175 = xor i8 %174, %172
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !3
  %179 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 11
  %180 = load i8, ptr %179, align 1, !tbaa !3
  %181 = xor i8 %180, %178
  store i8 %181, ptr %179, align 1, !tbaa !3
  %182 = getelementptr inbounds i8, ptr %1, i64 12
  %183 = load i8, ptr %182, align 1, !tbaa !3
  %184 = xor i8 %183, %181
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !3
  %188 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 12
  %189 = load i8, ptr %188, align 1, !tbaa !3
  %190 = xor i8 %189, %187
  store i8 %190, ptr %188, align 1, !tbaa !3
  %191 = getelementptr inbounds i8, ptr %1, i64 13
  %192 = load i8, ptr %191, align 1, !tbaa !3
  %193 = xor i8 %192, %190
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !3
  %197 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 13
  %198 = load i8, ptr %197, align 1, !tbaa !3
  %199 = xor i8 %198, %196
  store i8 %199, ptr %197, align 1, !tbaa !3
  %200 = getelementptr inbounds i8, ptr %1, i64 14
  %201 = load i8, ptr %200, align 1, !tbaa !3
  %202 = xor i8 %201, %199
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !3
  %206 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2, i64 14
  %207 = load i8, ptr %206, align 1, !tbaa !3
  %208 = xor i8 %207, %205
  store i8 %208, ptr %206, align 1, !tbaa !3
  %209 = getelementptr inbounds i8, ptr %1, i64 15
  %210 = load i8, ptr %209, align 1, !tbaa !3
  %211 = xor i8 %210, %208
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [256 x i8], ptr @s, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !3
  %215 = load i8, ptr %73, align 1, !tbaa !3
  %216 = xor i8 %215, %214
  store i8 %216, ptr %73, align 1, !tbaa !3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @md2_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %2, i8 0, i64 68, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md2_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !16
  br label %8

8:                                                ; preds = %5, %19
  %9 = phi i32 [ %7, %5 ], [ %20, %19 ]
  %10 = phi i64 [ 0, %5 ], [ %21, %19 ]
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !3
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [16 x i8], ptr %0, i64 0, i64 %13
  store i8 %12, ptr %14, align 1, !tbaa !3
  %15 = load i32, ptr %6, align 4, !tbaa !16
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %6, align 4, !tbaa !16
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  tail call void @md2_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  store i32 0, ptr %6, align 4, !tbaa !16
  br label %19

19:                                               ; preds = %8, %18
  %20 = phi i32 [ %16, %8 ], [ 0, %18 ]
  %21 = add nuw i64 %10, 1
  %22 = icmp eq i64 %21, %2
  br i1 %22, label %23, label %8, !llvm.loop !19

23:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md2_final(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i8
  %8 = sub i8 16, %7
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %4, %6 ], [ %14, %9 ]
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 4, !tbaa !16
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [16 x i8], ptr %0, i64 0, i64 %12
  store i8 %8, ptr %13, align 1, !tbaa !3
  %14 = load i32, ptr %3, align 4, !tbaa !16
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %9, label %16, !llvm.loop !20

16:                                               ; preds = %9, %2
  tail call void @md2_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %17 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 2
  tail call void @md2_transform(ptr noundef nonnull %0, ptr noundef nonnull %17)
  %18 = getelementptr inbounds %struct.MD2_CTX, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %18, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 16.0.6 (Fedora 16.0.6-4.fc38)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7}
!7 = distinct !{!7, !8}
!8 = distinct !{!8, !"LVerDomain"}
!9 = !{!10}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{!17, !18, i64 80}
!17 = !{!"", !4, i64 0, !4, i64 16, !4, i64 64, !18, i64 80}
!18 = !{!"int", !4, i64 0}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
