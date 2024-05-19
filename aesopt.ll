; ModuleID = './nanojpeg.c'
source_filename = "./nanojpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct._nj_ctx = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct._nj_cmp], i32, i32, [4 x [64 x i8]], [4 x [65536 x %struct._nj_code]], i32, i32, [64 x i32], i32, ptr }
%struct._nj_cmp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct._nj_code = type { i8, i8 }

@nj = internal global %struct._nj_ctx zeroinitializer, align 8
@njDecodeDHT.counts = internal global [16 x i8] zeroinitializer, align 16
@njZZ = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @njInit() #0 {
  call void @llvm.memset.p0.i64(ptr align 8 @nj, i8 0, i64 525032, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @njDone() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x %struct._nj_cmp], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i64 0, i64 %7
  %9 = getelementptr inbounds %struct._nj_cmp, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i32, ptr %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %struct._nj_cmp], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i64 0, i64 %14
  %16 = getelementptr inbounds %struct._nj_cmp, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %17) #5
  br label %18

18:                                               ; preds = %12, %5
  br label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %1, align 4
  br label %2, !llvm.loop !4

22:                                               ; preds = %2
  %23 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 20), align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 20), align 8
  call void @free(ptr noundef %26) #5
  br label %27

27:                                               ; preds = %25, %22
  call void @njInit()
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @njDecode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  call void @njDone()
  %6 = load ptr, ptr %4, align 8
  store ptr %6, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 2147483647
  store i32 %8, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %9 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %70

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 0
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, 255
  %18 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, 216
  %23 = or i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 1, ptr %3, align 4
  br label %70

26:                                               ; preds = %12
  call void @njSkip(i32 noundef 2)
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i32, ptr @nj, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %36 = getelementptr inbounds i8, ptr %35, i64 0
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %31
  store i32 5, ptr %3, align 4
  br label %70

41:                                               ; preds = %34
  call void @njSkip(i32 noundef 2)
  %42 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 -1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  switch i32 %45, label %52 [
    i32 192, label %46
    i32 196, label %47
    i32 219, label %48
    i32 221, label %49
    i32 218, label %50
    i32 254, label %51
  ]

46:                                               ; preds = %41
  call void @njDecodeSOF()
  br label %62

47:                                               ; preds = %41
  call void @njDecodeDHT()
  br label %62

48:                                               ; preds = %41
  call void @njDecodeDQT()
  br label %62

49:                                               ; preds = %41
  call void @njDecodeDRI()
  br label %62

50:                                               ; preds = %41
  call void @njDecodeScan()
  br label %62

51:                                               ; preds = %41
  call void @njSkipMarker()
  br label %62

52:                                               ; preds = %41
  %53 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %54 = getelementptr inbounds i8, ptr %53, i64 -1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 240
  %58 = icmp eq i32 %57, 224
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  call void @njSkipMarker()
  br label %61

60:                                               ; preds = %52
  store i32 2, ptr %3, align 4
  br label %70

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61, %51, %50, %49, %48, %47, %46
  br label %27, !llvm.loop !6

63:                                               ; preds = %27
  %64 = load i32, ptr @nj, align 8
  %65 = icmp ne i32 %64, 6
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, ptr @nj, align 8
  store i32 %67, ptr %3, align 4
  br label %70

68:                                               ; preds = %63
  store i32 0, ptr @nj, align 8
  call void @njConvert()
  %69 = load i32, ptr @nj, align 8
  store i32 %69, ptr %3, align 4
  br label %70

70:                                               ; preds = %68, %66, %60, %40, %25, %11
  %71 = load i32, ptr %3, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njSkip(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  store ptr %6, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %9 = sub nsw i32 %8, %7
  store i32 %9, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %10 = load i32, ptr %2, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 5, ptr @nj, align 8
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeSOF() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  call void @njDecodeLength()
  br label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @nj, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %295

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %12 = icmp slt i32 %11, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  store i32 5, ptr @nj, align 8
  br label %295

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i8, ptr %17, i64 0
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  store i32 2, ptr @nj, align 8
  br label %295

24:                                               ; No predecessors!
  br label %25

25:                                               ; preds = %24, %16
  %26 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = call zeroext i16 @njDecode16(ptr noundef %27)
  %29 = zext i16 %28 to i32
  store i32 %29, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 3
  %32 = call zeroext i16 @njDecode16(ptr noundef %31)
  %33 = zext i16 %32 to i32
  store i32 %33, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %34 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %25
  br label %40

40:                                               ; preds = %39
  store i32 5, ptr @nj, align 8
  br label %295

41:                                               ; No predecessors!
  br label %42

42:                                               ; preds = %41, %36
  %43 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 5
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  call void @njSkip(i32 noundef 6)
  %47 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  switch i32 %47, label %49 [
    i32 1, label %48
    i32 3, label %48
  ]

48:                                               ; preds = %42, %42
  br label %52

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  store i32 2, ptr @nj, align 8
  br label %295

51:                                               ; No predecessors!
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %54 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %55 = mul nsw i32 %54, 3
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  store i32 5, ptr @nj, align 8
  br label %295

59:                                               ; No predecessors!
  br label %60

60:                                               ; preds = %59, %52
  store i32 0, ptr %1, align 4
  store ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), ptr %4, align 8
  br label %61

61:                                               ; preds = %160, %60
  %62 = load i32, ptr %1, align 4
  %63 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %165

65:                                               ; preds = %61
  %66 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %67 = getelementptr inbounds i8, ptr %66, i64 0
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds %struct._nj_cmp, ptr %70, i32 0, i32 0
  store i32 %69, ptr %71, align 8
  %72 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = ashr i32 %75, 4
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct._nj_cmp, ptr %77, i32 0, i32 1
  store i32 %76, ptr %78, align 4
  %79 = icmp ne i32 %76, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  store i32 5, ptr @nj, align 8
  br label %295

82:                                               ; No predecessors!
  br label %83

83:                                               ; preds = %82, %65
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct._nj_cmp, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds %struct._nj_cmp, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  store i32 2, ptr @nj, align 8
  br label %295

95:                                               ; No predecessors!
  br label %96

96:                                               ; preds = %95, %83
  %97 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 15
  %102 = load ptr, ptr %4, align 8
  %103 = getelementptr inbounds %struct._nj_cmp, ptr %102, i32 0, i32 2
  store i32 %101, ptr %103, align 8
  %104 = icmp ne i32 %101, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105
  store i32 5, ptr @nj, align 8
  br label %295

107:                                              ; No predecessors!
  br label %108

108:                                              ; preds = %107, %96
  %109 = load ptr, ptr %4, align 8
  %110 = getelementptr inbounds %struct._nj_cmp, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds %struct._nj_cmp, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %111, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  store i32 2, ptr @nj, align 8
  br label %295

120:                                              ; No predecessors!
  br label %121

121:                                              ; preds = %120, %108
  %122 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %123 = getelementptr inbounds i8, ptr %122, i64 2
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load ptr, ptr %4, align 8
  %127 = getelementptr inbounds %struct._nj_cmp, ptr %126, i32 0, i32 6
  store i32 %125, ptr %127, align 8
  %128 = and i32 %125, 252
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130
  store i32 5, ptr @nj, align 8
  br label %295

132:                                              ; No predecessors!
  br label %133

133:                                              ; preds = %132, %121
  call void @njSkip(i32 noundef 3)
  %134 = load ptr, ptr %4, align 8
  %135 = getelementptr inbounds %struct._nj_cmp, ptr %134, i32 0, i32 6
  %136 = load i32, ptr %135, align 8
  %137 = shl i32 1, %136
  %138 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 12), align 8
  %139 = or i32 %138, %137
  store i32 %139, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 12), align 8
  %140 = load ptr, ptr %4, align 8
  %141 = getelementptr inbounds %struct._nj_cmp, ptr %140, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = load i32, ptr %2, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr inbounds %struct._nj_cmp, ptr %146, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  store i32 %148, ptr %2, align 4
  br label %149

149:                                              ; preds = %145, %133
  %150 = load ptr, ptr %4, align 8
  %151 = getelementptr inbounds %struct._nj_cmp, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = load i32, ptr %3, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load ptr, ptr %4, align 8
  %157 = getelementptr inbounds %struct._nj_cmp, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  store i32 %158, ptr %3, align 4
  br label %159

159:                                              ; preds = %155, %149
  br label %160

160:                                              ; preds = %159
  %161 = load i32, ptr %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %1, align 4
  %163 = load ptr, ptr %4, align 8
  %164 = getelementptr inbounds %struct._nj_cmp, ptr %163, i32 1
  store ptr %164, ptr %4, align 8
  br label %61, !llvm.loop !7

165:                                              ; preds = %61
  %166 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  store ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), ptr %4, align 8
  store i32 1, ptr %3, align 4
  store i32 1, ptr %2, align 4
  %169 = load ptr, ptr %4, align 8
  %170 = getelementptr inbounds %struct._nj_cmp, ptr %169, i32 0, i32 2
  store i32 1, ptr %170, align 8
  %171 = load ptr, ptr %4, align 8
  %172 = getelementptr inbounds %struct._nj_cmp, ptr %171, i32 0, i32 1
  store i32 1, ptr %172, align 4
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i32, ptr %2, align 4
  %175 = shl i32 %174, 3
  store i32 %175, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 8), align 8
  %176 = load i32, ptr %3, align 4
  %177 = shl i32 %176, 3
  store i32 %177, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 9), align 4
  %178 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %179 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 8), align 8
  %180 = add nsw i32 %178, %179
  %181 = sub nsw i32 %180, 1
  %182 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 8), align 8
  %183 = sdiv i32 %181, %182
  store i32 %183, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 6), align 8
  %184 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %185 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 9), align 4
  %186 = add nsw i32 %184, %185
  %187 = sub nsw i32 %186, 1
  %188 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 9), align 4
  %189 = sdiv i32 %187, %188
  store i32 %189, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 7), align 4
  store i32 0, ptr %1, align 4
  store ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), ptr %4, align 8
  br label %190

190:                                              ; preds = %271, %173
  %191 = load i32, ptr %1, align 4
  %192 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %276

