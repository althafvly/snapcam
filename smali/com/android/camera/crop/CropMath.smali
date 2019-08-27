.class public Lcom/android/camera/crop/CropMath;
.super Ljava/lang/Object;
.source "CropMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closestSide([F[F)[F
    .locals 8
    .param p0, "point"    # [F
    .param p1, "corners"    # [F

    .line 112
    array-length v0, p1

    .line 113
    .local v0, "len":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 114
    .local v1, "oldMag":F
    const/4 v2, 0x0

    .line 115
    .local v2, "bestLine":[F
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "oldMag":F
    .local v4, "bestLine":[F
    :goto_0
    if-ge v1, v0, :cond_1

    .line 116
    const/4 v5, 0x4

    new-array v5, v5, [F

    aget v6, p1, v1

    aput v6, v5, v3

    add-int/lit8 v6, v1, 0x1

    rem-int/2addr v6, v0

    aget v6, p1, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    add-int/lit8 v6, v1, 0x2

    rem-int/2addr v6, v0

    aget v6, p1, v6

    const/4 v7, 0x2

    aput v6, v5, v7

    add-int/lit8 v6, v1, 0x3

    rem-int/2addr v6, v0

    aget v6, p1, v6

    const/4 v7, 0x3

    aput v6, v5, v7

    .line 120
    .local v5, "line":[F
    nop

    .line 121
    invoke-static {p0, v5}, Lcom/android/camera/crop/GeometryMathUtils;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v6

    .line 120
    invoke-static {v6}, Lcom/android/camera/crop/GeometryMathUtils;->vectorLength([F)F

    move-result v6

    .line 122
    .local v6, "mag":F
    cmpg-float v7, v6, v2

    if-gez v7, :cond_0

    .line 123
    move v2, v6

    .line 124
    move-object v4, v5

    .line 115
    .end local v5    # "line":[F
    .end local v6    # "mag":F
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method

.method public static constrainedRotation(F)I
    .locals 2
    .param p0, "rotation"    # F

    .line 241
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 242
    .local v0, "r":I
    if-gez v0, :cond_0

    add-int/lit8 v1, v0, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 243
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method public static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .line 172
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 173
    .local v0, "scale":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 174
    .local v1, "centX":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 175
    .local v2, "centY":F
    mul-float v3, v0, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 176
    .local v3, "hw":F
    mul-float v5, v0, p2

    div-float/2addr v5, v4

    .line 177
    .local v5, "hh":F
    sub-float v4, v1, v3

    sub-float v6, v2, v5

    add-float v7, v1, v3

    add-float v8, v2, v5

    invoke-virtual {p0, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    return-void
.end method

.method public static fixAspectRatioContained(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .line 189
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 190
    .local v0, "origW":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 191
    .local v1, "origH":F
    div-float v2, v0, v1

    .line 192
    .local v2, "origA":F
    div-float v3, p1, p2

    .line 193
    .local v3, "a":F
    move v4, v0

    .line 194
    .local v4, "finalW":F
    move v5, v1

    .line 195
    .local v5, "finalH":F
    cmpg-float v6, v2, v3

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v6, :cond_0

    .line 196
    div-float v5, v0, v3

    .line 197
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    div-float v7, v5, v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 198
    iget v6, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 200
    :cond_0
    mul-float v4, v1, v3

    .line 201
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    div-float v7, v4, v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 202
    iget v6, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 204
    :goto_0
    return-void
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bmap"    # Landroid/graphics/Bitmap;

    .line 232
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 3
    .param p0, "r"    # Landroid/graphics/RectF;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 47
    .local v0, "corners":[F
    return-object v0
.end method

.method public static getEdgePoints(Landroid/graphics/RectF;[F)V
    .locals 5
    .param p0, "imageBound"    # Landroid/graphics/RectF;
    .param p1, "array"    # [F

    .line 95
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 96
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 98
    aget v1, p1, v0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/android/camera/crop/GeometryMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 99
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4}, Lcom/android/camera/crop/GeometryMathUtils;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 97
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 101
    .end local v0    # "x":I
    :cond_1
    return-void
.end method

.method public static getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .param p0, "cropBounds"    # Landroid/graphics/RectF;
    .param p1, "photoBounds"    # Landroid/graphics/RectF;
    .param p2, "displayBounds"    # Landroid/graphics/RectF;

    .line 217
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v0, "m":Landroid/graphics/Matrix;
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 219
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 220
    .local v1, "trueCrop":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const/4 v2, 0x0

    return-object v2

    .line 223
    :cond_0
    return-object v1
.end method

.method private static getUnrotated([F[FLandroid/graphics/RectF;)F
    .locals 8
    .param p0, "rotatedRect"    # [F
    .param p1, "center"    # [F
    .param p2, "unrotated"    # Landroid/graphics/RectF;

    .line 247
    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x3

    aget v2, p0, v2

    sub-float/2addr v1, v2

    .line 248
    .local v1, "dy":F
    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v4, p0, v4

    sub-float/2addr v3, v4

    .line 249
    .local v3, "dx":F
    div-float v4, v1, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 250
    .local v4, "angle":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 251
    .local v5, "m":Landroid/graphics/Matrix;
    neg-float v6, v4

    aget v2, p1, v2

    aget v0, p1, v0

    invoke-virtual {v5, v6, v2, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 252
    array-length v0, p0

    new-array v0, v0, [F

    .line 253
    .local v0, "unrotatedRect":[F
    invoke-virtual {v5, v0, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 254
    invoke-static {v0}, Lcom/android/camera/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 255
    return v4
.end method

.method public static inclusiveContains(Landroid/graphics/RectF;FF)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 61
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static pointInRotatedRect([FLandroid/graphics/RectF;F)Z
    .locals 5
    .param p0, "point"    # [F
    .param p1, "bound"    # Landroid/graphics/RectF;
    .param p2, "rot"    # F

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v0, "m":Landroid/graphics/Matrix;
    const/4 v1, 0x2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 141
    .local v1, "p":[F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 142
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v2, "m0":Landroid/graphics/Matrix;
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 144
    return v4

    .line 145
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 146
    aget v3, v1, v4

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {p1, v3, v4}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v3

    return v3
.end method

.method public static pointInRotatedRect([F[F[F)Z
    .locals 3
    .param p0, "point"    # [F
    .param p1, "rotatedRect"    # [F
    .param p2, "center"    # [F

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 159
    .local v0, "unrotated":Landroid/graphics/RectF;
    invoke-static {p1, p2, v0}, Lcom/android/camera/crop/CropMath;->getUnrotated([F[FLandroid/graphics/RectF;)F

    move-result v1

    .line 160
    .local v1, "angle":F
    invoke-static {p0, v0, v1}, Lcom/android/camera/crop/CropMath;->pointInRotatedRect([FLandroid/graphics/RectF;F)Z

    move-result v2

    return v2
.end method

.method public static trapToRect([F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "array"    # [F

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .local v0, "r":Landroid/graphics/RectF;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 75
    add-int/lit8 v2, v1, -0x1

    aget v2, p0, v2

    .line 76
    .local v2, "x":F
    aget v3, p0, v1

    .line 77
    .local v3, "y":F
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->left:F

    :goto_1
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 78
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->top:F

    :goto_2
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 79
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->right:F

    :goto_3
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 80
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_4

    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    :goto_4
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 74
    .end local v2    # "x":F
    .end local v3    # "y":F
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 83
    return-object v0
.end method
