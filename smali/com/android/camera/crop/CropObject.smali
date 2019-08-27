.class public Lcom/android/camera/crop/CropObject;
.super Ljava/lang/Object;
.source "CropObject.java"


# static fields
.field public static final BOTTOM_LEFT:I = 0x9

.field public static final BOTTOM_RIGHT:I = 0xc

.field public static final MOVE_BLOCK:I = 0x10

.field public static final MOVE_BOTTOM:I = 0x8

.field public static final MOVE_LEFT:I = 0x1

.field public static final MOVE_NONE:I = 0x0

.field public static final MOVE_RIGHT:I = 0x4

.field public static final MOVE_TOP:I = 0x2

.field public static final TOP_LEFT:I = 0x3

.field public static final TOP_RIGHT:I = 0x6


# instance fields
.field private mAspectHeight:F

.field private mAspectWidth:F

.field private mBoundedRect:Lcom/android/camera/crop/BoundedRect;

.field private mFixAspectRatio:Z

.field private mMinSideSize:F

.field private mMovingEdges:I

.field private mRotation:F

.field private mTouchTolerance:F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "outerBound"    # Landroid/graphics/Rect;
    .param p2, "innerBound"    # Landroid/graphics/Rect;
    .param p3, "outerAngle"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/crop/CropObject;->mAspectWidth:F

    .line 25
    iput v0, p0, Lcom/android/camera/crop/CropObject;->mAspectHeight:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/crop/CropObject;->mRotation:F

    .line 28
    const/high16 v1, 0x42340000    # 45.0f

    iput v1, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    .line 29
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/android/camera/crop/CropObject;->mMinSideSize:F

    .line 45
    iput v0, p0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    .line 48
    new-instance v0, Lcom/android/camera/crop/BoundedRect;

    rem-int/lit16 v1, p3, 0x168

    int-to-float v1, v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/camera/crop/BoundedRect;-><init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 2
    .param p1, "outerBound"    # Landroid/graphics/RectF;
    .param p2, "innerBound"    # Landroid/graphics/RectF;
    .param p3, "outerAngle"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/crop/CropObject;->mAspectWidth:F

    .line 25
    iput v0, p0, Lcom/android/camera/crop/CropObject;->mAspectHeight:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/crop/CropObject;->mRotation:F

    .line 28
    const/high16 v1, 0x42340000    # 45.0f

    iput v1, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    .line 29
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/android/camera/crop/CropObject;->mMinSideSize:F

    .line 45
    iput v0, p0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    .line 52
    new-instance v0, Lcom/android/camera/crop/BoundedRect;

    rem-int/lit16 v1, p3, 0x168

    int-to-float v1, v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/camera/crop/BoundedRect;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    .line 53
    return-void
.end method