194:                                              ; preds = %190
  %195 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %196 = load ptr, ptr %4, align 8
  %197 = getelementptr inbounds %struct._nj_cmp, ptr %196, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = mul nsw i32 %195, %198
  %200 = load i32, ptr %2, align 4
  %201 = add nsw i32 %199, %200
  %202 = sub nsw i32 %201, 1
  %203 = load i32, ptr %2, align 4
  %204 = sdiv i32 %202, %203
  %205 = load ptr, ptr %4, align 8
  %206 = getelementptr inbounds %struct._nj_cmp, ptr %205, i32 0, i32 3
  store i32 %204, ptr %206, align 4
  %207 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %208 = load ptr, ptr %4, align 8
  %209 = getelementptr inbounds %struct._nj_cmp, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = mul nsw i32 %207, %210
  %212 = load i32, ptr %3, align 4
  %213 = add nsw i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = load i32, ptr %3, align 4
  %216 = sdiv i32 %214, %215
  %217 = load ptr, ptr %4, align 8
  %218 = getelementptr inbounds %struct._nj_cmp, ptr %217, i32 0, i32 4
  store i32 %216, ptr %218, align 8
  %219 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 6), align 8
  %220 = load ptr, ptr %4, align 8
  %221 = getelementptr inbounds %struct._nj_cmp, ptr %220, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = mul nsw i32 %219, %222
  %224 = shl i32 %223, 3
  %225 = load ptr, ptr %4, align 8
  %226 = getelementptr inbounds %struct._nj_cmp, ptr %225, i32 0, i32 5
  store i32 %224, ptr %226, align 4
  %227 = load ptr, ptr %4, align 8
  %228 = getelementptr inbounds %struct._nj_cmp, ptr %227, i32 0, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = icmp slt i32 %229, 3
  br i1 %230, label %231, label %237

231:                                              ; preds = %194
  %232 = load ptr, ptr %4, align 8
  %233 = getelementptr inbounds %struct._nj_cmp, ptr %232, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = load i32, ptr %2, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %248, label %237

237:                                              ; preds = %231, %194
  %238 = load ptr, ptr %4, align 8
  %239 = getelementptr inbounds %struct._nj_cmp, ptr %238, i32 0, i32 4
  %240 = load i32, ptr %239, align 8
  %241 = icmp slt i32 %240, 3
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load ptr, ptr %4, align 8
  %244 = getelementptr inbounds %struct._nj_cmp, ptr %243, i32 0, i32 2
  %245 = load i32, ptr %244, align 8
  %246 = load i32, ptr %3, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242, %231
  br label %249

249:                                              ; preds = %248
  store i32 2, ptr @nj, align 8
  br label %295

250:                                              ; No predecessors!
  br label %251

251:                                              ; preds = %250, %242, %237
  %252 = load ptr, ptr %4, align 8
  %253 = getelementptr inbounds %struct._nj_cmp, ptr %252, i32 0, i32 5
  %254 = load i32, ptr %253, align 4
  %255 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 7), align 4
  %256 = mul nsw i32 %254, %255
  %257 = load ptr, ptr %4, align 8
  %258 = getelementptr inbounds %struct._nj_cmp, ptr %257, i32 0, i32 2
  %259 = load i32, ptr %258, align 8
  %260 = mul nsw i32 %256, %259
  %261 = shl i32 %260, 3
  %262 = sext i32 %261 to i64
  %263 = call noalias ptr @malloc(i64 noundef %262) #6
  %264 = load ptr, ptr %4, align 8
  %265 = getelementptr inbounds %struct._nj_cmp, ptr %264, i32 0, i32 10
  store ptr %263, ptr %265, align 8
  %266 = icmp ne ptr %263, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %251
  br label %268

268:                                              ; preds = %267
  store i32 3, ptr @nj, align 8
  br label %295

269:                                              ; No predecessors!
  br label %270

270:                                              ; preds = %269, %251
  br label %271

271:                                              ; preds = %270
  %272 = load i32, ptr %1, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %1, align 4
  %274 = load ptr, ptr %4, align 8
  %275 = getelementptr inbounds %struct._nj_cmp, ptr %274, i32 1
  store ptr %275, ptr %4, align 8
  br label %190, !llvm.loop !8

276:                                              ; preds = %190
  %277 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %278 = icmp eq i32 %277, 3
  br i1 %278, label %279, label %293

279:                                              ; preds = %276
  %280 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %281 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %282 = mul nsw i32 %280, %281
  %283 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %284 = mul nsw i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = call noalias ptr @malloc(i64 noundef %285) #6
  store ptr %286, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 20), align 8
  %287 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 20), align 8
  %288 = icmp ne ptr %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %279
  br label %290

290:                                              ; preds = %289
  store i32 3, ptr @nj, align 8
  br label %295

291:                                              ; No predecessors!
  br label %292

292:                                              ; preds = %291, %279
  br label %293

293:                                              ; preds = %292, %276
  %294 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  call void @njSkip(i32 noundef %294)
  br label %295

295:                                              ; preds = %293, %290, %268, %249, %131, %119, %106, %94, %81, %58, %50, %40, %23, %14, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeDHT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  call void @njDecodeLength()
  br label %9

9:                                                ; preds = %0
  %10 = load i32, ptr @nj, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %151

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %144, %14
  %16 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %17 = icmp sge i32 %16, 17
  br i1 %17, label %18, label %145

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 0
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, 236
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  store i32 5, ptr @nj, align 8
  br label %151

28:                                               ; No predecessors!
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, ptr %5, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  store i32 2, ptr @nj, align 8
  br label %151

35:                                               ; No predecessors!
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, ptr %5, align 4
  %38 = load i32, ptr %5, align 4
  %39 = ashr i32 %38, 3
  %40 = or i32 %37, %39
  %41 = and i32 %40, 3
  store i32 %41, ptr %5, align 4
  store i32 1, ptr %1, align 4
  br label %42

42:                                               ; preds = %55, %36
  %43 = load i32, ptr %1, align 4
  %44 = icmp sle i32 %43, 16
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %47 = load i32, ptr %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = load i32, ptr %1, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i8], ptr @njDecodeDHT.counts, i64 0, i64 %53
  store i8 %50, ptr %54, align 1
  br label %55

55:                                               ; preds = %45
  %56 = load i32, ptr %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %1, align 4
  br label %42, !llvm.loop !9

58:                                               ; preds = %42
  call void @njSkip(i32 noundef 17)
  %59 = load i32, ptr %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x [65536 x %struct._nj_code]], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 15), i64 0, i64 %60
  %62 = getelementptr inbounds [65536 x %struct._nj_code], ptr %61, i64 0, i64 0
  store ptr %62, ptr %7, align 8
  store i32 65536, ptr %4, align 4
  store i32 65536, ptr %3, align 4
  store i32 1, ptr %1, align 4
  br label %63

63:                                               ; preds = %131, %58
  %64 = load i32, ptr %1, align 4
  %65 = icmp sle i32 %64, 16
  br i1 %65, label %66, label %134

66:                                               ; preds = %63
  %67 = load i32, ptr %4, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, ptr %4, align 4
  %69 = load i32, ptr %1, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i8], ptr @njDecodeDHT.counts, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, ptr %2, align 4
  %75 = load i32, ptr %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %131

78:                                               ; preds = %66
  %79 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %80 = load i32, ptr %2, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82
  store i32 5, ptr @nj, align 8
  br label %151

84:                                               ; No predecessors!
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, ptr %2, align 4
  %87 = load i32, ptr %1, align 4
  %88 = sub nsw i32 16, %87
  %89 = shl i32 %86, %88
  %90 = load i32, ptr %3, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, ptr %3, align 4
  %92 = load i32, ptr %3, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94
  store i32 5, ptr @nj, align 8
  br label %151

96:                                               ; No predecessors!
  br label %97

97:                                               ; preds = %96, %85
  store i32 0, ptr %5, align 4
  br label %98

98:                                               ; preds = %126, %97
  %99 = load i32, ptr %5, align 4
  %100 = load i32, ptr %2, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %98
  %103 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %104 = load i32, ptr %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %103, i64 %105
  %107 = load i8, ptr %106, align 1
  store i8 %107, ptr %8, align 1
  %108 = load i32, ptr %4, align 4
  store i32 %108, ptr %6, align 4
  br label %109

109:                                              ; preds = %122, %102
  %110 = load i32, ptr %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load i32, ptr %1, align 4
  %114 = trunc i32 %113 to i8
  %115 = load ptr, ptr %7, align 8
  %116 = getelementptr inbounds %struct._nj_code, ptr %115, i32 0, i32 0
  store i8 %114, ptr %116, align 1
  %117 = load i8, ptr %8, align 1
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds %struct._nj_code, ptr %118, i32 0, i32 1
  store i8 %117, ptr %119, align 1
  %120 = load ptr, ptr %7, align 8
  %121 = getelementptr inbounds %struct._nj_code, ptr %120, i32 1
  store ptr %121, ptr %7, align 8
  br label %122

122:                                              ; preds = %112
  %123 = load i32, ptr %6, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, ptr %6, align 4
  br label %109, !llvm.loop !10

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %5, align 4
  br label %98, !llvm.loop !11

129:                                              ; preds = %98
  %130 = load i32, ptr %2, align 4
  call void @njSkip(i32 noundef %130)
  br label %131

131:                                              ; preds = %129, %77
  %132 = load i32, ptr %1, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %1, align 4
  br label %63, !llvm.loop !12

134:                                              ; preds = %63
  br label %135

135:                                              ; preds = %139, %134
  %136 = load i32, ptr %3, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, ptr %3, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load ptr, ptr %7, align 8
  %141 = getelementptr inbounds %struct._nj_code, ptr %140, i32 0, i32 0
  store i8 0, ptr %141, align 1
  %142 = load ptr, ptr %7, align 8
  %143 = getelementptr inbounds %struct._nj_code, ptr %142, i32 1
  store ptr %143, ptr %7, align 8
  br label %135, !llvm.loop !13

144:                                              ; preds = %135
  br label %15, !llvm.loop !14

145:                                              ; preds = %15
  %146 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %148
  store i32 5, ptr @nj, align 8
  br label %151

150:                                              ; No predecessors!
  br label %151

