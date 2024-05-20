; ModuleID = 'base64.c'
source_filename = "base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

@charset = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @revchar(i8 noundef signext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -65
  %3 = icmp ult i8 %2, 26
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = add i8 %0, -97
  %6 = icmp ult i8 %5, 26
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = add nsw i8 %0, -71
  br label %19

9:                                                ; preds = %4
  %10 = add i8 %0, -48
  %11 = icmp ult i8 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw nsw i8 %0, 4
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i8 %0, 43
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp eq i8 %0, 47
  %18 = select i1 %17, i8 63, i8 %0
  br label %19

19:                                               ; preds = %1, %14, %7, %16, %12
  %20 = phi i8 [ %8, %7 ], [ %13, %12 ], [ %18, %16 ], [ 62, %14 ], [ %2, %1 ]
  ret i8 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @base64_encode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = udiv i64 %2, 3
  %6 = urem i64 %2, 3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = shl i64 %5, 2
  %10 = icmp eq i64 %6, 0
  %11 = add i64 %9, 4
  %12 = select i1 %10, i64 %9, i64 %11
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %136, label %14

14:                                               ; preds = %8
  %15 = udiv i64 %2, 57
  %16 = add i64 %12, %15
  br label %136

17:                                               ; preds = %4
  %18 = mul nuw i64 %5, 3
  %19 = icmp ult i64 %2, 3
  br i1 %19, label %80, label %20

20:                                               ; preds = %17
  %21 = icmp ne i32 %3, 0
  br label %22

22:                                               ; preds = %20, %75
  %23 = phi i64 [ 0, %20 ], [ %77, %75 ]
  %24 = phi i64 [ 0, %20 ], [ %78, %75 ]
  %25 = phi i64 [ 0, %20 ], [ %76, %75 ]
  %26 = getelementptr inbounds i8, ptr %0, i64 %24
  %27 = load i8, ptr %26, align 1, !tbaa !3
  %28 = lshr i8 %27, 2
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !3
  %32 = getelementptr inbounds i8, ptr %1, i64 %25
  store i8 %31, ptr %32, align 1, !tbaa !3
  %33 = load i8, ptr %26, align 1, !tbaa !3
  %34 = shl i8 %33, 4
  %35 = and i8 %34, 48
  %36 = add nuw i64 %24, 1
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !3
  %39 = lshr i8 %38, 4
  %40 = or i8 %35, %39
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !3
  %44 = add i64 %25, 1
  %45 = getelementptr inbounds i8, ptr %1, i64 %44
  store i8 %43, ptr %45, align 1, !tbaa !3
  %46 = load i8, ptr %37, align 1, !tbaa !3
  %47 = shl i8 %46, 2
  %48 = and i8 %47, 60
  %49 = add i64 %24, 2
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !3
  %52 = lshr i8 %51, 6
  %53 = or i8 %48, %52
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !3
  %57 = add i64 %25, 2
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  store i8 %56, ptr %58, align 1, !tbaa !3
  %59 = load i8, ptr %50, align 1, !tbaa !3
  %60 = and i8 %59, 63
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !3
  %64 = add i64 %25, 3
  %65 = getelementptr inbounds i8, ptr %1, i64 %64
  store i8 %63, ptr %65, align 1, !tbaa !3
  %66 = add i64 %25, 4
  %67 = sub i64 %66, %23
  %68 = urem i64 %67, 76
  %69 = icmp eq i64 %68, 0
  %70 = and i1 %21, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %22
  %72 = getelementptr inbounds i8, ptr %1, i64 %66
  store i8 10, ptr %72, align 1, !tbaa !3
  %73 = add i64 %23, 1
  %74 = add i64 %25, 5
  br label %75

75:                                               ; preds = %22, %71
  %76 = phi i64 [ %66, %22 ], [ %74, %71 ]
  %77 = phi i64 [ %23, %22 ], [ %73, %71 ]
  %78 = add i64 %24, 3
  %79 = icmp ult i64 %78, %18
  br i1 %79, label %22, label %80, !llvm.loop !6

80:                                               ; preds = %75, %17
  %81 = phi i64 [ 0, %17 ], [ %76, %75 ]
  %82 = phi i64 [ 0, %17 ], [ %78, %75 ]
  switch i64 %6, label %136 [
    i64 1, label %83
    i64 2, label %104
  ]

83:                                               ; preds = %80
  %84 = getelementptr inbounds i8, ptr %0, i64 %82
  %85 = load i8, ptr %84, align 1, !tbaa !3
  %86 = lshr i8 %85, 2
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !3
  %90 = getelementptr inbounds i8, ptr %1, i64 %81
  store i8 %89, ptr %90, align 1, !tbaa !3
  %91 = load i8, ptr %84, align 1, !tbaa !3
  %92 = shl i8 %91, 4
  %93 = and i8 %92, 48
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %94
  %96 = load i8, ptr %95, align 16, !tbaa !3
  %97 = add i64 %81, 1
  %98 = getelementptr inbounds i8, ptr %1, i64 %97
  store i8 %96, ptr %98, align 1, !tbaa !3
  %99 = add i64 %81, 2
  %100 = getelementptr inbounds i8, ptr %1, i64 %99
  store i8 61, ptr %100, align 1, !tbaa !3
  %101 = add i64 %81, 3
  %102 = getelementptr inbounds i8, ptr %1, i64 %101
  store i8 61, ptr %102, align 1, !tbaa !3
  %103 = add i64 %81, 4
  br label %136

104:                                              ; preds = %80
  %105 = getelementptr inbounds i8, ptr %0, i64 %82
  %106 = load i8, ptr %105, align 1, !tbaa !3
  %107 = lshr i8 %106, 2
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !3
  %111 = getelementptr inbounds i8, ptr %1, i64 %81
  store i8 %110, ptr %111, align 1, !tbaa !3
  %112 = load i8, ptr %105, align 1, !tbaa !3
  %113 = shl i8 %112, 4
  %114 = and i8 %113, 48
  %115 = add i64 %82, 1
  %116 = getelementptr inbounds i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !3
  %118 = lshr i8 %117, 4
  %119 = or i8 %114, %118
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !3
  %123 = add i64 %81, 1
  %124 = getelementptr inbounds i8, ptr %1, i64 %123
  store i8 %122, ptr %124, align 1, !tbaa !3
  %125 = load i8, ptr %116, align 1, !tbaa !3
  %126 = shl i8 %125, 2
  %127 = and i8 %126, 60
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [65 x i8], ptr @charset, i64 0, i64 %128
  %130 = load i8, ptr %129, align 4, !tbaa !3
  %131 = add i64 %81, 2
  %132 = getelementptr inbounds i8, ptr %1, i64 %131
  store i8 %130, ptr %132, align 1, !tbaa !3
  %133 = add i64 %81, 3
  %134 = getelementptr inbounds i8, ptr %1, i64 %133
  store i8 61, ptr %134, align 1, !tbaa !3
  %135 = add i64 %81, 4
  br label %136

136:                                              ; preds = %80, %83, %104, %8, %14
  %137 = phi i64 [ %16, %14 ], [ %12, %8 ], [ %103, %83 ], [ %135, %104 ], [ %81, %80 ]
  ret i64 %137
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @base64_decode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = add i64 %2, -1
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !3
  %7 = icmp eq i8 %6, 61
  %8 = select i1 %7, i64 %4, i64 %2
  %9 = add i64 %8, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !3
  %12 = icmp eq i8 %11, 61
  %13 = select i1 %12, i64 %9, i64 %8
  %14 = and i64 %13, 3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = icmp ugt i64 %13, 76
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, ptr %0, i64 76
  %20 = load i8, ptr %19, align 1, !tbaa !3
  %21 = icmp eq i8 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = udiv i64 %13, 77
  %24 = sub i64 %13, %23
  br label %25

25:                                               ; preds = %22, %18, %16
  %26 = phi i64 [ %24, %22 ], [ %13, %18 ], [ %13, %16 ]
  %27 = lshr i64 %26, 2
  %28 = and i64 %26, 3
  %29 = mul nuw i64 %27, 3
  switch i64 %28, label %339 [
    i64 2, label %30
    i64 3, label %32
  ]

30:                                               ; preds = %25
  %31 = add nuw i64 %29, 1
  br label %339

32:                                               ; preds = %25
  %33 = add nuw i64 %29, 2
  br label %339

34:                                               ; preds = %3
  %35 = and i64 %13, -4
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %189, label %37

37:                                               ; preds = %34, %181
  %38 = phi i64 [ %187, %181 ], [ 0, %34 ]
  %39 = phi i64 [ %186, %181 ], [ 0, %34 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !3
  %42 = icmp eq i8 %41, 10
  %43 = zext i1 %42 to i64
  %44 = add nuw i64 %38, %43
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !3
  %47 = add i8 %46, -65
  %48 = icmp ult i8 %47, 26
  br i1 %48, label %64, label %49

49:                                               ; preds = %37
  %50 = add i8 %46, -97
  %51 = icmp ult i8 %50, 26
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = add nsw i8 %46, -71
  br label %64

54:                                               ; preds = %49
  %55 = add i8 %46, -48
  %56 = icmp ult i8 %55, 10
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = add nuw nsw i8 %46, 4
  br label %64

59:                                               ; preds = %54
  %60 = icmp eq i8 %46, 43
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = icmp eq i8 %46, 47
  %63 = select i1 %62, i8 63, i8 %46
  br label %64

64:                                               ; preds = %37, %52, %57, %59, %61
  %65 = phi i8 [ %53, %52 ], [ %58, %57 ], [ %63, %61 ], [ 62, %59 ], [ %47, %37 ]
  %66 = shl i8 %65, 2
  %67 = add i64 %44, 1
  %68 = getelementptr inbounds i8, ptr %0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !3
  %70 = add i8 %69, -65
  %71 = icmp ult i8 %70, 26
  br i1 %71, label %87, label %72

72:                                               ; preds = %64
  %73 = add i8 %69, -97
  %74 = icmp ult i8 %73, 26
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = add nsw i8 %69, -71
  br label %87

77:                                               ; preds = %72
  %78 = add i8 %69, -48
  %79 = icmp ult i8 %78, 10
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = add nuw nsw i8 %69, 4
  br label %87

82:                                               ; preds = %77
  %83 = icmp eq i8 %69, 43
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp eq i8 %69, 47
  %86 = select i1 %85, i8 63, i8 %69
  br label %87

87:                                               ; preds = %64, %75, %80, %82, %84
  %88 = phi i8 [ %76, %75 ], [ %81, %80 ], [ %86, %84 ], [ 62, %82 ], [ %70, %64 ]
  %89 = lshr i8 %88, 4
  %90 = and i8 %89, 3
  %91 = or i8 %90, %66
  %92 = getelementptr inbounds i8, ptr %1, i64 %39
  store i8 %91, ptr %92, align 1, !tbaa !3
  %93 = load i8, ptr %68, align 1, !tbaa !3
  %94 = add i8 %93, -65
  %95 = icmp ult i8 %94, 26
  br i1 %95, label %111, label %96

96:                                               ; preds = %87
  %97 = add i8 %93, -97
  %98 = icmp ult i8 %97, 26
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = add nsw i8 %93, -71
  br label %111

101:                                              ; preds = %96
  %102 = add i8 %93, -48
  %103 = icmp ult i8 %102, 10
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = add nuw nsw i8 %93, 4
  br label %111

106:                                              ; preds = %101
  %107 = icmp eq i8 %93, 43
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = icmp eq i8 %93, 47
  %110 = select i1 %109, i8 63, i8 %93
  br label %111

111:                                              ; preds = %87, %99, %104, %106, %108
  %112 = phi i8 [ %100, %99 ], [ %105, %104 ], [ %110, %108 ], [ 62, %106 ], [ %94, %87 ]
  %113 = shl i8 %112, 4
  %114 = add i64 %44, 2
  %115 = getelementptr inbounds i8, ptr %0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !3
  %117 = add i8 %116, -65
  %118 = icmp ult i8 %117, 26
  br i1 %118, label %134, label %119

119:                                              ; preds = %111
  %120 = add i8 %116, -97
  %121 = icmp ult i8 %120, 26
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = add nsw i8 %116, -71
  br label %134

124:                                              ; preds = %119
  %125 = add i8 %116, -48
  %126 = icmp ult i8 %125, 10
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = add nuw nsw i8 %116, 4
  br label %134

129:                                              ; preds = %124
  %130 = icmp eq i8 %116, 43
  br i1 %130, label %134, label %131

131:                                              ; preds = %129
  %132 = icmp eq i8 %116, 47
  %133 = select i1 %132, i8 63, i8 %116
  br label %134

134:                                              ; preds = %111, %122, %127, %129, %131
  %135 = phi i8 [ %123, %122 ], [ %128, %127 ], [ %133, %131 ], [ 62, %129 ], [ %117, %111 ]
  %136 = lshr i8 %135, 2
  %137 = or i8 %136, %113
  %138 = add i64 %39, 1
  %139 = getelementptr inbounds i8, ptr %1, i64 %138
  store i8 %137, ptr %139, align 1, !tbaa !3
  %140 = load i8, ptr %115, align 1, !tbaa !3
  %141 = add i8 %140, -65
  %142 = icmp ult i8 %141, 26
  br i1 %142, label %158, label %143

143:                                              ; preds = %134
  %144 = add i8 %140, -97
  %145 = icmp ult i8 %144, 26
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = add nsw i8 %140, -71
  br label %158

148:                                              ; preds = %143
  %149 = add i8 %140, -48
  %150 = icmp ult i8 %149, 10
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = add nuw nsw i8 %140, 4
  br label %158

153:                                              ; preds = %148
  %154 = icmp eq i8 %140, 43
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  %156 = icmp eq i8 %140, 47
  %157 = select i1 %156, i8 63, i8 %140
  br label %158

158:                                              ; preds = %134, %146, %151, %153, %155
  %159 = phi i8 [ %147, %146 ], [ %152, %151 ], [ %157, %155 ], [ 62, %153 ], [ %141, %134 ]
  %160 = shl i8 %159, 6
  %161 = add i64 %44, 3
  %162 = getelementptr inbounds i8, ptr %0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !3
  %164 = add i8 %163, -65
  %165 = icmp ult i8 %164, 26
  br i1 %165, label %181, label %166

166:                                              ; preds = %158
  %167 = add i8 %163, -97
  %168 = icmp ult i8 %167, 26
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = add nsw i8 %163, -71
  br label %181

171:                                              ; preds = %166
  %172 = add i8 %163, -48
  %173 = icmp ult i8 %172, 10
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = add nuw nsw i8 %163, 4
  br label %181

176:                                              ; preds = %171
  %177 = icmp eq i8 %163, 43
  br i1 %177, label %181, label %178

178:                                              ; preds = %176
  %179 = icmp eq i8 %163, 47
  %180 = select i1 %179, i8 63, i8 %163
  br label %181

181:                                              ; preds = %158, %169, %174, %176, %178
  %182 = phi i8 [ %170, %169 ], [ %175, %174 ], [ %180, %178 ], [ 62, %176 ], [ %164, %158 ]
  %183 = or i8 %182, %160
  %184 = add i64 %39, 2
  %185 = getelementptr inbounds i8, ptr %1, i64 %184
  store i8 %183, ptr %185, align 1, !tbaa !3
  %186 = add i64 %39, 3
  %187 = add i64 %44, 4
  %188 = icmp ult i64 %187, %35
  br i1 %188, label %37, label %189, !llvm.loop !8

189:                                              ; preds = %181, %34
  %190 = phi i64 [ 0, %34 ], [ %186, %181 ]
  %191 = phi i64 [ 0, %34 ], [ %187, %181 ]
  switch i64 %14, label %339 [
    i64 2, label %192
    i64 3, label %242
  ]

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, ptr %0, i64 %191
  %194 = load i8, ptr %193, align 1, !tbaa !3
  %195 = add i8 %194, -65
  %196 = icmp ult i8 %195, 26
  br i1 %196, label %212, label %197

197:                                              ; preds = %192
  %198 = add i8 %194, -97
  %199 = icmp ult i8 %198, 26
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = add nsw i8 %194, -71
  br label %212

202:                                              ; preds = %197
  %203 = add i8 %194, -48
  %204 = icmp ult i8 %203, 10
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = add nuw nsw i8 %194, 4
  br label %212

207:                                              ; preds = %202
  %208 = icmp eq i8 %194, 43
  br i1 %208, label %212, label %209

209:                                              ; preds = %207
  %210 = icmp eq i8 %194, 47
  %211 = select i1 %210, i8 63, i8 %194
  br label %212

212:                                              ; preds = %192, %200, %205, %207, %209
  %213 = phi i8 [ %201, %200 ], [ %206, %205 ], [ %211, %209 ], [ 62, %207 ], [ %195, %192 ]
  %214 = shl i8 %213, 2
  %215 = add i64 %191, 1
  %216 = getelementptr inbounds i8, ptr %0, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !3
  %218 = add i8 %217, -65
  %219 = icmp ult i8 %218, 26
  br i1 %219, label %235, label %220

220:                                              ; preds = %212
  %221 = add i8 %217, -97
  %222 = icmp ult i8 %221, 26
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = add nsw i8 %217, -71
  br label %235

225:                                              ; preds = %220
  %226 = add i8 %217, -48
  %227 = icmp ult i8 %226, 10
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = add nuw nsw i8 %217, 4
  br label %235

230:                                              ; preds = %225
  %231 = icmp eq i8 %217, 43
  br i1 %231, label %235, label %232

232:                                              ; preds = %230
  %233 = icmp eq i8 %217, 47
  %234 = select i1 %233, i8 63, i8 %217
  br label %235

235:                                              ; preds = %212, %223, %228, %230, %232
  %236 = phi i8 [ %224, %223 ], [ %229, %228 ], [ %234, %232 ], [ 62, %230 ], [ %218, %212 ]
  %237 = lshr i8 %236, 4
  %238 = and i8 %237, 3
  %239 = or i8 %238, %214
  %240 = getelementptr inbounds i8, ptr %1, i64 %190
  store i8 %239, ptr %240, align 1, !tbaa !3
  %241 = add i64 %190, 1
  br label %339

242:                                              ; preds = %189
  %243 = getelementptr inbounds i8, ptr %0, i64 %191
  %244 = load i8, ptr %243, align 1, !tbaa !3
  %245 = add i8 %244, -65
  %246 = icmp ult i8 %245, 26
  br i1 %246, label %262, label %247

247:                                              ; preds = %242
  %248 = add i8 %244, -97
  %249 = icmp ult i8 %248, 26
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = add nsw i8 %244, -71
  br label %262

252:                                              ; preds = %247
  %253 = add i8 %244, -48
  %254 = icmp ult i8 %253, 10
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = add nuw nsw i8 %244, 4
  br label %262

257:                                              ; preds = %252
  %258 = icmp eq i8 %244, 43
  br i1 %258, label %262, label %259

259:                                              ; preds = %257
  %260 = icmp eq i8 %244, 47
  %261 = select i1 %260, i8 63, i8 %244
  br label %262

262:                                              ; preds = %242, %250, %255, %257, %259
  %263 = phi i8 [ %251, %250 ], [ %256, %255 ], [ %261, %259 ], [ 62, %257 ], [ %245, %242 ]
  %264 = shl i8 %263, 2
  %265 = add i64 %191, 1
  %266 = getelementptr inbounds i8, ptr %0, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !3
  %268 = add i8 %267, -65
  %269 = icmp ult i8 %268, 26
  br i1 %269, label %285, label %270

270:                                              ; preds = %262
  %271 = add i8 %267, -97
  %272 = icmp ult i8 %271, 26
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = add nsw i8 %267, -71
  br label %285

275:                                              ; preds = %270
  %276 = add i8 %267, -48
  %277 = icmp ult i8 %276, 10
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = add nuw nsw i8 %267, 4
  br label %285

280:                                              ; preds = %275
  %281 = icmp eq i8 %267, 43
  br i1 %281, label %285, label %282

282:                                              ; preds = %280
  %283 = icmp eq i8 %267, 47
  %284 = select i1 %283, i8 63, i8 %267
  br label %285

285:                                              ; preds = %262, %273, %278, %280, %282
  %286 = phi i8 [ %274, %273 ], [ %279, %278 ], [ %284, %282 ], [ 62, %280 ], [ %268, %262 ]
  %287 = lshr i8 %286, 4
  %288 = and i8 %287, 3
  %289 = or i8 %288, %264
  %290 = getelementptr inbounds i8, ptr %1, i64 %190
  store i8 %289, ptr %290, align 1, !tbaa !3
  %291 = load i8, ptr %266, align 1, !tbaa !3
  %292 = add i8 %291, -65
  %293 = icmp ult i8 %292, 26
  br i1 %293, label %309, label %294

294:                                              ; preds = %285
  %295 = add i8 %291, -97
  %296 = icmp ult i8 %295, 26
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = add nsw i8 %291, -71
  br label %309

299:                                              ; preds = %294
  %300 = add i8 %291, -48
  %301 = icmp ult i8 %300, 10
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = add nuw nsw i8 %291, 4
  br label %309

304:                                              ; preds = %299
  %305 = icmp eq i8 %291, 43
  br i1 %305, label %309, label %306

306:                                              ; preds = %304
  %307 = icmp eq i8 %291, 47
  %308 = select i1 %307, i8 63, i8 %291
  br label %309

309:                                              ; preds = %285, %297, %302, %304, %306
  %310 = phi i8 [ %298, %297 ], [ %303, %302 ], [ %308, %306 ], [ 62, %304 ], [ %292, %285 ]
  %311 = shl i8 %310, 4
  %312 = add i64 %191, 2
  %313 = getelementptr inbounds i8, ptr %0, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !3
  %315 = add i8 %314, -65
  %316 = icmp ult i8 %315, 26
  br i1 %316, label %332, label %317

317:                                              ; preds = %309
  %318 = add i8 %314, -97
  %319 = icmp ult i8 %318, 26
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = add nsw i8 %314, -71
  br label %332

322:                                              ; preds = %317
  %323 = add i8 %314, -48
  %324 = icmp ult i8 %323, 10
  br i1 %324, label %325, label %327

325:                                              ; preds = %322
  %326 = add nuw nsw i8 %314, 4
  br label %332

327:                                              ; preds = %322
  %328 = icmp eq i8 %314, 43
  br i1 %328, label %332, label %329

329:                                              ; preds = %327
  %330 = icmp eq i8 %314, 47
  %331 = select i1 %330, i8 63, i8 %314
  br label %332

332:                                              ; preds = %309, %320, %325, %327, %329
  %333 = phi i8 [ %321, %320 ], [ %326, %325 ], [ %331, %329 ], [ 62, %327 ], [ %315, %309 ]
  %334 = lshr i8 %333, 2
  %335 = or i8 %334, %311
  %336 = add i64 %190, 1
  %337 = getelementptr inbounds i8, ptr %1, i64 %336
  store i8 %335, ptr %337, align 1, !tbaa !3
  %338 = add i64 %190, 2
  br label %339

339:                                              ; preds = %189, %25, %235, %332, %30, %32
  %340 = phi i64 [ %31, %30 ], [ %33, %32 ], [ %241, %235 ], [ %338, %332 ], [ %29, %25 ], [ %190, %189 ]
  ret i64 %340
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