.method private calculateSelectedEdge(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 263
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/android/camera/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 265
    .local v0, "cropped":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 266
    .local v1, "left":F
    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 267
    .local v2, "right":F
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 268
    .local v3, "top":F
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 270
    .local v4, "bottom":F
    const/4 v5, 0x0

    .line 272
    .local v5, "edgeSelected":I
    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p2, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    cmpg-float v6, v1, v2

    if-gez v6, :cond_0

    .line 274
    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 276
    :cond_0
    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p2, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 278
    or-int/lit8 v5, v5, 0x4

    .line 282
    :cond_1
    :goto_0
    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p1, v6

    iget v7, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    .line 284
    or-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 286
    :cond_2
    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_3

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p1, v6

    iget v7, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    .line 288
    or-int/lit8 v5, v5, 0x8

    .line 290
    :cond_3
    :goto_1
    return v5
.end method

.method public static checkBlock(I)Z
    .locals 1
    .param p0, "selected"    # I

    .line 140
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkCorner(I)Z
    .locals 1
    .param p0, "selected"    # I

    .line 130
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static checkEdge(I)Z
    .locals 2
    .param p0, "selected"    # I

    .line 135
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static checkValid(I)Z
    .locals 1
    .param p0, "selected"    # I

    .line 144
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/camera/crop/CropObject;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/crop/CropObject;->checkEdge(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {p0}, Lcom/android/camera/crop/CropObject;->checkCorner(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 144
    :goto_1
    return v0
.end method

.method private static fixEdgeToCorner(I)I
    .locals 1
    .param p0, "moving_edges"    # I

    .line 313
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 314
    or-int/lit8 p0, p0, 0x2

    .line 316
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 317
    or-int/lit8 p0, p0, 0x1

    .line 319
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 320
    or-int/lit8 p0, p0, 0x8

    .line 322
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 323
    or-int/lit8 p0, p0, 0x4

    .line 325
    :cond_3
    return p0
.end method

.method private static fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "moving_corner"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "newCrop":Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 297
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p2

    iget v5, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v5, p3

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    goto :goto_0

    .line 299
    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 300
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v5, p3

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 303
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    goto :goto_0

    .line 305
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 306
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    .line 307
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p2

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    .line 309
    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clearSelectState()V
    .locals 1

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    .line 150
    return-void
.end method

.method public getInnerBounds()Landroid/graphics/RectF;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/android/camera/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getInnerBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 60
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/crop/BoundedRect;->setToInner(Landroid/graphics/RectF;)V

    .line 61
    return-void
.end method

.method public getOuterBounds()Landroid/graphics/RectF;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/android/camera/crop/BoundedRect;->getOuter()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOuterBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 64
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/crop/BoundedRect;->setToOuter(Landroid/graphics/RectF;)V

    .line 65
    return-void
.end method

.method public getSelectState()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    return v0
.end method

.method public hasSelectedEdge()Z
    .locals 1

    .line 126
    iget v0, p0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFixedAspect()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    return v0
.end method

.method public moveCurrentSelection(FF)Z
    .locals 17
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 187
    move/from16 v2, p2

    iget v3, v0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 188
    return v4

    .line 190
    :cond_0
    iget-object v3, v0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v3}, Lcom/android/camera/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v3

    .line 192
    .local v3, "crop":Landroid/graphics/RectF;
    iget v5, v0, Lcom/android/camera/crop/CropObject;->mMinSideSize:F

    .line 194
    .local v5, "minWidthHeight":F
    iget v6, v0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    .line 195
    .local v6, "movingEdges":I
    const/16 v7, 0x10

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    .line 196
    iget-object v4, v0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v4, v1, v2}, Lcom/android/camera/crop/BoundedRect;->moveInner(FF)V

    .line 197
    return v8

    .line 199
    :cond_1
    const/4 v7, 0x0

    .line 200
    .local v7, "dx":F
    const/4 v9, 0x0

    .line 202
    .local v9, "dy":F
    and-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_2

    .line 203
    iget v10, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v1

    iget v11, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, v3, Landroid/graphics/RectF;->left:F

    sub-float v7, v10, v11

    .line 205
    :cond_2
    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_3

    .line 206
    iget v10, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v2

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, v3, Landroid/graphics/RectF;->top:F

    sub-float v9, v10, v11

    .line 208
    :cond_3
    and-int/lit8 v10, v6, 0x4

    if-eqz v10, :cond_4

    .line 209
    iget v10, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v1

    iget v11, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v3, Landroid/graphics/RectF;->right:F

    sub-float v7, v10, v11

    .line 212
    :cond_4
    and-int/lit8 v10, v6, 0x8

    if-eqz v10, :cond_5

    .line 213
    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v2

    iget v11, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v10, v11

    .line 217
    :cond_5
    iget-boolean v10, v0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v10, :cond_8

    .line 218
    const/4 v10, 0x2

    new-array v11, v10, [F

    iget v12, v3, Landroid/graphics/RectF;->left:F

    aput v12, v11, v4

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    aput v12, v11, v8

    .line 221
    .local v11, "l1":[F
    new-array v12, v10, [F

    iget v13, v3, Landroid/graphics/RectF;->right:F

    aput v13, v12, v4

    iget v13, v3, Landroid/graphics/RectF;->top:F

    aput v13, v12, v8

    .line 224
    .local v12, "l2":[F
    const/4 v13, 0x3

    if-eq v6, v13, :cond_6

    const/16 v13, 0xc

    if-ne v6, v13, :cond_7

    .line 225
    :cond_6
    iget v13, v3, Landroid/graphics/RectF;->top:F

    aput v13, v11, v8

    .line 226
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    aput v13, v12, v8

    .line 228
    :cond_7
    new-array v13, v10, [F

    aget v14, v11, v4

    aget v15, v12, v4

    sub-float/2addr v14, v15

    aput v14, v13, v4

    aget v14, v11, v8

    aget v15, v12, v8

    sub-float/2addr v14, v15

    aput v14, v13, v8

    .line 231
    .local v13, "b":[F
    new-array v10, v10, [F

    aput v7, v10, v4

    aput v9, v10, v8

    .line 234
    .local v10, "disp":[F
    invoke-static {v13}, Lcom/android/camera/crop/GeometryMathUtils;->normalize([F)[F

    move-result-object v14

    .line 235
    .local v14, "bUnit":[F
    invoke-static {v10, v14}, Lcom/android/camera/crop/GeometryMathUtils;->scalarProjection([F[F)F

    move-result v15

    .line 236
    .local v15, "sp":F
    aget v4, v14, v4

    mul-float/2addr v4, v15

    .line 237
    .end local v7    # "dx":F
    .local v4, "dx":F
    aget v7, v14, v8

    mul-float/2addr v7, v15

    .line 238
    .end local v9    # "dy":F
    .local v7, "dy":F
    invoke-static {v3, v6, v4, v7}, Lcom/android/camera/crop/CropObject;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v9

    .line 240
    .local v9, "newCrop":Landroid/graphics/RectF;
    iget-object v8, v0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v8, v9}, Lcom/android/camera/crop/BoundedRect;->fixedAspectResizeInner(Landroid/graphics/RectF;)V

    .line 241
    .end local v9    # "newCrop":Landroid/graphics/RectF;
    .end local v10    # "disp":[F
    .end local v11    # "l1":[F
    .end local v12    # "l2":[F
    .end local v13    # "b":[F
    .end local v14    # "bUnit":[F
    .end local v15    # "sp":F
    goto :goto_0

    .line 242
    .end local v4    # "dx":F
    .local v7, "dx":F
    .local v9, "dy":F
    :cond_8
    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_9

    .line 243
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v7

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 245
    :cond_9
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_a

    .line 246
    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v9

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 248
    :cond_a
    and-int/lit8 v4, v6, 0x4

    if-eqz v4, :cond_b

    .line 249
    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v7

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 251
    :cond_b
    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_c

    .line 252
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v9

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 254
    :cond_c
    iget-object v4, v0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v4, v3}, Lcom/android/camera/crop/BoundedRect;->resizeInner(Landroid/graphics/RectF;)V

    .line 257
    .end local v7    # "dx":F
    .end local v9    # "dy":F
    :goto_0
    const/4 v4, 0x1

    return v4
.end method

.method public resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "inner"    # Landroid/graphics/RectF;
    .param p2, "outer"    # Landroid/graphics/RectF;

    .line 56
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/camera/crop/BoundedRect;->resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 57
    return-void
.end method

.method public rotateOuter(I)V
    .locals 2
    .param p1, "angle"    # I

    .line 84
    rem-int/lit16 v0, p1, 0x168

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/crop/CropObject;->mRotation:F

    .line 85
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    iget v1, p0, Lcom/android/camera/crop/CropObject;->mRotation:F

    invoke-virtual {v0, v1}, Lcom/android/camera/crop/BoundedRect;->setRotation(F)V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/crop/CropObject;->clearSelectState()V

    .line 87
    return-void
.end method

.method public selectEdge(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/camera/crop/CropObject;->calculateSelectedEdge(FF)I

    move-result v0

    .line 177
    .local v0, "edgeSelected":I
    iget-boolean v1, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v1, :cond_0

    .line 178
    invoke-static {v0}, Lcom/android/camera/crop/CropObject;->fixEdgeToCorner(I)I

    move-result v0

    .line 180
    :cond_0
    if-nez v0, :cond_1

    .line 181
    const/4 v1, 0x0

    return v1

    .line 183
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/crop/CropObject;->selectEdge(I)Z

    move-result v1

    return v1
.end method

.method public selectEdge(I)Z
    .locals 2
    .param p1, "edge"    # I

    .line 161
    invoke-static {p1}, Lcom/android/camera/crop/CropObject;->checkValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/crop/CropObject;->checkCorner(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/crop/CropObject;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad corner selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/camera/crop/CropObject;->mMovingEdges:I

    .line 172
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad edge selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInnerAspectRatio(FF)Z
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 90
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/android/camera/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 94
    .local v0, "inner":Landroid/graphics/RectF;
    invoke-static {v0, p1, p2}, Lcom/android/camera/crop/CropMath;->fixAspectRatioContained(Landroid/graphics/RectF;FF)V

    .line 95
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/android/camera/crop/CropObject;->mMinSideSize:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/android/camera/crop/CropObject;->mMinSideSize:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iput p1, p0, Lcom/android/camera/crop/CropObject;->mAspectWidth:F

    .line 99
    iput p2, p0, Lcom/android/camera/crop/CropObject;->mAspectHeight:F

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    .line 101
    iget-object v2, p0, Lcom/android/camera/crop/CropObject;->mBoundedRect:Lcom/android/camera/crop/BoundedRect;

    invoke-virtual {v2, v0}, Lcom/android/camera/crop/BoundedRect;->setInner(Landroid/graphics/RectF;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/crop/CropObject;->clearSelectState()V

    .line 103
    return v1

    .line 96
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 91
    .end local v0    # "inner":Landroid/graphics/RectF;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and Height must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinInnerSideSize(F)V
    .locals 2
    .param p1, "minSide"    # F

    .line 114
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 117
    iput p1, p0, Lcom/android/camera/crop/CropObject;->mMinSideSize:F

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Min dide must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTouchTolerance(F)V
    .locals 2
    .param p1, "tolerance"    # F

    .line 107
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 110
    iput p1, p0, Lcom/android/camera/crop/CropObject;->mTouchTolerance:F

    .line 111
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsetAspectRatio()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/crop/CropObject;->mFixAspectRatio:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/crop/CropObject;->clearSelectState()V

    .line 123
    return-void
.end method

.method public wouldSelectEdge(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/camera/crop/CropObject;->calculateSelectedEdge(FF)I

    move-result v0

    .line 154
    .local v0, "edgeSelected":I
    if-eqz v0, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