151:                                              ; preds = %12, %27, %34, %83, %95, %149, %150, %145
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeDQT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  call void @njDecodeLength()
  br label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @nj, align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %56

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %49, %8
  %10 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %11 = icmp sge i32 %10, 65
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 0
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %1, align 4
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 252
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  store i32 5, ptr @nj, align 8
  br label %56

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, ptr %1, align 4
  %25 = shl i32 1, %24
  %26 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 13), align 4
  %27 = or i32 %26, %25
  store i32 %27, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 13), align 4
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x [64 x i8]], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 14), i64 0, i64 %29
  %31 = getelementptr inbounds [64 x i8], ptr %30, i64 0, i64 0
  store ptr %31, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %32

32:                                               ; preds = %46, %23
  %33 = load i32, ptr %1, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %37 = load i32, ptr %1, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = load ptr, ptr %2, align 8
  %43 = load i32, ptr %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  store i8 %41, ptr %45, align 1
  br label %46

46:                                               ; preds = %35
  %47 = load i32, ptr %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 4
  br label %32, !llvm.loop !15

49:                                               ; preds = %32
  call void @njSkip(i32 noundef 65)
  br label %9, !llvm.loop !16

50:                                               ; preds = %9
  %51 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  store i32 5, ptr @nj, align 8
  br label %56

55:                                               ; No predecessors!
  br label %56

56:                                               ; preds = %6, %21, %54, %55, %50
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeDRI() #0 {
  call void @njDecodeLength()
  br label %1

1:                                                ; preds = %0
  %2 = load i32, ptr @nj, align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %17

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5
  %7 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  store i32 5, ptr @nj, align 8
  br label %17

11:                                               ; No predecessors!
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %14 = call zeroext i16 @njDecode16(ptr noundef %13)
  %15 = zext i16 %14 to i32
  store i32 %15, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 19), align 8
  %16 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  call void @njSkip(i32 noundef %16)
  br label %17

17:                                               ; preds = %12, %10, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeScan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 19), align 8
  store i32 %9, ptr %6, align 4
  store i32 0, ptr %7, align 4
  call void @njDecodeLength()
  br label %10

10:                                               ; preds = %0
  %11 = load i32, ptr @nj, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %221

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  %16 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %18 = mul nsw i32 2, %17
  %19 = add nsw i32 4, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  store i32 5, ptr @nj, align 8
  br label %221

23:                                               ; No predecessors!
  br label %24

24:                                               ; preds = %23, %15
  %25 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 0
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  store i32 2, ptr @nj, align 8
  br label %221

33:                                               ; No predecessors!
  br label %34

34:                                               ; preds = %33, %24
  call void @njSkip(i32 noundef 1)
  store i32 0, ptr %1, align 4
  store ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), ptr %8, align 8
  br label %35

35:                                               ; preds = %77, %34
  %36 = load i32, ptr %1, align 4
  %37 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 0
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load ptr, ptr %8, align 8
  %45 = getelementptr inbounds %struct._nj_cmp, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  store i32 5, ptr @nj, align 8
  br label %221

50:                                               ; No predecessors!
  br label %51

51:                                               ; preds = %50, %39
  %52 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 238
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  store i32 5, ptr @nj, align 8
  br label %221

60:                                               ; No predecessors!
  br label %61

61:                                               ; preds = %60, %51
  %62 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 4
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds %struct._nj_cmp, ptr %67, i32 0, i32 8
  store i32 %66, ptr %68, align 8
  %69 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 1
  %74 = or i32 %73, 2
  %75 = load ptr, ptr %8, align 8
  %76 = getelementptr inbounds %struct._nj_cmp, ptr %75, i32 0, i32 7
  store i32 %74, ptr %76, align 4
  call void @njSkip(i32 noundef 2)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, ptr %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %1, align 4
  %80 = load ptr, ptr %8, align 8
  %81 = getelementptr inbounds %struct._nj_cmp, ptr %80, i32 1
  store ptr %81, ptr %8, align 8
  br label %35, !llvm.loop !17

82:                                               ; preds = %35
  %83 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %84 = getelementptr inbounds i8, ptr %83, i64 0
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %92, 63
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %96 = getelementptr inbounds i8, ptr %95, i64 2
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94, %88, %82
  br label %101

101:                                              ; preds = %100
  store i32 2, ptr @nj, align 8
  br label %221

102:                                              ; No predecessors!
  br label %103

103:                                              ; preds = %102, %94
  %104 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  call void @njSkip(i32 noundef %104)
  store i32 0, ptr %3, align 4
  store i32 0, ptr %2, align 4
  br label %105

105:                                              ; preds = %219, %103
  store i32 0, ptr %1, align 4
  store ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), ptr %8, align 8
  br label %106

106:                                              ; preds = %165, %105
  %107 = load i32, ptr %1, align 4
  %108 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %170

110:                                              ; preds = %106
  store i32 0, ptr %5, align 4
  br label %111

111:                                              ; preds = %161, %110
  %112 = load i32, ptr %5, align 4
  %113 = load ptr, ptr %8, align 8
  %114 = getelementptr inbounds %struct._nj_cmp, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %164

117:                                              ; preds = %111
  store i32 0, ptr %4, align 4
  br label %118

118:                                              ; preds = %157, %117
  %119 = load i32, ptr %4, align 4
  %120 = load ptr, ptr %8, align 8
  %121 = getelementptr inbounds %struct._nj_cmp, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %160

124:                                              ; preds = %118
  %125 = load ptr, ptr %8, align 8
  %126 = load ptr, ptr %8, align 8
  %127 = getelementptr inbounds %struct._nj_cmp, ptr %126, i32 0, i32 10
  %128 = load ptr, ptr %127, align 8
  %129 = load i32, ptr %3, align 4
  %130 = load ptr, ptr %8, align 8
  %131 = getelementptr inbounds %struct._nj_cmp, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = mul nsw i32 %129, %132
  %134 = load i32, ptr %5, align 4
  %135 = add nsw i32 %133, %134
  %136 = load ptr, ptr %8, align 8
  %137 = getelementptr inbounds %struct._nj_cmp, ptr %136, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = mul nsw i32 %135, %138
  %140 = load i32, ptr %2, align 4
  %141 = load ptr, ptr %8, align 8
  %142 = getelementptr inbounds %struct._nj_cmp, ptr %141, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = mul nsw i32 %140, %143
  %145 = add nsw i32 %139, %144
  %146 = load i32, ptr %4, align 4
  %147 = add nsw i32 %145, %146
  %148 = shl i32 %147, 3
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %128, i64 %149
  call void @njDecodeBlock(ptr noundef %125, ptr noundef %150)
  br label %151

151:                                              ; preds = %124
  %152 = load i32, ptr @nj, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %221

155:                                              ; preds = %151
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %4, align 4
  br label %118, !llvm.loop !18

160:                                              ; preds = %118
  br label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %5, align 4
  br label %111, !llvm.loop !19

164:                                              ; preds = %111
  br label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %1, align 4
  %168 = load ptr, ptr %8, align 8
  %169 = getelementptr inbounds %struct._nj_cmp, ptr %168, i32 1
  store ptr %169, ptr %8, align 8
  br label %106, !llvm.loop !20

170:                                              ; preds = %106
  %171 = load i32, ptr %2, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %2, align 4
  %173 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 6), align 8
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %170
  store i32 0, ptr %2, align 4
  %176 = load i32, ptr %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %3, align 4
  %178 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 7), align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %220

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %170
  %183 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 19), align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %219

185:                                              ; preds = %182
  %186 = load i32, ptr %6, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, ptr %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %219, label %189

189:                                              ; preds = %185
  call void @njByteAlign()
  %190 = call i32 @njGetBits(i32 noundef 16)
  store i32 %190, ptr %1, align 4
  %191 = load i32, ptr %1, align 4
  %192 = and i32 %191, 65528
  %193 = icmp ne i32 %192, 65488
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %1, align 4
  %196 = and i32 %195, 7
  %197 = load i32, ptr %7, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194, %189
  br label %200

200:                                              ; preds = %199
  store i32 5, ptr @nj, align 8
  br label %221

201:                                              ; No predecessors!
  br label %202

202:                                              ; preds = %201, %194
  %203 = load i32, ptr %7, align 4
  %204 = add nsw i32 %203, 1
  %205 = and i32 %204, 7
  store i32 %205, ptr %7, align 4
  %206 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 19), align 8
  store i32 %206, ptr %6, align 4
  store i32 0, ptr %1, align 4
  br label %207

207:                                              ; preds = %215, %202
  %208 = load i32, ptr %1, align 4
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load i32, ptr %1, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x %struct._nj_cmp], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i64 0, i64 %212
  %214 = getelementptr inbounds %struct._nj_cmp, ptr %213, i32 0, i32 9
  store i32 0, ptr %214, align 4
  br label %215

215:                                              ; preds = %210
  %216 = load i32, ptr %1, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %1, align 4
  br label %207, !llvm.loop !21

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %218, %185, %182
  br label %105

220:                                              ; preds = %180
  store i32 6, ptr @nj, align 8
  br label %221

221:                                              ; preds = %220, %200, %154, %101, %59, %49, %32, %22, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njSkipMarker() #0 {
  call void @njDecodeLength()
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  call void @njSkip(i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njConvert() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), ptr %2, align 8
  br label %15

15:                                               ; preds = %79, %0
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %62, %19
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._nj_cmp, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct._nj_cmp, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ true, %20 ], [ %31, %26 ]
  br i1 %33, label %34, label %63

34:                                               ; preds = %32
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._nj_cmp, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load ptr, ptr %2, align 8
  call void @njUpsampleH(ptr noundef %41)
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr @nj, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %210

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct._nj_cmp, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 8
  %52 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load ptr, ptr %2, align 8
  call void @njUpsampleV(ptr noundef %55)
  br label %56

56:                                               ; preds = %54, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr @nj, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %210

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  br label %20, !llvm.loop !22

63:                                               ; preds = %32
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct._nj_cmp, ptr %64, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct._nj_cmp, ptr %70, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75
  store i32 4, ptr @nj, align 8
  br label %210

77:                                               ; No predecessors!
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %1, align 4
  %82 = load ptr, ptr %2, align 8
  %83 = getelementptr inbounds %struct._nj_cmp, ptr %82, i32 1
  store ptr %83, ptr %2, align 8
  br label %15, !llvm.loop !23

84:                                               ; preds = %15
  %85 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %173

87:                                               ; preds = %84
  %88 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 20), align 8
  store ptr %88, ptr %5, align 8
  %89 = load ptr, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 10), align 8
  store ptr %89, ptr %6, align 8
  %90 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11, i64 1, i32 10), align 8
  store ptr %90, ptr %7, align 8
  %91 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11, i64 2, i32 10), align 8
  store ptr %91, ptr %8, align 8
  %92 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  store i32 %92, ptr %4, align 4
  br label %93

