; ModuleID = 'md5.c'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

%struct.MD5_CTX = type { [64 x i8], i32, i64, [4 x i32] }

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md5_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %29, %4 ]
  %6 = phi i64 [ 0, %2 ], [ %30, %4 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !3
  %9 = zext i8 %8 to i32
  %10 = or i64 %6, 1
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !3
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %14, %9
  %16 = or i64 %6, 2
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !3
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %15, %20
  %22 = or i64 %6, 3
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !3
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = or i32 %21, %26
  %28 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %5
  store i32 %27, ptr %28, align 4, !tbaa !6
  %29 = add nuw nsw i64 %5, 1
  %30 = add nuw nsw i64 %6, 4
  %31 = icmp eq i64 %29, 16
  br i1 %31, label %32, label %4, !llvm.loop !8

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3, i64 1
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3, i64 2
  %38 = load i32, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3, i64 3
  %40 = load i32, ptr %39, align 4, !tbaa !6
  %41 = and i32 %38, %36
  %42 = xor i32 %36, -1
  %43 = and i32 %40, %42
  %44 = load i32, ptr %3, align 16, !tbaa !6
  %45 = add i32 %34, -680876936
  %46 = add i32 %45, %41
  %47 = add i32 %46, %43
  %48 = add i32 %47, %44
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 7)
  %50 = add i32 %49, %36
  %51 = and i32 %50, %36
  %52 = xor i32 %50, -1
  %53 = and i32 %38, %52
  %54 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !6
  %56 = add i32 %40, -389564586
  %57 = add i32 %56, %55
  %58 = add i32 %57, %53
  %59 = add i32 %58, %51
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 12)
  %61 = add i32 %60, %50
  %62 = and i32 %61, %50
  %63 = xor i32 %61, -1
  %64 = and i32 %36, %63
  %65 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 2
  %66 = load i32, ptr %65, align 8, !tbaa !6
  %67 = add i32 %38, 606105819
  %68 = add i32 %67, %66
  %69 = add i32 %68, %64
  %70 = add i32 %69, %62
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %72 = add i32 %71, %61
  %73 = and i32 %72, %61
  %74 = xor i32 %72, -1
  %75 = and i32 %50, %74
  %76 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 3
  %77 = load i32, ptr %76, align 4, !tbaa !6
  %78 = add i32 %36, -1044525330
  %79 = add i32 %78, %77
  %80 = add i32 %79, %75
  %81 = add i32 %80, %73
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 22)
  %83 = add i32 %82, %72
  %84 = and i32 %83, %72
  %85 = xor i32 %83, -1
  %86 = and i32 %61, %85
  %87 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 4
  %88 = load i32, ptr %87, align 16, !tbaa !6
  %89 = add i32 %88, -176418897
  %90 = add i32 %89, %50
  %91 = add i32 %90, %86
  %92 = add i32 %91, %84
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 7)
  %94 = add i32 %93, %83
  %95 = and i32 %94, %83
  %96 = xor i32 %94, -1
  %97 = and i32 %72, %96
  %98 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 5
  %99 = load i32, ptr %98, align 4, !tbaa !6
  %100 = add i32 %99, 1200080426
  %101 = add i32 %100, %61
  %102 = add i32 %101, %97
  %103 = add i32 %102, %95
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 12)
  %105 = add i32 %104, %94
  %106 = and i32 %105, %94
  %107 = xor i32 %105, -1
  %108 = and i32 %83, %107
  %109 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 6
  %110 = load i32, ptr %109, align 8, !tbaa !6
  %111 = add i32 %110, -1473231341
  %112 = add i32 %111, %72
  %113 = add i32 %112, %108
  %114 = add i32 %113, %106
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 17)
  %116 = add i32 %115, %105
  %117 = and i32 %116, %105
  %118 = xor i32 %116, -1
  %119 = and i32 %94, %118
  %120 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 7
  %121 = load i32, ptr %120, align 4, !tbaa !6
  %122 = add i32 %121, -45705983
  %123 = add i32 %122, %83
  %124 = add i32 %123, %119
  %125 = add i32 %124, %117
  %126 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 22)
  %127 = add i32 %126, %116
  %128 = and i32 %127, %116
  %129 = xor i32 %127, -1
  %130 = and i32 %105, %129
  %131 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 8
  %132 = load i32, ptr %131, align 16, !tbaa !6
  %133 = add i32 %132, 1770035416
  %134 = add i32 %133, %94
  %135 = add i32 %134, %130
  %136 = add i32 %135, %128
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 7)
  %138 = add i32 %137, %127
  %139 = and i32 %138, %127
  %140 = xor i32 %138, -1
  %141 = and i32 %116, %140
  %142 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 9
  %143 = load i32, ptr %142, align 4, !tbaa !6
  %144 = add i32 %143, -1958414417
  %145 = add i32 %144, %105
  %146 = add i32 %145, %141
  %147 = add i32 %146, %139
  %148 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 12)
  %149 = add i32 %148, %138
  %150 = and i32 %149, %138
  %151 = xor i32 %149, -1
  %152 = and i32 %127, %151
  %153 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 10
  %154 = load i32, ptr %153, align 8, !tbaa !6
  %155 = add i32 %154, -42063
  %156 = add i32 %155, %116
  %157 = add i32 %156, %152
  %158 = add i32 %157, %150
  %159 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %160 = add i32 %159, %149
  %161 = and i32 %160, %149
  %162 = xor i32 %160, -1
  %163 = and i32 %138, %162
  %164 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 11
  %165 = load i32, ptr %164, align 4, !tbaa !6
  %166 = add i32 %165, -1990404162
  %167 = add i32 %166, %127
  %168 = add i32 %167, %163
  %169 = add i32 %168, %161
  %170 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 22)
  %171 = add i32 %170, %160
  %172 = and i32 %171, %160
  %173 = xor i32 %171, -1
  %174 = and i32 %149, %173
  %175 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 12
  %176 = load i32, ptr %175, align 16, !tbaa !6
  %177 = add i32 %176, 1804603682
  %178 = add i32 %177, %138
  %179 = add i32 %178, %174
  %180 = add i32 %179, %172
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 7)
  %182 = add i32 %181, %171
  %183 = and i32 %182, %171
  %184 = xor i32 %182, -1
  %185 = and i32 %160, %184
  %186 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 13
  %187 = load i32, ptr %186, align 4, !tbaa !6
  %188 = add i32 %187, -40341101
  %189 = add i32 %188, %149
  %190 = add i32 %189, %185
  %191 = add i32 %190, %183
  %192 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 12)
  %193 = add i32 %192, %182
  %194 = and i32 %193, %182
  %195 = xor i32 %193, -1
  %196 = and i32 %171, %195
  %197 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 14
  %198 = load i32, ptr %197, align 8, !tbaa !6
  %199 = add i32 %198, -1502002290
  %200 = add i32 %199, %160
  %201 = add i32 %200, %196
  %202 = add i32 %201, %194
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 17)
  %204 = add i32 %203, %193
  %205 = and i32 %204, %193
  %206 = xor i32 %204, -1
  %207 = and i32 %182, %206
  %208 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 15
  %209 = load i32, ptr %208, align 4, !tbaa !6
  %210 = add i32 %209, 1236535329
  %211 = add i32 %210, %171
  %212 = add i32 %211, %207
  %213 = add i32 %212, %205
  %214 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 22)
  %215 = add i32 %214, %204
  %216 = and i32 %215, %193
  %217 = and i32 %204, %195
  %218 = add i32 %55, -165796510
  %219 = add i32 %218, %182
  %220 = add i32 %219, %217
  %221 = add i32 %220, %216
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 5)
  %223 = add i32 %222, %215
  %224 = and i32 %223, %204
  %225 = and i32 %215, %206
  %226 = add i32 %110, -1069501632
  %227 = add i32 %226, %193
  %228 = add i32 %227, %225
  %229 = add i32 %228, %224
  %230 = tail call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 9)
  %231 = add i32 %230, %223
  %232 = and i32 %231, %215
  %233 = xor i32 %215, -1
  %234 = and i32 %223, %233
  %235 = add i32 %165, 643717713
  %236 = add i32 %235, %204
  %237 = add i32 %236, %234
  %238 = add i32 %237, %232
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 14)
  %240 = add i32 %239, %231
  %241 = and i32 %240, %223
  %242 = xor i32 %223, -1
  %243 = and i32 %231, %242
  %244 = add i32 %44, -373897302
  %245 = add i32 %244, %215
  %246 = add i32 %245, %243
  %247 = add i32 %246, %241
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 20)
  %249 = add i32 %248, %240
  %250 = and i32 %249, %231
  %251 = xor i32 %231, -1
  %252 = and i32 %240, %251
  %253 = add i32 %99, -701558691
  %254 = add i32 %253, %223
  %255 = add i32 %254, %252
  %256 = add i32 %255, %250
  %257 = tail call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 5)
  %258 = add i32 %257, %249
  %259 = and i32 %258, %240
  %260 = xor i32 %240, -1
  %261 = and i32 %249, %260
  %262 = add i32 %154, 38016083
  %263 = add i32 %262, %231
  %264 = add i32 %263, %261
  %265 = add i32 %264, %259
  %266 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 9)
  %267 = add i32 %266, %258
  %268 = and i32 %267, %249
  %269 = xor i32 %249, -1
  %270 = and i32 %258, %269
  %271 = add i32 %209, -660478335
  %272 = add i32 %271, %240
  %273 = add i32 %272, %270
  %274 = add i32 %273, %268
  %275 = tail call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 14)
  %276 = add i32 %275, %267
  %277 = and i32 %276, %258
  %278 = xor i32 %258, -1
  %279 = and i32 %267, %278
  %280 = add i32 %88, -405537848
  %281 = add i32 %280, %249
  %282 = add i32 %281, %279
  %283 = add i32 %282, %277
  %284 = tail call i32 @llvm.fshl.i32(i32 %283, i32 %283, i32 20)
  %285 = add i32 %284, %276
  %286 = and i32 %285, %267
  %287 = xor i32 %267, -1
  %288 = and i32 %276, %287
  %289 = add i32 %143, 568446438
  %290 = add i32 %289, %258
  %291 = add i32 %290, %288
  %292 = add i32 %291, %286
  %293 = tail call i32 @llvm.fshl.i32(i32 %292, i32 %292, i32 5)
  %294 = add i32 %293, %285
  %295 = and i32 %294, %276
  %296 = xor i32 %276, -1
  %297 = and i32 %285, %296
  %298 = add i32 %198, -1019803690
  %299 = add i32 %298, %267
  %300 = add i32 %299, %297
  %301 = add i32 %300, %295
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 9)
  %303 = add i32 %302, %294
  %304 = and i32 %303, %285
  %305 = xor i32 %285, -1
  %306 = and i32 %294, %305
  %307 = add i32 %77, -187363961
  %308 = add i32 %307, %276
  %309 = add i32 %308, %306
  %310 = add i32 %309, %304
  %311 = tail call i32 @llvm.fshl.i32(i32 %310, i32 %310, i32 14)
  %312 = add i32 %311, %303
  %313 = and i32 %312, %294
  %314 = xor i32 %294, -1
  %315 = and i32 %303, %314
  %316 = add i32 %132, 1163531501
  %317 = add i32 %316, %285
  %318 = add i32 %317, %315
  %319 = add i32 %318, %313
  %320 = tail call i32 @llvm.fshl.i32(i32 %319, i32 %319, i32 20)
  %321 = add i32 %320, %312
  %322 = and i32 %321, %303
  %323 = xor i32 %303, -1
  %324 = and i32 %312, %323
  %325 = add i32 %187, -1444681467
  %326 = add i32 %325, %294
  %327 = add i32 %326, %324
  %328 = add i32 %327, %322
  %329 = tail call i32 @llvm.fshl.i32(i32 %328, i32 %328, i32 5)
  %330 = add i32 %329, %321
  %331 = and i32 %330, %312
  %332 = xor i32 %312, -1
  %333 = and i32 %321, %332
  %334 = add i32 %66, -51403784
  %335 = add i32 %334, %303
  %336 = add i32 %335, %333
  %337 = add i32 %336, %331
  %338 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 9)
  %339 = add i32 %338, %330
  %340 = and i32 %339, %321
  %341 = xor i32 %321, -1
  %342 = and i32 %330, %341
  %343 = add i32 %121, 1735328473
  %344 = add i32 %343, %312
  %345 = add i32 %344, %342
  %346 = add i32 %345, %340
  %347 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 14)
  %348 = add i32 %347, %339
  %349 = and i32 %348, %330
  %350 = xor i32 %330, -1
  %351 = and i32 %339, %350
  %352 = add i32 %176, -1926607734
  %353 = add i32 %352, %321
  %354 = add i32 %353, %351
  %355 = add i32 %354, %349
  %356 = tail call i32 @llvm.fshl.i32(i32 %355, i32 %355, i32 20)
  %357 = add i32 %356, %348
  %358 = xor i32 %357, %348
  %359 = xor i32 %358, %339
  %360 = add i32 %99, -378558
  %361 = add i32 %360, %330
  %362 = add i32 %361, %359
  %363 = tail call i32 @llvm.fshl.i32(i32 %362, i32 %362, i32 4)
  %364 = add i32 %363, %357
  %365 = xor i32 %358, %364
  %366 = add i32 %132, -2022574463
  %367 = add i32 %366, %339
  %368 = add i32 %367, %365
  %369 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 11)
  %370 = add i32 %369, %364
  %371 = xor i32 %364, %357
  %372 = xor i32 %371, %370
  %373 = add i32 %165, 1839030562
  %374 = add i32 %373, %348
  %375 = add i32 %374, %372
  %376 = tail call i32 @llvm.fshl.i32(i32 %375, i32 %375, i32 16)
  %377 = add i32 %376, %370
  %378 = xor i32 %370, %364
  %379 = xor i32 %378, %377
  %380 = add i32 %198, -35309556
  %381 = add i32 %380, %357
  %382 = add i32 %381, %379
  %383 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 23)
  %384 = add i32 %383, %377
  %385 = xor i32 %377, %370
  %386 = xor i32 %385, %384
  %387 = add i32 %55, -1530992060
  %388 = add i32 %387, %364
  %389 = add i32 %388, %386
  %390 = tail call i32 @llvm.fshl.i32(i32 %389, i32 %389, i32 4)
  %391 = add i32 %390, %384
  %392 = xor i32 %384, %377
  %393 = xor i32 %392, %391
  %394 = add i32 %88, 1272893353
  %395 = add i32 %394, %370
  %396 = add i32 %395, %393
  %397 = tail call i32 @llvm.fshl.i32(i32 %396, i32 %396, i32 11)
  %398 = add i32 %397, %391
  %399 = xor i32 %391, %384
  %400 = xor i32 %399, %398
  %401 = add i32 %121, -155497632
  %402 = add i32 %401, %377
  %403 = add i32 %402, %400
  %404 = tail call i32 @llvm.fshl.i32(i32 %403, i32 %403, i32 16)
  %405 = add i32 %404, %398
  %406 = xor i32 %398, %391
  %407 = xor i32 %406, %405
  %408 = add i32 %154, -1094730640
  %409 = add i32 %408, %384
  %410 = add i32 %409, %407
  %411 = tail call i32 @llvm.fshl.i32(i32 %410, i32 %410, i32 23)
  %412 = add i32 %411, %405
  %413 = xor i32 %405, %398
  %414 = xor i32 %413, %412
  %415 = add i32 %187, 681279174
  %416 = add i32 %415, %391
  %417 = add i32 %416, %414
  %418 = tail call i32 @llvm.fshl.i32(i32 %417, i32 %417, i32 4)
  %419 = add i32 %418, %412
  %420 = xor i32 %412, %405
  %421 = xor i32 %420, %419
  %422 = add i32 %44, -358537222
  %423 = add i32 %422, %398
  %424 = add i32 %423, %421
  %425 = tail call i32 @llvm.fshl.i32(i32 %424, i32 %424, i32 11)
  %426 = add i32 %425, %419
  %427 = xor i32 %419, %412
  %428 = xor i32 %427, %426
  %429 = add i32 %77, -722521979
  %430 = add i32 %429, %405
  %431 = add i32 %430, %428
  %432 = tail call i32 @llvm.fshl.i32(i32 %431, i32 %431, i32 16)
  %433 = add i32 %432, %426
  %434 = xor i32 %426, %419
  %435 = xor i32 %434, %433
  %436 = add i32 %110, 76029189
  %437 = add i32 %436, %412
  %438 = add i32 %437, %435
  %439 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 23)
  %440 = add i32 %439, %433
  %441 = xor i32 %433, %426
  %442 = xor i32 %441, %440
  %443 = add i32 %143, -640364487
  %444 = add i32 %443, %419
  %445 = add i32 %444, %442
  %446 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 4)
  %447 = add i32 %446, %440
  %448 = xor i32 %440, %433
  %449 = xor i32 %448, %447
  %450 = add i32 %176, -421815835
  %451 = add i32 %450, %426
  %452 = add i32 %451, %449
  %453 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 11)
  %454 = add i32 %453, %447
  %455 = xor i32 %447, %440
  %456 = xor i32 %455, %454
  %457 = add i32 %209, 530742520
  %458 = add i32 %457, %433
  %459 = add i32 %458, %456
  %460 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 16)
  %461 = add i32 %460, %454
  %462 = xor i32 %454, %447
  %463 = xor i32 %462, %461
  %464 = add i32 %66, -995338651
  %465 = add i32 %464, %440
  %466 = add i32 %465, %463
  %467 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 23)
  %468 = add i32 %467, %461
  %469 = xor i32 %454, -1
  %470 = or i32 %468, %469
  %471 = xor i32 %470, %461
  %472 = add i32 %44, -198630844
  %473 = add i32 %472, %447
  %474 = add i32 %473, %471
  %475 = tail call i32 @llvm.fshl.i32(i32 %474, i32 %474, i32 6)
  %476 = add i32 %475, %468
  %477 = xor i32 %461, -1
  %478 = or i32 %476, %477
  %479 = xor i32 %478, %468
  %480 = add i32 %121, 1126891415
  %481 = add i32 %480, %454
  %482 = add i32 %481, %479
  %483 = tail call i32 @llvm.fshl.i32(i32 %482, i32 %482, i32 10)
  %484 = add i32 %483, %476
  %485 = xor i32 %468, -1
  %486 = or i32 %484, %485
  %487 = xor i32 %486, %476
  %488 = add i32 %198, -1416354905
  %489 = add i32 %488, %461
  %490 = add i32 %489, %487
  %491 = tail call i32 @llvm.fshl.i32(i32 %490, i32 %490, i32 15)
  %492 = add i32 %491, %484
  %493 = xor i32 %476, -1
  %494 = or i32 %492, %493
  %495 = xor i32 %494, %484
  %496 = add i32 %99, -57434055
  %497 = add i32 %496, %468
  %498 = add i32 %497, %495
  %499 = tail call i32 @llvm.fshl.i32(i32 %498, i32 %498, i32 21)
  %500 = add i32 %499, %492
  %501 = xor i32 %484, -1
  %502 = or i32 %500, %501
  %503 = xor i32 %502, %492
  %504 = add i32 %176, 1700485571
  %505 = add i32 %504, %476
  %506 = add i32 %505, %503
  %507 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 6)
  %508 = add i32 %507, %500
  %509 = xor i32 %492, -1
  %510 = or i32 %508, %509
  %511 = xor i32 %510, %500
  %512 = add i32 %77, -1894986606
  %513 = add i32 %512, %484
  %514 = add i32 %513, %511
  %515 = tail call i32 @llvm.fshl.i32(i32 %514, i32 %514, i32 10)
  %516 = add i32 %515, %508
  %517 = xor i32 %500, -1
  %518 = or i32 %516, %517
  %519 = xor i32 %518, %508
  %520 = add i32 %154, -1051523
  %521 = add i32 %520, %492
  %522 = add i32 %521, %519
  %523 = tail call i32 @llvm.fshl.i32(i32 %522, i32 %522, i32 15)
  %524 = add i32 %523, %516
  %525 = xor i32 %508, -1
  %526 = or i32 %524, %525
  %527 = xor i32 %526, %516
  %528 = add i32 %55, -2054922799
  %529 = add i32 %528, %500
  %530 = add i32 %529, %527
  %531 = tail call i32 @llvm.fshl.i32(i32 %530, i32 %530, i32 21)
  %532 = add i32 %531, %524
  %533 = xor i32 %516, -1
  %534 = or i32 %532, %533
  %535 = xor i32 %534, %524
  %536 = add i32 %132, 1873313359
  %537 = add i32 %536, %508
  %538 = add i32 %537, %535
  %539 = tail call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 6)
  %540 = add i32 %539, %532
  %541 = xor i32 %524, -1
  %542 = or i32 %540, %541
  %543 = xor i32 %542, %532
  %544 = add i32 %209, -30611744
  %545 = add i32 %544, %516
  %546 = add i32 %545, %543
  %547 = tail call i32 @llvm.fshl.i32(i32 %546, i32 %546, i32 10)
  %548 = add i32 %547, %540
  %549 = xor i32 %532, -1
  %550 = or i32 %548, %549
  %551 = xor i32 %550, %540
  %552 = add i32 %110, -1560198380
  %553 = add i32 %552, %524
  %554 = add i32 %553, %551
  %555 = tail call i32 @llvm.fshl.i32(i32 %554, i32 %554, i32 15)
  %556 = add i32 %555, %548
  %557 = xor i32 %540, -1
  %558 = or i32 %556, %557
  %559 = xor i32 %558, %548
  %560 = add i32 %187, 1309151649
  %561 = add i32 %560, %532
  %562 = add i32 %561, %559
  %563 = tail call i32 @llvm.fshl.i32(i32 %562, i32 %562, i32 21)
  %564 = add i32 %563, %556
  %565 = xor i32 %548, -1
  %566 = or i32 %564, %565
  %567 = xor i32 %566, %556
  %568 = add i32 %88, -145523070
  %569 = add i32 %568, %540
  %570 = add i32 %569, %567
  %571 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 6)
  %572 = add i32 %571, %564
  %573 = xor i32 %556, -1
  %574 = or i32 %572, %573
  %575 = xor i32 %574, %564
  %576 = add i32 %165, -1120210379
  %577 = add i32 %576, %548
  %578 = add i32 %577, %575
  %579 = tail call i32 @llvm.fshl.i32(i32 %578, i32 %578, i32 10)
  %580 = add i32 %579, %572
  %581 = xor i32 %564, -1
  %582 = or i32 %580, %581
  %583 = xor i32 %582, %572
  %584 = add i32 %66, 718787259
  %585 = add i32 %584, %556
  %586 = add i32 %585, %583
  %587 = tail call i32 @llvm.fshl.i32(i32 %586, i32 %586, i32 15)
  %588 = add i32 %587, %580
  %589 = xor i32 %572, -1
  %590 = or i32 %588, %589
  %591 = xor i32 %590, %580
  %592 = add i32 %143, -343485551
  %593 = add i32 %592, %564
  %594 = add i32 %593, %591
  %595 = tail call i32 @llvm.fshl.i32(i32 %594, i32 %594, i32 21)
  %596 = add i32 %572, %34
  store i32 %596, ptr %33, align 8, !tbaa !6
  %597 = add i32 %588, %36
  %598 = add i32 %597, %595
  store i32 %598, ptr %35, align 4, !tbaa !6
  %599 = add i32 %588, %38
  store i32 %599, ptr %37, align 8, !tbaa !6
  %600 = add i32 %580, %40
  store i32 %600, ptr %39, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @md5_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md5_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %6, align 8, !tbaa !10
  br label %9

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %8, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %24, %22 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !3
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !3
  %16 = load i32, ptr %6, align 8, !tbaa !10
  %17 = add i32 %16, 1
  store i32 %17, ptr %6, align 8, !tbaa !10
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  tail call void @md5_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %20 = load i64, ptr %7, align 8, !tbaa !13
  %21 = add i64 %20, 512
  store i64 %21, ptr %7, align 8, !tbaa !13
  store i32 0, ptr %6, align 8, !tbaa !10
  br label %22

