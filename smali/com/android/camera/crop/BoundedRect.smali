.class public Lcom/android/camera/crop/BoundedRect;
.super Ljava/lang/Object;
.source "BoundedRect.java"


# instance fields
.field private inner:Landroid/graphics/RectF;

.field private innerRotated:[F

.field private outer:Landroid/graphics/RectF;

.field private rot:F


# direct methods
.method public constructor <init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/Rect;
    .param p3, "innerRect"    # Landroid/graphics/Rect;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 38
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 39
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->rotateInner()V

    .line 40
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/RectF;
    .param p3, "innerRect"    # Landroid/graphics/RectF;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 48
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 49
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->rotateInner()V

    .line 50
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 52
    :cond_0
    return-void
.end method

.method private getInverseRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 362
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 363
    .local v0, "m":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 364
    return-object v0
.end method

.method private getRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 356
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 357
    .local v0, "m":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    iget-object v2, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 358
    return-object v0
.end method

.method private isConstrained()Z
    .locals 6

    .line 334
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    return v0

    .line 334
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private reconstrain()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    invoke-static {v0, v1}, Lcom/android/camera/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 344
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 345
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 346
    .local v1, "unrotated":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 347
    invoke-static {v1}, Lcom/android/camera/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 348
    return-void
.end method

.method private rotateInner()V
    .locals 2

    .line 351
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 352
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 353
    return-void
.end method


# virtual methods
.method public fixedAspectResizeInner(Landroid/graphics/RectF;)V
    .locals 26
    .param p1, "newInner"    # Landroid/graphics/RectF;

    move-object/from16 v0, p0

    .line 244
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 245
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 247
    .local v3, "m0":Landroid/graphics/Matrix;
    iget-object v4, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 248
    .local v4, "aspectW":F
    iget-object v5, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 249
    .local v5, "aspectH":F
    div-float v6, v4, v5

    .line 250
    .local v6, "aspRatio":F
    iget-object v7, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v7}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v7

    .line 252
    .local v7, "corners":[F
    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 253
    iget-object v8, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v8

    .line 254
    .local v8, "oldInnerCorners":[F
    invoke-static/range {p1 .. p1}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v9

    .line 257
    .local v9, "newInnerCorners":[F
    const/4 v10, -0x1

    .line 258
    .local v10, "fixed":I
    iget-object v11, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    .line 259
    iget-object v11, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    .line 260
    const/4 v10, 0x0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v11, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    iget v12, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 262
    const/4 v10, 0x2

    goto :goto_0

    .line 263
    :cond_1
    iget-object v11, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 264
    iget-object v11, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    iget v12, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    .line 265
    const/4 v10, 0x4

    goto :goto_0

    .line 266
    :cond_2
    iget-object v11, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 267
    const/4 v10, 0x6

    .line 270
    :cond_3
    :goto_0
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 271
    return-void

    .line 272
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 273
    .local v11, "widthSoFar":F
    const/4 v12, -0x1

    .line 274
    .local v12, "moved":I
    move v14, v12

    move v12, v11

    const/4 v11, 0x0

    .local v11, "i":I
    .local v12, "widthSoFar":F
    .local v14, "moved":I
    :goto_1
    array-length v15, v9

    const/4 v13, 0x2

    if-ge v11, v15, :cond_9

    .line 275
    new-array v15, v13, [F

    aget v18, v9, v11

    const/16 v16, 0x0

    aput v18, v15, v16

    add-int/lit8 v18, v11, 0x1

    aget v18, v9, v18

    const/16 v19, 0x1

    aput v18, v15, v19

    .line 278
    .local v15, "c":[F
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 279
    .local v1, "c0":[F
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 280
    iget-object v13, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    move-object/from16 v20, v2

    const/16 v16, 0x0

    aget v2, v1, v16

    .end local v2    # "m":Landroid/graphics/Matrix;
    .local v20, "m":Landroid/graphics/Matrix;
    move/from16 v21, v4

    aget v4, v1, v19

    .end local v4    # "aspectW":F
    .local v21, "aspectW":F
    invoke-static {v13, v2, v4}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v2

    if-nez v2, :cond_8

    .line 281
    move v2, v11

    .line 282
    .end local v14    # "moved":I
    .local v2, "moved":I
    if-ne v2, v10, :cond_5

    .line 283
    nop

    .line 274
    move/from16 v23, v2

    const/16 v16, 0x0

    goto :goto_3

    .line 284
    :cond_5
    invoke-static {v15, v7}, Lcom/android/camera/crop/CropMath;->closestSide([F[F)[F

    move-result-object v4

    .line 285
    .local v4, "l2":[F
    const/4 v13, 0x4

    new-array v13, v13, [F

    aget v14, v9, v11

    const/16 v16, 0x0

    aput v14, v13, v16

    add-int/lit8 v14, v11, 0x1

    aget v14, v9, v14

    aput v14, v13, v19

    aget v14, v8, v11

    const/16 v17, 0x2

    aput v14, v13, v17

    const/4 v14, 0x3

    add-int/lit8 v17, v11, 0x1

    aget v17, v8, v17

    aput v17, v13, v14

    .line 289
    .local v13, "l1":[F
    invoke-static {v13, v4}, Lcom/android/camera/crop/GeometryMathUtils;->lineIntersect([F[F)[F

    move-result-object v14

    .line 290
    .local v14, "p":[F
    if-nez v14, :cond_6

    .line 293
    move-object/from16 v22, v1

    const/4 v1, 0x2

    new-array v14, v1, [F

    .line 294
    .end local v1    # "c0":[F
    .local v22, "c0":[F
    aget v1, v8, v11

    const/16 v16, 0x0

    aput v1, v14, v16

    .line 295
    add-int/lit8 v1, v11, 0x1

    aget v1, v8, v1

    aput v1, v14, v19

    goto :goto_2

    .line 299
    .end local v22    # "c0":[F
    .restart local v1    # "c0":[F
    :cond_6
    move-object/from16 v22, v1

    .end local v1    # "c0":[F
    .restart local v22    # "c0":[F
    :goto_2
    aget v1, v8, v10

    .line 300
    .local v1, "fixed_x":F
    add-int/lit8 v17, v10, 0x1

    aget v17, v8, v17

    .line 301
    .local v17, "fixed_y":F
    const/16 v16, 0x0

    aget v18, v14, v16

    move/from16 v23, v2

    sub-float v2, v1, v18

    .end local v2    # "moved":I
    .local v23, "moved":I
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 302
    .local v2, "newWidth":F
    aget v18, v14, v19

    move/from16 v24, v1

    sub-float v1, v17, v18

    .end local v1    # "fixed_x":F
    .local v24, "fixed_x":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 303
    .local v1, "newHeight":F
    move-object/from16 v25, v4

    mul-float v4, v6, v1

    .end local v4    # "l2":[F
    .local v25, "l2":[F
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 304
    cmpg-float v4, v2, v12

    if-gez v4, :cond_7

    .line 305
    move v1, v2

    .line 274
    .end local v2    # "newWidth":F
    .end local v12    # "widthSoFar":F
    .end local v13    # "l1":[F
    .end local v14    # "p":[F
    .end local v15    # "c":[F
    .end local v17    # "fixed_y":F
    .end local v22    # "c0":[F
    .end local v24    # "fixed_x":F
    .end local v25    # "l2":[F
    .local v1, "widthSoFar":F
    move v12, v1

    move/from16 v14, v23

    goto :goto_4

    .end local v1    # "widthSoFar":F
    .end local v23    # "moved":I
    .local v2, "moved":I
    .restart local v12    # "widthSoFar":F
    :cond_7
    :goto_3
    move/from16 v14, v23

    .end local v2    # "moved":I
    .restart local v23    # "moved":I
    goto :goto_4

    .end local v23    # "moved":I
    .local v14, "moved":I
    :cond_8
    const/16 v16, 0x0

    :goto_4
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v2, v20

    move/from16 v4, v21

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 309
    .end local v11    # "i":I
    .end local v20    # "m":Landroid/graphics/Matrix;
    .end local v21    # "aspectW":F
    .local v2, "m":Landroid/graphics/Matrix;
    .local v4, "aspectW":F
    :cond_9
    move-object/from16 v20, v2

    move/from16 v21, v4

    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v4    # "aspectW":F
    .restart local v20    # "m":Landroid/graphics/Matrix;
    .restart local v21    # "aspectW":F
    div-float v1, v12, v6

    .line 310
    .local v1, "heightSoFar":F
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 311
    .local v2, "ret":Landroid/graphics/RectF;
    if-nez v10, :cond_a

    .line 312
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v12

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 313
    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    .line 314
    :cond_a
    const/4 v4, 0x2

    if-ne v10, v4, :cond_b

    .line 315
    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v12

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 316
    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    .line 317
    :cond_b
    const/4 v4, 0x4

    if-ne v10, v4, :cond_c

    .line 318
    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v12

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 319
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/RectF;->top:F

    goto :goto_5

    .line 320
    :cond_c
    const/4 v4, 0x6

    if-ne v10, v4, :cond_d

    .line 321
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v12

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 322
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 324
    :cond_d
    :goto_5
    invoke-static {v2}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v4

    .line 325
    .local v4, "retCorners":[F
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 326
    iput-object v4, v0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 329
    return-void
.end method

.method public getInner()Landroid/graphics/RectF;
    .locals 2

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getOuter()Landroid/graphics/RectF;
    .locals 2

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public moveInner(FF)V
    .locals 19
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    move-object/from16 v0, p0

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 114
    .local v1, "m0":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 115
    .local v2, "translatedInner":Landroid/graphics/RectF;
    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 117
    invoke-static {v2}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 118
    .local v5, "translatedInnerCorners":[F
    iget-object v6, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v6}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v6

    .line 120
    .local v6, "outerCorners":[F
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 121
    const/4 v7, 0x2

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    .line 126
    .local v8, "correction":[F
    const/4 v9, 0x0

    move v10, v9

    .local v10, "i":I
    :goto_0
    array-length v11, v5

    const/4 v12, 0x1

    if-ge v10, v11, :cond_1

    .line 127
    aget v11, v5, v10

    aget v13, v8, v9

    add-float/2addr v11, v13

    .line 128
    .local v11, "correctedInnerX":F
    add-int/lit8 v13, v10, 0x1

    aget v13, v5, v13

    aget v14, v8, v12

    add-float/2addr v13, v14

    .line 129
    .local v13, "correctedInnerY":F
    iget-object v14, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v14, v11, v13}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v14

    if-nez v14, :cond_0

    .line 130
    new-array v14, v7, [F

    aput v11, v14, v9

    aput v13, v14, v12

    .line 133
    .local v14, "badCorner":[F
    invoke-static {v14, v6}, Lcom/android/camera/crop/CropMath;->closestSide([F[F)[F

    move-result-object v15

    .line 134
    .local v15, "nearestSide":[F
    nop

    .line 135
    invoke-static {v14, v15}, Lcom/android/camera/crop/GeometryMathUtils;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v16

    .line 136
    .local v16, "correctionVec":[F
    aget v17, v8, v9

    aget v18, v16, v9

    add-float v17, v17, v18

    aput v17, v8, v9

    .line 137
    aget v17, v8, v12

    aget v18, v16, v12

    add-float v17, v17, v18

    aput v17, v8, v12

    .line 126
    .end local v11    # "correctedInnerX":F
    .end local v13    # "correctedInnerY":F
    .end local v14    # "badCorner":[F
    .end local v15    # "nearestSide":[F
    .end local v16    # "correctionVec":[F
    :cond_0
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 141
    .end local v10    # "i":I
    :cond_1
    move v10, v9

    .restart local v10    # "i":I
    :goto_1
    array-length v11, v5

    if-ge v10, v11, :cond_3

    .line 142
    aget v11, v5, v10

    aget v13, v8, v9

    add-float/2addr v11, v13

    .line 143
    .restart local v11    # "correctedInnerX":F
    add-int/lit8 v13, v10, 0x1

    aget v13, v5, v13

    aget v14, v8, v12

    add-float/2addr v13, v14

    .line 144
    .restart local v13    # "correctedInnerY":F
    iget-object v14, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v14, v11, v13}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v14

    if-nez v14, :cond_2

    .line 145
    new-array v14, v7, [F

    aput v11, v14, v9

    aput v13, v14, v12

    .line 148
    .local v14, "correctionVec":[F
    iget-object v15, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v15, v14}, Lcom/android/camera/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 149
    aget v15, v14, v9

    sub-float/2addr v15, v11

    aput v15, v14, v9

    .line 150
    aget v15, v14, v12

    sub-float/2addr v15, v13

    aput v15, v14, v12

    .line 151
    aget v15, v8, v9

    aget v16, v14, v9

    add-float v15, v15, v16

    aput v15, v8, v9

    .line 152
    aget v15, v8, v12

    aget v16, v14, v12

    add-float v15, v15, v16

    aput v15, v8, v12

    .line 141
    .end local v11    # "correctedInnerX":F
    .end local v13    # "correctedInnerY":F
    .end local v14    # "correctionVec":[F
    :cond_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    .line 157
    .end local v10    # "i":I
    :cond_3
    move v7, v9

    .local v7, "i":I
    :goto_2
    array-length v10, v5

    if-ge v7, v10, :cond_4

    .line 158
    aget v10, v5, v7

    aget v11, v8, v9

    add-float/2addr v10, v11

    .line 159
    .local v10, "correctedInnerX":F
    add-int/lit8 v11, v7, 0x1

    aget v11, v5, v11

    aget v13, v8, v12

    add-float/2addr v11, v13

    .line 161
    .local v11, "correctedInnerY":F
    aput v10, v5, v7

    .line 162
    add-int/lit8 v13, v7, 0x1

    aput v11, v5, v13

    .line 157
    .end local v10    # "correctedInnerX":F
    .end local v11    # "correctedInnerY":F
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 165
    .end local v7    # "i":I
    :cond_4
    iput-object v5, v0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 168
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/RectF;
    .param p3, "innerRect"    # Landroid/graphics/RectF;

    .line 55
    iput p1, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    .line 56
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 59
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->rotateInner()V

    .line 60
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 62
    :cond_0
    return-void
.end method

.method public resizeInner(Landroid/graphics/RectF;)V
    .locals 19
    .param p1, "newInner"    # Landroid/graphics/RectF;

    move-object/from16 v0, p0

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 176
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 178
    .local v2, "m0":Landroid/graphics/Matrix;
    iget-object v3, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v3

    .line 179
    .local v3, "outerCorners":[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 180
    iget-object v4, v0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v4}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v4

    .line 181
    .local v4, "oldInnerCorners":[F
    invoke-static/range {p1 .. p1}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 182
    .local v5, "newInnerCorners":[F
    new-instance v6, Landroid/graphics/RectF;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 184
    .local v6, "ret":Landroid/graphics/RectF;
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_0
    array-length v10, v5

    if-ge v9, v10, :cond_a

    .line 185
    const/4 v10, 0x2

    new-array v11, v10, [F

    aget v12, v5, v9

    aput v12, v11, v8

    add-int/lit8 v12, v9, 0x1

    aget v12, v5, v12

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 188
    .local v11, "c":[F
    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v12

    .line 189
    .local v12, "c0":[F
    invoke-virtual {v2, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v14, v0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    aget v15, v12, v8

    aget v10, v12, v13

    invoke-static {v14, v15, v10}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v10

    if-nez v10, :cond_9

    .line 191
    invoke-static {v11, v3}, Lcom/android/camera/crop/CropMath;->closestSide([F[F)[F

    move-result-object v10

    .line 192
    .local v10, "outerSide":[F
    const/4 v14, 0x4

    new-array v14, v14, [F

    aget v15, v5, v9

    aput v15, v14, v8

    add-int/lit8 v15, v9, 0x1

    aget v15, v5, v15

    aput v15, v14, v13

    aget v15, v4, v9

    const/16 v16, 0x2

    aput v15, v14, v16

    const/4 v15, 0x3

    add-int/lit8 v17, v9, 0x1

    aget v17, v4, v17

    aput v17, v14, v15

    .line 196
    .local v14, "pathOfCorner":[F
    invoke-static {v14, v10}, Lcom/android/camera/crop/GeometryMathUtils;->lineIntersect([F[F)[F

    move-result-object v15

    .line 197
    .local v15, "p":[F
    if-nez v15, :cond_0

    .line 199
    const/4 v13, 0x2

    new-array v15, v13, [F

    .line 200
    aget v13, v4, v9

    aput v13, v15, v8

    .line 201
    add-int/lit8 v13, v9, 0x1

    aget v13, v4, v13

    const/16 v16, 0x1

    aput v13, v15, v16

    .line 205
    :cond_0
    packed-switch v9, :pswitch_data_0

    .end local v10    # "outerSide":[F
    .end local v11    # "c":[F
    .end local v12    # "c0":[F
    .end local v14    # "pathOfCorner":[F
    .end local v15    # "p":[F
    goto/16 :goto_9

    .line 223
    .restart local v10    # "outerSide":[F
    .restart local v11    # "c":[F
    .restart local v12    # "c0":[F
    .restart local v14    # "pathOfCorner":[F
    .restart local v15    # "p":[F
    :pswitch_0
    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v13, v8

    if-lez v8, :cond_1

    const/4 v8, 0x0

    aget v13, v15, v8

    goto :goto_1

    :cond_1
    iget v13, v6, Landroid/graphics/RectF;->left:F

    :goto_1
    iput v13, v6, Landroid/graphics/RectF;->left:F

    .line 224
    const/4 v8, 0x1

    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, v13, v8

    if-gez v8, :cond_2

    const/4 v8, 0x1

    aget v8, v15, v8

    goto :goto_2

    :cond_2
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    :goto_2
    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 225
    goto/16 :goto_9

    .line 218
    :pswitch_1
    const/4 v8, 0x0

    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v13, v8

    if-gez v8, :cond_3

    const/4 v8, 0x0

    aget v13, v15, v8

    goto :goto_3

    :cond_3
    iget v13, v6, Landroid/graphics/RectF;->right:F

    :goto_3
    iput v13, v6, Landroid/graphics/RectF;->right:F

    .line 219
    const/4 v8, 0x1

    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v8, v13, v8

    if-gez v8, :cond_4

    const/4 v8, 0x1

    aget v8, v15, v8

    goto :goto_4

    :cond_4
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    :goto_4
    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 220
    goto :goto_9

    .line 213
    :pswitch_2
    const/4 v8, 0x0

    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v13, v8

    if-gez v8, :cond_5

    const/4 v8, 0x0

    aget v13, v15, v8

    goto :goto_5

    :cond_5
    iget v13, v6, Landroid/graphics/RectF;->right:F

    :goto_5
    iput v13, v6, Landroid/graphics/RectF;->right:F

    .line 214
    const/4 v8, 0x1

    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v13, v8

    if-lez v8, :cond_6

    const/4 v8, 0x1

    aget v8, v15, v8

    goto :goto_6

    :cond_6
    iget v8, v6, Landroid/graphics/RectF;->top:F

    :goto_6
    iput v8, v6, Landroid/graphics/RectF;->top:F

    .line 215
    goto :goto_9

    .line 208
    :pswitch_3
    const/4 v8, 0x0

    aget v13, v15, v8

    iget v8, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v13, v8

    if-lez v8, :cond_7

    const/4 v8, 0x0

    aget v13, v15, v8

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    iget v13, v6, Landroid/graphics/RectF;->left:F

    :goto_7
    iput v13, v6, Landroid/graphics/RectF;->left:F

    .line 209
    const/4 v13, 0x1

    aget v16, v15, v13

    iget v8, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v16, v8

    if-lez v8, :cond_8

    aget v8, v15, v13

    goto :goto_8

    :cond_8
    iget v8, v6, Landroid/graphics/RectF;->top:F

    :goto_8
    iput v8, v6, Landroid/graphics/RectF;->top:F

    .line 210
    nop

    .line 184
    .end local v10    # "outerSide":[F
    .end local v11    # "c":[F
    .end local v12    # "c0":[F
    .end local v14    # "pathOfCorner":[F
    .end local v15    # "p":[F
    :cond_9
    :goto_9
    add-int/lit8 v9, v9, 0x2

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 231
    .end local v9    # "i":I
    :cond_a
    invoke-static {v6}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v8

    .line 232
    .local v8, "retCorners":[F
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 233
    iput-object v8, v0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 236
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setInner(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .line 68
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 71
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 72
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->rotateInner()V

    .line 73
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 75
    :cond_1
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 81
    iget v0, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 83
    :cond_0
    iput p1, p0, Lcom/android/camera/crop/BoundedRect;->rot:F

    .line 84
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/crop/BoundedRect;->innerRotated:[F

    .line 85
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->rotateInner()V

    .line 86
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/android/camera/crop/BoundedRect;->reconstrain()V

    .line 88
    :cond_1
    return-void
.end method

.method public setToInner(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 91
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 92
    return-void
.end method

.method public setToOuter(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 95
    iget-object v0, p0, Lcom/android/camera/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 96
    return-void
.end method