93:                                               ; preds = %169, %87
  %94 = load i32, ptr %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %172

96:                                               ; preds = %93
  store i32 0, ptr %3, align 4
  br label %97

97:                                               ; preds = %153, %96
  %98 = load i32, ptr %3, align 4
  %99 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load ptr, ptr %6, align 8
  %103 = load i32, ptr %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %102, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, 8
  store i32 %108, ptr %9, align 4
  %109 = load ptr, ptr %7, align 8
  %110 = load i32, ptr %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %109, i64 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %114, 128
  store i32 %115, ptr %10, align 4
  %116 = load ptr, ptr %8, align 8
  %117 = load i32, ptr %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, 128
  store i32 %122, ptr %11, align 4
  %123 = load i32, ptr %9, align 4
  %124 = load i32, ptr %11, align 4
  %125 = mul nsw i32 359, %124
  %126 = add nsw i32 %123, %125
  %127 = add nsw i32 %126, 128
  %128 = ashr i32 %127, 8
  %129 = call zeroext i8 @njClip(i32 noundef %128)
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %131, ptr %5, align 8
  store i8 %129, ptr %130, align 1
  %132 = load i32, ptr %9, align 4
  %133 = load i32, ptr %10, align 4
  %134 = mul nsw i32 88, %133
  %135 = sub nsw i32 %132, %134
  %136 = load i32, ptr %11, align 4
  %137 = mul nsw i32 183, %136
  %138 = sub nsw i32 %135, %137
  %139 = add nsw i32 %138, 128
  %140 = ashr i32 %139, 8
  %141 = call zeroext i8 @njClip(i32 noundef %140)
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %143, ptr %5, align 8
  store i8 %141, ptr %142, align 1
  %144 = load i32, ptr %9, align 4
  %145 = load i32, ptr %10, align 4
  %146 = mul nsw i32 454, %145
  %147 = add nsw i32 %144, %146
  %148 = add nsw i32 %147, 128
  %149 = ashr i32 %148, 8
  %150 = call zeroext i8 @njClip(i32 noundef %149)
  %151 = load ptr, ptr %5, align 8
  %152 = getelementptr inbounds i8, ptr %151, i32 1
  store ptr %152, ptr %5, align 8
  store i8 %150, ptr %151, align 1
  br label %153

153:                                              ; preds = %101
  %154 = load i32, ptr %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %3, align 4
  br label %97, !llvm.loop !24

156:                                              ; preds = %97
  %157 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 5), align 4
  %158 = load ptr, ptr %6, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, ptr %158, i64 %159
  store ptr %160, ptr %6, align 8
  %161 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11, i64 1, i32 5), align 4
  %162 = load ptr, ptr %7, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  store ptr %164, ptr %7, align 8
  %165 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11, i64 2, i32 5), align 4
  %166 = load ptr, ptr %8, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, ptr %166, i64 %167
  store ptr %168, ptr %8, align 8
  br label %169

169:                                              ; preds = %156
  %170 = load i32, ptr %4, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, ptr %4, align 4
  br label %93, !llvm.loop !25

172:                                              ; preds = %93
  br label %210

173:                                              ; preds = %84
  %174 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 3), align 4
  %175 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 5), align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %209

177:                                              ; preds = %173
  %178 = load ptr, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 10), align 8
  %179 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 5), align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %178, i64 %180
  store ptr %181, ptr %12, align 8
  %182 = load ptr, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 10), align 8
  %183 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 3), align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %182, i64 %184
  store ptr %185, ptr %13, align 8
  %186 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 4), align 8
  %187 = sub nsw i32 %186, 1
  store i32 %187, ptr %14, align 4
  br label %188

188:                                              ; preds = %204, %177
  %189 = load i32, ptr %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %188
  %192 = load ptr, ptr %13, align 8
  %193 = load ptr, ptr %12, align 8
  %194 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 3), align 4
  %195 = sext i32 %194 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %192, ptr align 1 %193, i64 %195, i1 false)
  %196 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 5), align 4
  %197 = load ptr, ptr %12, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, ptr %197, i64 %198
  store ptr %199, ptr %12, align 8
  %200 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 3), align 4
  %201 = load ptr, ptr %13, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, ptr %201, i64 %202
  store ptr %203, ptr %13, align 8
  br label %204

204:                                              ; preds = %191
  %205 = load i32, ptr %14, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, ptr %14, align 4
  br label %188, !llvm.loop !26

207:                                              ; preds = %188
  %208 = load i32, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 3), align 4
  store i32 %208, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 5), align 4
  br label %209

209:                                              ; preds = %207, %173
  br label %210

210:                                              ; preds = %46, %60, %76, %209, %172
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @njGetWidth() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @njGetHeight() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @njIsColor() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %2 = icmp ne i32 %1, 1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @njGetImage() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct._nj_cmp, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 11), i32 0, i32 10), align 8
  br label %7

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 20), align 8
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %4, %3 ], [ %6, %5 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @njGetImageSize() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 4), align 8
  %2 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 5), align 4
  %3 = mul nsw i32 %1, %2
  %4 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 10), align 8
  %5 = mul nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeLength() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %2 = icmp slt i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3
  store i32 5, ptr @nj, align 8
  br label %17

5:                                                ; No predecessors!
  br label %6

6:                                                ; preds = %5, %0
  %7 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %8 = call zeroext i16 @njDecode16(ptr noundef %7)
  %9 = zext i16 %8 to i32
  store i32 %9, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %10 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 3), align 4
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13
  store i32 5, ptr @nj, align 8
  br label %17

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %6
  call void @njSkip(i32 noundef 2)
  br label %17

17:                                               ; preds = %16, %14, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @njDecode16(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 0
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %7, %11
  %13 = trunc i32 %12 to i16
  ret i16 %13
}

; Function Attrs: nounwind allocsize(0)
declare dso_local noalias ptr @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njDecodeBlock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %5, align 1
  store i32 0, ptr %7, align 4
  call void @llvm.memset.p0.i64(ptr align 8 getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 18), i8 0, i64 256, i1 false)
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct._nj_cmp, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x [65536 x %struct._nj_code]], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 15), i64 0, i64 %11
  %13 = getelementptr inbounds [65536 x %struct._nj_code], ptr %12, i64 0, i64 0
  %14 = call i32 @njGetVLC(ptr noundef %13, ptr noundef null)
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct._nj_cmp, ptr %15, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %17, %14
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct._nj_cmp, ptr %19, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct._nj_cmp, ptr %22, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x [64 x i8]], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 14), i64 0, i64 %25
  %27 = getelementptr inbounds [64 x i8], ptr %26, i64 0, i64 0
  %28 = load i8, ptr %27, align 8
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %21, %29
  store i32 %30, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 18), align 8
  br label %31

31:                                               ; preds = %86, %2
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct._nj_cmp, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x [65536 x %struct._nj_code]], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 15), i64 0, i64 %35
  %37 = getelementptr inbounds [65536 x %struct._nj_code], ptr %36, i64 0, i64 0
  %38 = call i32 @njGetVLC(ptr noundef %37, ptr noundef %5)
  store i32 %38, ptr %6, align 4
  %39 = load i8, ptr %5, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %89

42:                                               ; preds = %31
  %43 = load i8, ptr %5, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load i8, ptr %5, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 240
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  store i32 5, ptr @nj, align 8
  br label %118

53:                                               ; No predecessors!
  br label %54

54:                                               ; preds = %53, %47, %42
  %55 = load i8, ptr %5, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, ptr %7, align 4
  %61 = load i32, ptr %7, align 4
  %62 = icmp sgt i32 %61, 63
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  store i32 5, ptr @nj, align 8
  br label %118

65:                                               ; No predecessors!
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, ptr %6, align 4
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct._nj_cmp, ptr %68, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x [64 x i8]], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 14), i64 0, i64 %71
  %73 = load i32, ptr %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [64 x i8], ptr %72, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = mul nsw i32 %67, %77
  %79 = load i32, ptr %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i8], ptr @njZZ, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [64 x i32], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 18), i64 0, i64 %84
  store i32 %78, ptr %85, align 4
  br label %86

86:                                               ; preds = %66
  %87 = load i32, ptr %7, align 4
  %88 = icmp slt i32 %87, 63
  br i1 %88, label %31, label %89, !llvm.loop !27

89:                                               ; preds = %86, %41
  store i32 0, ptr %7, align 4
  br label %90

90:                                               ; preds = %97, %89
  %91 = load i32, ptr %7, align 4
  %92 = icmp slt i32 %91, 64
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, ptr %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [64 x i32], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 18), i64 0, i64 %95
  call void @njRowIDCT(ptr noundef %96)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %7, align 4
  %99 = add nsw i32 %98, 8
  store i32 %99, ptr %7, align 4
  br label %90, !llvm.loop !28

100:                                              ; preds = %90
  store i32 0, ptr %7, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, ptr %7, align 4
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32, ptr %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [64 x i32], ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 18), i64 0, i64 %106
  %108 = load ptr, ptr %4, align 8
  %109 = load i32, ptr %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %108, i64 %110
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct._nj_cmp, ptr %112, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  call void @njColIDCT(ptr noundef %107, ptr noundef %111, i32 noundef %114)
  br label %115

115:                                              ; preds = %104
  %116 = load i32, ptr %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %7, align 4
  br label %101, !llvm.loop !29