22:                                               ; preds = %9, %19
  %23 = phi i32 [ %17, %9 ], [ 0, %19 ]
  %24 = add nuw i64 %11, 1
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %9, !llvm.loop !14

26:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @md5_final(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = zext i32 %4 to i64
  %6 = icmp ult i32 %4, 56
  %7 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %5
  store i8 -128, ptr %7, align 1, !tbaa !3
  br i1 %6, label %8, label %14

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 55
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = add nuw nsw i64 %5, 1
  %12 = getelementptr i8, ptr %0, i64 %11
  %13 = sub nsw i64 55, %5
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %13, i1 false), !tbaa !3
  br label %21

14:                                               ; preds = %2
  %15 = icmp ult i32 %4, 63
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = add nuw nsw i64 %5, 1
  %18 = getelementptr i8, ptr %0, i64 %17
  %19 = sub nsw i64 63, %5
  tail call void @llvm.memset.p0.i64(ptr align 1 %18, i8 0, i64 %19, i1 false), !tbaa !3
  br label %20

20:                                               ; preds = %16, %14
  tail call void @md5_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %21

21:                                               ; preds = %10, %8, %20
  %22 = load i32, ptr %3, align 8, !tbaa !10
  %23 = shl i32 %22, 3
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = add i64 %26, %24
  store i64 %27, ptr %25, align 8, !tbaa !13
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 56
  store i8 %28, ptr %29, align 8, !tbaa !3
  %30 = lshr i64 %27, 8
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 57
  store i8 %31, ptr %32, align 1, !tbaa !3
  %33 = lshr i64 %27, 16
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 58
  store i8 %34, ptr %35, align 2, !tbaa !3
  %36 = lshr i64 %27, 24
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 59
  store i8 %37, ptr %38, align 1, !tbaa !3
  %39 = lshr i64 %27, 32
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 60
  store i8 %40, ptr %41, align 4, !tbaa !3
  %42 = lshr i64 %27, 40
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 61
  store i8 %43, ptr %44, align 1, !tbaa !3
  %45 = lshr i64 %27, 48
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 62
  store i8 %46, ptr %47, align 2, !tbaa !3
  %48 = lshr i64 %27, 56
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 63
  store i8 %49, ptr %50, align 1, !tbaa !3
  tail call void @md5_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %51 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3
  %52 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3, i64 1
  %53 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3, i64 2
  %54 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3, i64 3
  %55 = load i32, ptr %51, align 8, !tbaa !6
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %1, align 1, !tbaa !3
  %57 = load i32, ptr %52, align 4, !tbaa !6
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %58, ptr %59, align 1, !tbaa !3
  %60 = load i32, ptr %53, align 8, !tbaa !6
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 %61, ptr %62, align 1, !tbaa !3
  %63 = load i32, ptr %54, align 4, !tbaa !6
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %1, i64 12
  store i8 %64, ptr %65, align 1, !tbaa !3
  %66 = load i32, ptr %51, align 8, !tbaa !6
  %67 = lshr i32 %66, 8
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !3
  %70 = load i32, ptr %52, align 4, !tbaa !6
  %71 = lshr i32 %70, 8
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %72, ptr %73, align 1, !tbaa !3
  %74 = load i32, ptr %53, align 8, !tbaa !6
  %75 = lshr i32 %74, 8
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %76, ptr %77, align 1, !tbaa !3
  %78 = load i32, ptr %54, align 4, !tbaa !6
  %79 = lshr i32 %78, 8
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds i8, ptr %1, i64 13
  store i8 %80, ptr %81, align 1, !tbaa !3
  %82 = load i32, ptr %51, align 8, !tbaa !6
  %83 = lshr i32 %82, 16
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %84, ptr %85, align 1, !tbaa !3
  %86 = load i32, ptr %52, align 4, !tbaa !6
  %87 = lshr i32 %86, 16
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %88, ptr %89, align 1, !tbaa !3
  %90 = load i32, ptr %53, align 8, !tbaa !6
  %91 = lshr i32 %90, 16
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %92, ptr %93, align 1, !tbaa !3
  %94 = load i32, ptr %54, align 4, !tbaa !6
  %95 = lshr i32 %94, 16
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds i8, ptr %1, i64 14
  store i8 %96, ptr %97, align 1, !tbaa !3
  %98 = load i32, ptr %51, align 8, !tbaa !6
  %99 = lshr i32 %98, 24
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %100, ptr %101, align 1, !tbaa !3
  %102 = load i32, ptr %52, align 4, !tbaa !6
  %103 = lshr i32 %102, 24
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %104, ptr %105, align 1, !tbaa !3
  %106 = load i32, ptr %53, align 8, !tbaa !6
  %107 = lshr i32 %106, 24
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %108, ptr %109, align 1, !tbaa !3
  %110 = load i32, ptr %54, align 4, !tbaa !6
  %111 = lshr i32 %110, 24
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %1, i64 15
  store i8 %112, ptr %113, align 1, !tbaa !3
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
!10 = !{!11, !7, i64 64}
!11 = !{!"", !4, i64 0, !7, i64 64, !12, i64 72, !4, i64 80}
!12 = !{!"long long", !4, i64 0}
!13 = !{!11, !12, i64 72}
!14 = distinct !{!14, !9}