118:                                              ; preds = %52, %64, %101
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njByteAlign() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %2 = and i32 %1, 248
  store i32 %2, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @njGetBits(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call i32 @njShowBits(i32 noundef %4)
  store i32 %5, ptr %3, align 4
  %6 = load i32, ptr %2, align 4
  call void @njSkipBits(i32 noundef %6)
  %7 = load i32, ptr %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @njGetVLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = call i32 @njShowBits(i32 noundef 16)
  store i32 %8, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct._nj_code, ptr %9, i64 %11
  %13 = getelementptr inbounds %struct._nj_code, ptr %12, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 5, ptr @nj, align 8
  store i32 0, ptr %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, ptr %7, align 4
  call void @njSkipBits(i32 noundef %20)
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct._nj_code, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct._nj_code, ptr %24, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, ptr %6, align 4
  %28 = load ptr, ptr %5, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, ptr %6, align 4
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr %5, align 8
  store i8 %32, ptr %33, align 1
  br label %34

34:                                               ; preds = %30, %19
  %35 = load i32, ptr %6, align 4
  %36 = and i32 %35, 15
  store i32 %36, ptr %7, align 4
  %37 = load i32, ptr %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, ptr %3, align 4
  br label %56

40:                                               ; preds = %34
  %41 = load i32, ptr %7, align 4
  %42 = call i32 @njGetBits(i32 noundef %41)
  store i32 %42, ptr %6, align 4
  %43 = load i32, ptr %6, align 4
  %44 = load i32, ptr %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = shl i32 1, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, ptr %7, align 4
  %50 = shl i32 -1, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32, ptr %6, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, ptr %6, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, ptr %6, align 4
  store i32 %55, ptr %3, align 4
  br label %56

56:                                               ; preds = %54, %39, %18
  %57 = load i32, ptr %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njRowIDCT(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds i32, ptr %12, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 11
  store i32 %15, ptr %4, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 6
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %5, align 4
  %19 = or i32 %15, %18
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 2
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %6, align 4
  %23 = or i32 %19, %22
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 1
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %7, align 4
  %27 = or i32 %23, %26
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 7
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %8, align 4
  %31 = or i32 %27, %30
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 5
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %9, align 4
  %35 = or i32 %31, %34
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 3
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %10, align 4
  %39 = or i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %1
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds i32, ptr %42, i64 0
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 3
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds i32, ptr %46, i64 7
  store i32 %45, ptr %47, align 4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 6
  store i32 %45, ptr %49, align 4
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds i32, ptr %50, i64 5
  store i32 %45, ptr %51, align 4
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds i32, ptr %52, i64 4
  store i32 %45, ptr %53, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds i32, ptr %54, i64 3
  store i32 %45, ptr %55, align 4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds i32, ptr %56, i64 2
  store i32 %45, ptr %57, align 4
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds i32, ptr %58, i64 1
  store i32 %45, ptr %59, align 4
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds i32, ptr %60, i64 0
  store i32 %45, ptr %61, align 4
  br label %194

62:                                               ; preds = %1
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 0
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 11
  %67 = add nsw i32 %66, 128
  store i32 %67, ptr %3, align 4
  %68 = load i32, ptr %7, align 4
  %69 = load i32, ptr %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = mul nsw i32 565, %70
  store i32 %71, ptr %11, align 4
  %72 = load i32, ptr %11, align 4
  %73 = load i32, ptr %7, align 4
  %74 = mul nsw i32 2276, %73
  %75 = add nsw i32 %72, %74
  store i32 %75, ptr %7, align 4
  %76 = load i32, ptr %11, align 4
  %77 = load i32, ptr %8, align 4
  %78 = mul nsw i32 3406, %77
  %79 = sub nsw i32 %76, %78
  store i32 %79, ptr %8, align 4
  %80 = load i32, ptr %9, align 4
  %81 = load i32, ptr %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = mul nsw i32 2408, %82
  store i32 %83, ptr %11, align 4
  %84 = load i32, ptr %11, align 4
  %85 = load i32, ptr %9, align 4
  %86 = mul nsw i32 799, %85
  %87 = sub nsw i32 %84, %86
  store i32 %87, ptr %9, align 4
  %88 = load i32, ptr %11, align 4
  %89 = load i32, ptr %10, align 4
  %90 = mul nsw i32 4017, %89
  %91 = sub nsw i32 %88, %90
  store i32 %91, ptr %10, align 4
  %92 = load i32, ptr %3, align 4
  %93 = load i32, ptr %4, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, ptr %11, align 4
  %95 = load i32, ptr %4, align 4
  %96 = load i32, ptr %3, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, ptr %3, align 4
  %98 = load i32, ptr %6, align 4
  %99 = load i32, ptr %5, align 4
  %100 = add nsw i32 %98, %99
  %101 = mul nsw i32 1108, %100
  store i32 %101, ptr %4, align 4
  %102 = load i32, ptr %4, align 4
  %103 = load i32, ptr %5, align 4
  %104 = mul nsw i32 3784, %103
  %105 = sub nsw i32 %102, %104
  store i32 %105, ptr %5, align 4
  %106 = load i32, ptr %4, align 4
  %107 = load i32, ptr %6, align 4
  %108 = mul nsw i32 1568, %107
  %109 = add nsw i32 %106, %108
  store i32 %109, ptr %6, align 4
  %110 = load i32, ptr %7, align 4
  %111 = load i32, ptr %9, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, ptr %4, align 4
  %113 = load i32, ptr %9, align 4
  %114 = load i32, ptr %7, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, ptr %7, align 4
  %116 = load i32, ptr %8, align 4
  %117 = load i32, ptr %10, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, ptr %9, align 4
  %119 = load i32, ptr %10, align 4
  %120 = load i32, ptr %8, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, ptr %8, align 4
  %122 = load i32, ptr %11, align 4
  %123 = load i32, ptr %6, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, ptr %10, align 4
  %125 = load i32, ptr %6, align 4
  %126 = load i32, ptr %11, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, ptr %11, align 4
  %128 = load i32, ptr %3, align 4
  %129 = load i32, ptr %5, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, ptr %6, align 4
  %131 = load i32, ptr %5, align 4
  %132 = load i32, ptr %3, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, ptr %3, align 4
  %134 = load i32, ptr %7, align 4
  %135 = load i32, ptr %8, align 4
  %136 = add nsw i32 %134, %135
  %137 = mul nsw i32 181, %136
  %138 = add nsw i32 %137, 128
  %139 = ashr i32 %138, 8
  store i32 %139, ptr %5, align 4
  %140 = load i32, ptr %7, align 4
  %141 = load i32, ptr %8, align 4
  %142 = sub nsw i32 %140, %141
  %143 = mul nsw i32 181, %142
  %144 = add nsw i32 %143, 128
  %145 = ashr i32 %144, 8
  store i32 %145, ptr %7, align 4
  %146 = load i32, ptr %10, align 4
  %147 = load i32, ptr %4, align 4
  %148 = add nsw i32 %146, %147
  %149 = ashr i32 %148, 8
  %150 = load ptr, ptr %2, align 8
  %151 = getelementptr inbounds i32, ptr %150, i64 0
  store i32 %149, ptr %151, align 4
  %152 = load i32, ptr %6, align 4
  %153 = load i32, ptr %5, align 4
  %154 = add nsw i32 %152, %153
  %155 = ashr i32 %154, 8
  %156 = load ptr, ptr %2, align 8
  %157 = getelementptr inbounds i32, ptr %156, i64 1
  store i32 %155, ptr %157, align 4
  %158 = load i32, ptr %3, align 4
  %159 = load i32, ptr %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = ashr i32 %160, 8
  %162 = load ptr, ptr %2, align 8
  %163 = getelementptr inbounds i32, ptr %162, i64 2
  store i32 %161, ptr %163, align 4
  %164 = load i32, ptr %11, align 4
  %165 = load i32, ptr %9, align 4
  %166 = add nsw i32 %164, %165
  %167 = ashr i32 %166, 8
  %168 = load ptr, ptr %2, align 8
  %169 = getelementptr inbounds i32, ptr %168, i64 3
  store i32 %167, ptr %169, align 4
  %170 = load i32, ptr %11, align 4
  %171 = load i32, ptr %9, align 4
  %172 = sub nsw i32 %170, %171
  %173 = ashr i32 %172, 8
  %174 = load ptr, ptr %2, align 8
  %175 = getelementptr inbounds i32, ptr %174, i64 4
  store i32 %173, ptr %175, align 4
  %176 = load i32, ptr %3, align 4
  %177 = load i32, ptr %7, align 4
  %178 = sub nsw i32 %176, %177
  %179 = ashr i32 %178, 8
  %180 = load ptr, ptr %2, align 8
  %181 = getelementptr inbounds i32, ptr %180, i64 5
  store i32 %179, ptr %181, align 4
  %182 = load i32, ptr %6, align 4
  %183 = load i32, ptr %5, align 4
  %184 = sub nsw i32 %182, %183
  %185 = ashr i32 %184, 8
  %186 = load ptr, ptr %2, align 8
  %187 = getelementptr inbounds i32, ptr %186, i64 6
  store i32 %185, ptr %187, align 4
  %188 = load i32, ptr %10, align 4
  %189 = load i32, ptr %4, align 4
  %190 = sub nsw i32 %188, %189
  %191 = ashr i32 %190, 8
  %192 = load ptr, ptr %2, align 8
  %193 = getelementptr inbounds i32, ptr %192, i64 7
  store i32 %191, ptr %193, align 4
  br label %194

194:                                              ; preds = %62, %41
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njColIDCT(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 32
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 8
  store i32 %19, ptr %8, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 48
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %9, align 4
  %23 = or i32 %19, %22
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 16
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %10, align 4
  %27 = or i32 %23, %26
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 8
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %11, align 4
  %31 = or i32 %27, %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 56
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %12, align 4
  %35 = or i32 %31, %34
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 40
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %13, align 4
  %39 = or i32 %35, %38
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds i32, ptr %40, i64 24
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %14, align 4
  %43 = or i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %3
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds i32, ptr %46, i64 0
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %48, 32
  %50 = ashr i32 %49, 6
  %51 = add nsw i32 %50, 128
  %52 = call zeroext i8 @njClip(i32 noundef %51)
  %53 = zext i8 %52 to i32
  store i32 %53, ptr %8, align 4
  store i32 8, ptr %7, align 4
  br label %54

54:                                               ; preds = %65, %45
  %55 = load i32, ptr %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, ptr %8, align 4
  %59 = trunc i32 %58 to i8
  %60 = load ptr, ptr %5, align 8
  store i8 %59, ptr %60, align 1
  %61 = load i32, ptr %6, align 4
  %62 = load ptr, ptr %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr %5, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i32, ptr %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, ptr %7, align 4
  br label %54, !llvm.loop !30

68:                                               ; preds = %54
  br label %246

69:                                               ; preds = %3
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds i32, ptr %70, i64 0
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %72, 8
  %74 = add nsw i32 %73, 8192
  store i32 %74, ptr %7, align 4
  %75 = load i32, ptr %11, align 4
  %76 = load i32, ptr %12, align 4
  %77 = add nsw i32 %75, %76
  %78 = mul nsw i32 565, %77
  %79 = add nsw i32 %78, 4
  store i32 %79, ptr %15, align 4
  %80 = load i32, ptr %15, align 4
  %81 = load i32, ptr %11, align 4
  %82 = mul nsw i32 2276, %81
  %83 = add nsw i32 %80, %82
  %84 = ashr i32 %83, 3
  store i32 %84, ptr %11, align 4
  %85 = load i32, ptr %15, align 4
  %86 = load i32, ptr %12, align 4
  %87 = mul nsw i32 3406, %86
  %88 = sub nsw i32 %85, %87
  %89 = ashr i32 %88, 3
  store i32 %89, ptr %12, align 4
  %90 = load i32, ptr %13, align 4
  %91 = load i32, ptr %14, align 4
  %92 = add nsw i32 %90, %91
  %93 = mul nsw i32 2408, %92
  %94 = add nsw i32 %93, 4
  store i32 %94, ptr %15, align 4
  %95 = load i32, ptr %15, align 4
  %96 = load i32, ptr %13, align 4
  %97 = mul nsw i32 799, %96
  %98 = sub nsw i32 %95, %97
  %99 = ashr i32 %98, 3
  store i32 %99, ptr %13, align 4
  %100 = load i32, ptr %15, align 4
  %101 = load i32, ptr %14, align 4
  %102 = mul nsw i32 4017, %101
  %103 = sub nsw i32 %100, %102
  %104 = ashr i32 %103, 3
  store i32 %104, ptr %14, align 4
  %105 = load i32, ptr %7, align 4
  %106 = load i32, ptr %8, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, ptr %15, align 4
  %108 = load i32, ptr %8, align 4
  %109 = load i32, ptr %7, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, ptr %7, align 4
  %111 = load i32, ptr %10, align 4
  %112 = load i32, ptr %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = mul nsw i32 1108, %113
  %115 = add nsw i32 %114, 4
  store i32 %115, ptr %8, align 4
  %116 = load i32, ptr %8, align 4
  %117 = load i32, ptr %9, align 4
  %118 = mul nsw i32 3784, %117
  %119 = sub nsw i32 %116, %118
  %120 = ashr i32 %119, 3
  store i32 %120, ptr %9, align 4
  %121 = load i32, ptr %8, align 4
  %122 = load i32, ptr %10, align 4
  %123 = mul nsw i32 1568, %122
  %124 = add nsw i32 %121, %123
  %125 = ashr i32 %124, 3
  store i32 %125, ptr %10, align 4
  %126 = load i32, ptr %11, align 4
  %127 = load i32, ptr %13, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, ptr %8, align 4
  %129 = load i32, ptr %13, align 4
  %130 = load i32, ptr %11, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, ptr %11, align 4
  %132 = load i32, ptr %12, align 4
  %133 = load i32, ptr %14, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, ptr %13, align 4
  %135 = load i32, ptr %14, align 4
  %136 = load i32, ptr %12, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, ptr %12, align 4
  %138 = load i32, ptr %15, align 4
  %139 = load i32, ptr %10, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, ptr %14, align 4
  %141 = load i32, ptr %10, align 4
  %142 = load i32, ptr %15, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, ptr %15, align 4
  %144 = load i32, ptr %7, align 4
  %145 = load i32, ptr %9, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, ptr %10, align 4
  %147 = load i32, ptr %9, align 4
  %148 = load i32, ptr %7, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, ptr %7, align 4
  %150 = load i32, ptr %11, align 4
  %151 = load i32, ptr %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = mul nsw i32 181, %152
  %154 = add nsw i32 %153, 128
  %155 = ashr i32 %154, 8
  store i32 %155, ptr %9, align 4
  %156 = load i32, ptr %11, align 4
  %157 = load i32, ptr %12, align 4
  %158 = sub nsw i32 %156, %157
  %159 = mul nsw i32 181, %158
  %160 = add nsw i32 %159, 128
  %161 = ashr i32 %160, 8
  store i32 %161, ptr %11, align 4
  %162 = load i32, ptr %14, align 4
  %163 = load i32, ptr %8, align 4
  %164 = add nsw i32 %162, %163
  %165 = ashr i32 %164, 14
  %166 = add nsw i32 %165, 128
  %167 = call zeroext i8 @njClip(i32 noundef %166)
  %168 = load ptr, ptr %5, align 8
  store i8 %167, ptr %168, align 1
  %169 = load i32, ptr %6, align 4
  %170 = load ptr, ptr %5, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, ptr %170, i64 %171
  store ptr %172, ptr %5, align 8
  %173 = load i32, ptr %10, align 4
  %174 = load i32, ptr %9, align 4
  %175 = add nsw i32 %173, %174
  %176 = ashr i32 %175, 14
  %177 = add nsw i32 %176, 128
  %178 = call zeroext i8 @njClip(i32 noundef %177)
  %179 = load ptr, ptr %5, align 8
  store i8 %178, ptr %179, align 1
  %180 = load i32, ptr %6, align 4
  %181 = load ptr, ptr %5, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, ptr %181, i64 %182
  store ptr %183, ptr %5, align 8
  %184 = load i32, ptr %7, align 4
  %185 = load i32, ptr %11, align 4
  %186 = add nsw i32 %184, %185
  %187 = ashr i32 %186, 14
  %188 = add nsw i32 %187, 128
  %189 = call zeroext i8 @njClip(i32 noundef %188)
  %190 = load ptr, ptr %5, align 8
  store i8 %189, ptr %190, align 1
  %191 = load i32, ptr %6, align 4
  %192 = load ptr, ptr %5, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, ptr %192, i64 %193
  store ptr %194, ptr %5, align 8
  %195 = load i32, ptr %15, align 4
  %196 = load i32, ptr %13, align 4
  %197 = add nsw i32 %195, %196
  %198 = ashr i32 %197, 14
  %199 = add nsw i32 %198, 128
  %200 = call zeroext i8 @njClip(i32 noundef %199)
  %201 = load ptr, ptr %5, align 8
  store i8 %200, ptr %201, align 1
  %202 = load i32, ptr %6, align 4
  %203 = load ptr, ptr %5, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, ptr %203, i64 %204
  store ptr %205, ptr %5, align 8
  %206 = load i32, ptr %15, align 4
  %207 = load i32, ptr %13, align 4
  %208 = sub nsw i32 %206, %207
  %209 = ashr i32 %208, 14
  %210 = add nsw i32 %209, 128
  %211 = call zeroext i8 @njClip(i32 noundef %210)
  %212 = load ptr, ptr %5, align 8
  store i8 %211, ptr %212, align 1
  %213 = load i32, ptr %6, align 4
  %214 = load ptr, ptr %5, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, ptr %214, i64 %215
  store ptr %216, ptr %5, align 8
  %217 = load i32, ptr %7, align 4
  %218 = load i32, ptr %11, align 4
  %219 = sub nsw i32 %217, %218
  %220 = ashr i32 %219, 14
  %221 = add nsw i32 %220, 128
  %222 = call zeroext i8 @njClip(i32 noundef %221)
  %223 = load ptr, ptr %5, align 8
  store i8 %222, ptr %223, align 1
  %224 = load i32, ptr %6, align 4
  %225 = load ptr, ptr %5, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, ptr %225, i64 %226
  store ptr %227, ptr %5, align 8
  %228 = load i32, ptr %10, align 4
  %229 = load i32, ptr %9, align 4
  %230 = sub nsw i32 %228, %229
  %231 = ashr i32 %230, 14
  %232 = add nsw i32 %231, 128
  %233 = call zeroext i8 @njClip(i32 noundef %232)
  %234 = load ptr, ptr %5, align 8
  store i8 %233, ptr %234, align 1
  %235 = load i32, ptr %6, align 4
  %236 = load ptr, ptr %5, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, ptr %236, i64 %237
  store ptr %238, ptr %5, align 8
  %239 = load i32, ptr %14, align 4
  %240 = load i32, ptr %8, align 4
  %241 = sub nsw i32 %239, %240
  %242 = ashr i32 %241, 14
  %243 = add nsw i32 %242, 128
  %244 = call zeroext i8 @njClip(i32 noundef %243)
  %245 = load ptr, ptr %5, align 8
  store i8 %244, ptr %245, align 1
  br label %246

246:                                              ; preds = %69, %68
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @njShowBits(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %81

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %70, %17, %9
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %12 = load i32, ptr %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %19 = shl i32 %18, 8
  %20 = or i32 %19, 255
  store i32 %20, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %21 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %22 = add nsw i32 %21, 8
  store i32 %22, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  br label %10, !llvm.loop !31

23:                                               ; preds = %14
  %24 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %25 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %25, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %26 = load i8, ptr %24, align 1
  store i8 %26, ptr %4, align 1
  %27 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %29 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %30 = add nsw i32 %29, 8
  store i32 %30, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %31 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %32 = shl i32 %31, 8
  %33 = load i8, ptr %4, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  store i32 %35, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %36 = load i8, ptr %4, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %70

39:                                               ; preds = %23
  %40 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %44 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %44, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 1), align 8
  %45 = load i8, ptr %43, align 1
  store i8 %45, ptr %5, align 1
  %46 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  %48 = load i8, ptr %5, align 1
  %49 = zext i8 %48 to i32
  switch i32 %49, label %52 [
    i32 0, label %50
    i32 255, label %50
    i32 217, label %51
  ]

50:                                               ; preds = %42, %42
  br label %67

51:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 2), align 8
  br label %67

52:                                               ; preds = %42
  %53 = load i8, ptr %5, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 248
  %56 = icmp ne i32 %55, 208
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 5, ptr @nj, align 8
  br label %66

58:                                               ; preds = %52
  %59 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %60 = shl i32 %59, 8
  %61 = load i8, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  store i32 %63, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %64 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  br label %66

66:                                               ; preds = %58, %57
  br label %67

67:                                               ; preds = %66, %51, %50
  br label %69

68:                                               ; preds = %39
  store i32 5, ptr @nj, align 8
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %23
  br label %10, !llvm.loop !31

71:                                               ; preds = %10
  %72 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 16), align 8
  %73 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %74 = load i32, ptr %3, align 4
  %75 = sub nsw i32 %73, %74
  %76 = ashr i32 %72, %75
  %77 = load i32, ptr %3, align 4
  %78 = shl i32 1, %77
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %76, %79
  store i32 %80, ptr %2, align 4
  br label %81

81:                                               ; preds = %71, %8
  %82 = load i32, ptr %2, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njSkipBits(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = call i32 @njShowBits(i32 noundef %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, ptr %2, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, ptr getelementptr inbounds (%struct._nj_ctx, ptr @nj, i32 0, i32 17), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @njClip(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = icmp sgt i32 %7, 255
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %14

10:                                               ; preds = %6
  %11 = load i32, ptr %2, align 4
  %12 = trunc i32 %11 to i8
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ 255, %9 ], [ %13, %10 ]
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %14 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njUpsampleH(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._nj_cmp, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = sub nsw i32 %11, 3
  store i32 %12, ptr %3, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._nj_cmp, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct._nj_cmp, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = shl i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = call noalias ptr @malloc(i64 noundef %21) #6
  store ptr %22, ptr %4, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25
  store i32 3, ptr @nj, align 8
  br label %287

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %1
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct._nj_cmp, ptr %29, i32 0, i32 10
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %5, align 8
  %32 = load ptr, ptr %4, align 8
  store ptr %32, ptr %6, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._nj_cmp, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  store i32 %35, ptr %8, align 4
  br label %36

36:                                               ; preds = %268, %28
  %37 = load i32, ptr %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %271

39:                                               ; preds = %36
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 0
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul nsw i32 139, %43
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 -11, %48
  %50 = add nsw i32 %44, %49
  %51 = add nsw i32 %50, 64
  %52 = ashr i32 %51, 7
  %53 = call zeroext i8 @njClip(i32 noundef %52)
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds i8, ptr %54, i64 0
  store i8 %53, ptr %55, align 1
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds i8, ptr %56, i64 0
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul nsw i32 104, %59
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 27, %64
  %66 = add nsw i32 %60, %65
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds i8, ptr %67, i64 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = mul nsw i32 -3, %70
  %72 = add nsw i32 %66, %71
  %73 = add nsw i32 %72, 64
  %74 = ashr i32 %73, 7
  %75 = call zeroext i8 @njClip(i32 noundef %74)
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 %75, ptr %77, align 1
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds i8, ptr %78, i64 0
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = mul nsw i32 28, %81
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 109, %86
  %88 = add nsw i32 %82, %87
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 2
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nsw i32 -9, %92
  %94 = add nsw i32 %88, %93
  %95 = add nsw i32 %94, 64
  %96 = ashr i32 %95, 7
  %97 = call zeroext i8 @njClip(i32 noundef %96)
  %98 = load ptr, ptr %6, align 8
  %99 = getelementptr inbounds i8, ptr %98, i64 2
  store i8 %97, ptr %99, align 1
  store i32 0, ptr %7, align 4
  br label %100

100:                                              ; preds = %191, %39
  %101 = load i32, ptr %7, align 4
  %102 = load i32, ptr %3, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %194

104:                                              ; preds = %100
  %105 = load ptr, ptr %5, align 8
  %106 = load i32, ptr %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %105, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 -9, %110
  %112 = load ptr, ptr %5, align 8
  %113 = load i32, ptr %7, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %112, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = mul nsw i32 111, %118
  %120 = add nsw i32 %111, %119
  %121 = load ptr, ptr %5, align 8
  %122 = load i32, ptr %7, align 4
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %121, i64 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = mul nsw i32 29, %127
  %129 = add nsw i32 %120, %128
  %130 = load ptr, ptr %5, align 8
  %131 = load i32, ptr %7, align 4
  %132 = add nsw i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = mul nsw i32 -3, %136
  %138 = add nsw i32 %129, %137
  %139 = add nsw i32 %138, 64
  %140 = ashr i32 %139, 7
  %141 = call zeroext i8 @njClip(i32 noundef %140)
  %142 = load ptr, ptr %6, align 8
  %143 = load i32, ptr %7, align 4
  %144 = shl i32 %143, 1
  %145 = add nsw i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %142, i64 %146
  store i8 %141, ptr %147, align 1
  %148 = load ptr, ptr %5, align 8
  %149 = load i32, ptr %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = mul nsw i32 -3, %153
  %155 = load ptr, ptr %5, align 8
  %156 = load i32, ptr %7, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %155, i64 %158
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = mul nsw i32 29, %161
  %163 = add nsw i32 %154, %162
  %164 = load ptr, ptr %5, align 8
  %165 = load i32, ptr %7, align 4
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %164, i64 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = mul nsw i32 111, %170
  %172 = add nsw i32 %163, %171
  %173 = load ptr, ptr %5, align 8
  %174 = load i32, ptr %7, align 4
  %175 = add nsw i32 %174, 3
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %173, i64 %176
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = mul nsw i32 -9, %179
  %181 = add nsw i32 %172, %180
  %182 = add nsw i32 %181, 64
  %183 = ashr i32 %182, 7
  %184 = call zeroext i8 @njClip(i32 noundef %183)
  %185 = load ptr, ptr %6, align 8
  %186 = load i32, ptr %7, align 4
  %187 = shl i32 %186, 1
  %188 = add nsw i32 %187, 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %185, i64 %189
  store i8 %184, ptr %190, align 1
  br label %191

191:                                              ; preds = %104
  %192 = load i32, ptr %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %7, align 4
  br label %100, !llvm.loop !32

194:                                              ; preds = %100
  %195 = load ptr, ptr %2, align 8
  %196 = getelementptr inbounds %struct._nj_cmp, ptr %195, i32 0, i32 5
  %197 = load i32, ptr %196, align 4
  %198 = load ptr, ptr %5, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, ptr %198, i64 %199
  store ptr %200, ptr %5, align 8
  %201 = load ptr, ptr %2, align 8
  %202 = getelementptr inbounds %struct._nj_cmp, ptr %201, i32 0, i32 3
  %203 = load i32, ptr %202, align 4
  %204 = shl i32 %203, 1
  %205 = load ptr, ptr %6, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, ptr %205, i64 %206
  store ptr %207, ptr %6, align 8
  %208 = load ptr, ptr %5, align 8
  %209 = getelementptr inbounds i8, ptr %208, i64 -1
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = mul nsw i32 28, %211
  %213 = load ptr, ptr %5, align 8
  %214 = getelementptr inbounds i8, ptr %213, i64 -2
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = mul nsw i32 109, %216
  %218 = add nsw i32 %212, %217
  %219 = load ptr, ptr %5, align 8
  %220 = getelementptr inbounds i8, ptr %219, i64 -3
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = mul nsw i32 -9, %222
  %224 = add nsw i32 %218, %223
  %225 = add nsw i32 %224, 64
  %226 = ashr i32 %225, 7
  %227 = call zeroext i8 @njClip(i32 noundef %226)
  %228 = load ptr, ptr %6, align 8
  %229 = getelementptr inbounds i8, ptr %228, i64 -3
  store i8 %227, ptr %229, align 1
  %230 = load ptr, ptr %5, align 8
  %231 = getelementptr inbounds i8, ptr %230, i64 -1
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = mul nsw i32 104, %233
  %235 = load ptr, ptr %5, align 8
  %236 = getelementptr inbounds i8, ptr %235, i64 -2
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = mul nsw i32 27, %238
  %240 = add nsw i32 %234, %239
  %241 = load ptr, ptr %5, align 8
  %242 = getelementptr inbounds i8, ptr %241, i64 -3
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = mul nsw i32 -3, %244
  %246 = add nsw i32 %240, %245
  %247 = add nsw i32 %246, 64
  %248 = ashr i32 %247, 7
  %249 = call zeroext i8 @njClip(i32 noundef %248)
  %250 = load ptr, ptr %6, align 8
  %251 = getelementptr inbounds i8, ptr %250, i64 -2
  store i8 %249, ptr %251, align 1
  %252 = load ptr, ptr %5, align 8
  %253 = getelementptr inbounds i8, ptr %252, i64 -1
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = mul nsw i32 139, %255
  %257 = load ptr, ptr %5, align 8
  %258 = getelementptr inbounds i8, ptr %257, i64 -2
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = mul nsw i32 -11, %260
  %262 = add nsw i32 %256, %261
  %263 = add nsw i32 %262, 64
  %264 = ashr i32 %263, 7
  %265 = call zeroext i8 @njClip(i32 noundef %264)
  %266 = load ptr, ptr %6, align 8
  %267 = getelementptr inbounds i8, ptr %266, i64 -1
  store i8 %265, ptr %267, align 1
  br label %268

268:                                              ; preds = %194
  %269 = load i32, ptr %8, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, ptr %8, align 4
  br label %36, !llvm.loop !33

271:                                              ; preds = %36
  %272 = load ptr, ptr %2, align 8
  %273 = getelementptr inbounds %struct._nj_cmp, ptr %272, i32 0, i32 3
  %274 = load i32, ptr %273, align 4
  %275 = shl i32 %274, 1
  store i32 %275, ptr %273, align 4
  %276 = load ptr, ptr %2, align 8
  %277 = getelementptr inbounds %struct._nj_cmp, ptr %276, i32 0, i32 3
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %2, align 8
  %280 = getelementptr inbounds %struct._nj_cmp, ptr %279, i32 0, i32 5
  store i32 %278, ptr %280, align 4
  %281 = load ptr, ptr %2, align 8
  %282 = getelementptr inbounds %struct._nj_cmp, ptr %281, i32 0, i32 10
  %283 = load ptr, ptr %282, align 8
  call void @free(ptr noundef %283) #5
  %284 = load ptr, ptr %4, align 8
  %285 = load ptr, ptr %2, align 8
  %286 = getelementptr inbounds %struct._nj_cmp, ptr %285, i32 0, i32 10
  store ptr %284, ptr %286, align 8
  br label %287

287:                                              ; preds = %271, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @njUpsampleV(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._nj_cmp, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._nj_cmp, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %4, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, ptr %5, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct._nj_cmp, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct._nj_cmp, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = shl i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = call noalias ptr @malloc(i64 noundef %28) #6
  store ptr %29, ptr %6, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32
  store i32 3, ptr @nj, align 8
  br label %329

34:                                               ; No predecessors!
  br label %35

35:                                               ; preds = %34, %1
  store i32 0, ptr %9, align 4
  br label %36

36:                                               ; preds = %310, %35
  %37 = load i32, ptr %9, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %313

40:                                               ; preds = %36
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct._nj_cmp, ptr %41, i32 0, i32 10
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  store ptr %46, ptr %7, align 8
  %47 = load ptr, ptr %6, align 8
  %48 = load i32, ptr %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  store ptr %50, ptr %8, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds i8, ptr %51, i64 0
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 139, %54
  %56 = load ptr, ptr %7, align 8
  %57 = load i32, ptr %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %56, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 -11, %61
  %63 = add nsw i32 %55, %62
  %64 = add nsw i32 %63, 64
  %65 = ashr i32 %64, 7
  %66 = call zeroext i8 @njClip(i32 noundef %65)
  %67 = load ptr, ptr %8, align 8
  store i8 %66, ptr %67, align 1
  %68 = load i32, ptr %3, align 4
  %69 = load ptr, ptr %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store ptr %71, ptr %8, align 8
  %72 = load ptr, ptr %7, align 8
  %73 = getelementptr inbounds i8, ptr %72, i64 0
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 104, %75
  %77 = load ptr, ptr %7, align 8
  %78 = load i32, ptr %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 27, %82
  %84 = add nsw i32 %76, %83
  %85 = load ptr, ptr %7, align 8
  %86 = load i32, ptr %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = mul nsw i32 -3, %90
  %92 = add nsw i32 %84, %91
  %93 = add nsw i32 %92, 64
  %94 = ashr i32 %93, 7
  %95 = call zeroext i8 @njClip(i32 noundef %94)
  %96 = load ptr, ptr %8, align 8
  store i8 %95, ptr %96, align 1
  %97 = load i32, ptr %3, align 4
  %98 = load ptr, ptr %8, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, ptr %98, i64 %99
  store ptr %100, ptr %8, align 8
  %101 = load ptr, ptr %7, align 8
  %102 = getelementptr inbounds i8, ptr %101, i64 0
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 28, %104
  %106 = load ptr, ptr %7, align 8
  %107 = load i32, ptr %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = mul nsw i32 109, %111
  %113 = add nsw i32 %105, %112
  %114 = load ptr, ptr %7, align 8
  %115 = load i32, ptr %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = mul nsw i32 -9, %119
  %121 = add nsw i32 %113, %120
  %122 = add nsw i32 %121, 64
  %123 = ashr i32 %122, 7
  %124 = call zeroext i8 @njClip(i32 noundef %123)
  %125 = load ptr, ptr %8, align 8
  store i8 %124, ptr %125, align 1
  %126 = load i32, ptr %3, align 4
  %127 = load ptr, ptr %8, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, ptr %127, i64 %128
  store ptr %129, ptr %8, align 8
  %130 = load i32, ptr %4, align 4
  %131 = load ptr, ptr %7, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, ptr %131, i64 %132
  store ptr %133, ptr %7, align 8
  %134 = load ptr, ptr %2, align 8
  %135 = getelementptr inbounds %struct._nj_cmp, ptr %134, i32 0, i32 4
  %136 = load i32, ptr %135, align 8
  %137 = sub nsw i32 %136, 3
  store i32 %137, ptr %10, align 4
  br label %138

138:                                              ; preds = %222, %40
  %139 = load i32, ptr %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %225

141:                                              ; preds = %138
  %142 = load ptr, ptr %7, align 8
  %143 = load i32, ptr %4, align 4
  %144 = sub nsw i32 0, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %142, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = mul nsw i32 -9, %148
  %150 = load ptr, ptr %7, align 8
  %151 = getelementptr inbounds i8, ptr %150, i64 0
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = mul nsw i32 111, %153
  %155 = add nsw i32 %149, %154
  %156 = load ptr, ptr %7, align 8
  %157 = load i32, ptr %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %156, i64 %158
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = mul nsw i32 29, %161
  %163 = add nsw i32 %155, %162
  %164 = load ptr, ptr %7, align 8
  %165 = load i32, ptr %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %164, i64 %166
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = mul nsw i32 -3, %169
  %171 = add nsw i32 %163, %170
  %172 = add nsw i32 %171, 64
  %173 = ashr i32 %172, 7
  %174 = call zeroext i8 @njClip(i32 noundef %173)
  %175 = load ptr, ptr %8, align 8
  store i8 %174, ptr %175, align 1
  %176 = load i32, ptr %3, align 4
  %177 = load ptr, ptr %8, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  store ptr %179, ptr %8, align 8
  %180 = load ptr, ptr %7, align 8
  %181 = load i32, ptr %4, align 4
  %182 = sub nsw i32 0, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %180, i64 %183
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = mul nsw i32 -3, %186
  %188 = load ptr, ptr %7, align 8
  %189 = getelementptr inbounds i8, ptr %188, i64 0
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = mul nsw i32 29, %191
  %193 = add nsw i32 %187, %192
  %194 = load ptr, ptr %7, align 8
  %195 = load i32, ptr %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %194, i64 %196
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = mul nsw i32 111, %199
  %201 = add nsw i32 %193, %200
  %202 = load ptr, ptr %7, align 8
  %203 = load i32, ptr %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %202, i64 %204
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = mul nsw i32 -9, %207
  %209 = add nsw i32 %201, %208
  %210 = add nsw i32 %209, 64
  %211 = ashr i32 %210, 7
  %212 = call zeroext i8 @njClip(i32 noundef %211)
  %213 = load ptr, ptr %8, align 8
  store i8 %212, ptr %213, align 1
  %214 = load i32, ptr %3, align 4
  %215 = load ptr, ptr %8, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, ptr %215, i64 %216
  store ptr %217, ptr %8, align 8
  %218 = load i32, ptr %4, align 4
  %219 = load ptr, ptr %7, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, ptr %219, i64 %220
  store ptr %221, ptr %7, align 8
  br label %222

222:                                              ; preds = %141
  %223 = load i32, ptr %10, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, ptr %10, align 4
  br label %138, !llvm.loop !34

225:                                              ; preds = %138
  %226 = load i32, ptr %4, align 4
  %227 = load ptr, ptr %7, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, ptr %227, i64 %228
  store ptr %229, ptr %7, align 8
  %230 = load ptr, ptr %7, align 8
  %231 = getelementptr inbounds i8, ptr %230, i64 0
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = mul nsw i32 28, %233
  %235 = load ptr, ptr %7, align 8
  %236 = load i32, ptr %4, align 4
  %237 = sub nsw i32 0, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %235, i64 %238
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = mul nsw i32 109, %241
  %243 = add nsw i32 %234, %242
  %244 = load ptr, ptr %7, align 8
  %245 = load i32, ptr %5, align 4
  %246 = sub nsw i32 0, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %244, i64 %247
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = mul nsw i32 -9, %250
  %252 = add nsw i32 %243, %251
  %253 = add nsw i32 %252, 64
  %254 = ashr i32 %253, 7
  %255 = call zeroext i8 @njClip(i32 noundef %254)
  %256 = load ptr, ptr %8, align 8
  store i8 %255, ptr %256, align 1
  %257 = load i32, ptr %3, align 4
  %258 = load ptr, ptr %8, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, ptr %258, i64 %259
  store ptr %260, ptr %8, align 8
  %261 = load ptr, ptr %7, align 8
  %262 = getelementptr inbounds i8, ptr %261, i64 0
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = mul nsw i32 104, %264
  %266 = load ptr, ptr %7, align 8
  %267 = load i32, ptr %4, align 4
  %268 = sub nsw i32 0, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, ptr %266, i64 %269
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i32
  %273 = mul nsw i32 27, %272
  %274 = add nsw i32 %265, %273
  %275 = load ptr, ptr %7, align 8
  %276 = load i32, ptr %5, align 4
  %277 = sub nsw i32 0, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, ptr %275, i64 %278
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = mul nsw i32 -3, %281
  %283 = add nsw i32 %274, %282
  %284 = add nsw i32 %283, 64
  %285 = ashr i32 %284, 7
  %286 = call zeroext i8 @njClip(i32 noundef %285)
  %287 = load ptr, ptr %8, align 8
  store i8 %286, ptr %287, align 1
  %288 = load i32, ptr %3, align 4
  %289 = load ptr, ptr %8, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, ptr %289, i64 %290
  store ptr %291, ptr %8, align 8
  %292 = load ptr, ptr %7, align 8
  %293 = getelementptr inbounds i8, ptr %292, i64 0
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = mul nsw i32 139, %295
  %297 = load ptr, ptr %7, align 8
  %298 = load i32, ptr %4, align 4
  %299 = sub nsw i32 0, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, ptr %297, i64 %300
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = mul nsw i32 -11, %303
  %305 = add nsw i32 %296, %304
  %306 = add nsw i32 %305, 64
  %307 = ashr i32 %306, 7
  %308 = call zeroext i8 @njClip(i32 noundef %307)
  %309 = load ptr, ptr %8, align 8
  store i8 %308, ptr %309, align 1
  br label %310

310:                                              ; preds = %225
  %311 = load i32, ptr %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, ptr %9, align 4
  br label %36, !llvm.loop !35

313:                                              ; preds = %36
  %314 = load ptr, ptr %2, align 8
  %315 = getelementptr inbounds %struct._nj_cmp, ptr %314, i32 0, i32 4
  %316 = load i32, ptr %315, align 8
  %317 = shl i32 %316, 1
  store i32 %317, ptr %315, align 8
  %318 = load ptr, ptr %2, align 8
  %319 = getelementptr inbounds %struct._nj_cmp, ptr %318, i32 0, i32 3
  %320 = load i32, ptr %319, align 4
  %321 = load ptr, ptr %2, align 8
  %322 = getelementptr inbounds %struct._nj_cmp, ptr %321, i32 0, i32 5
  store i32 %320, ptr %322, align 4
  %323 = load ptr, ptr %2, align 8
  %324 = getelementptr inbounds %struct._nj_cmp, ptr %323, i32 0, i32 10
  %325 = load ptr, ptr %324, align 8
  call void @free(ptr noundef %325) #5
  %326 = load ptr, ptr %6, align 8
  %327 = load ptr, ptr %2, align 8
  %328 = getelementptr inbounds %struct._nj_cmp, ptr %327, i32 0, i32 10
  store ptr %326, ptr %328, align 8
  br label %329

329:                                              ; preds = %313, %33
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 18.1.1 (Fedora 18.1.1-1.fc40)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
