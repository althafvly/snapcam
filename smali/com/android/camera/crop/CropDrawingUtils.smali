.class public abstract Lcom/android/camera/crop/CropDrawingUtils;
.super Ljava/lang/Object;
.source "CropDrawingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 55
    return-void
.end method

.method public static drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V
    .locals 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indicatorSize"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 77
    float-to-int v0, p3

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 78
    .local v0, "left":I
    float-to-int v1, p4

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    .line 79
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public static drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cropIndicator"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indicatorSize"    # I
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "fixedAspect"    # Z
    .param p5, "selection"    # I

    .line 85
    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    .local v0, "notMoving":Z
    :goto_0
    if-eqz p4, :cond_8

    .line 87
    const/4 v1, 0x3

    if-eq p5, v1, :cond_1

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 90
    :cond_2
    const/4 v1, 0x6

    if-eq p5, v1, :cond_3

    if-eqz v0, :cond_4

    .line 91
    :cond_3
    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 93
    :cond_4
    const/16 v1, 0x9

    if-eq p5, v1, :cond_5

    if-eqz v0, :cond_6

    .line 94
    :cond_5
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 96
    :cond_6
    const/16 v1, 0xc

    if-eq p5, v1, :cond_7

    if-eqz v0, :cond_10

    .line 97
    :cond_7
    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    goto :goto_1

    .line 100
    :cond_8
    and-int/lit8 v1, p5, 0x2

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    .line 101
    :cond_9
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 103
    :cond_a
    and-int/lit8 v1, p5, 0x8

    if-nez v1, :cond_b

    if-eqz v0, :cond_c

    .line 104
    :cond_b
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 106
    :cond_c
    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_d

    if-eqz v0, :cond_e

    .line 107
    :cond_d
    iget v1, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 109
    :cond_e
    and-int/lit8 v1, p5, 0x4

    if-nez v1, :cond_f

    if-eqz v0, :cond_10

    .line 110
    :cond_f
    iget v1, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 113
    :cond_10
    :goto_1
    return-void
.end method

.method public static drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 14
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    const/16 v1, 0xff

    const/16 v2, 0x80

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float v7, v1, v2

    .line 36
    .local v7, "stepX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v8, v1, v2

    .line 37
    .local v8, "stepY":F
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v7

    .line 38
    .local v1, "x":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float v9, v2, v8

    .line 39
    .local v9, "y":F
    const/4 v10, 0x0

    move v11, v1

    move v1, v10

    .local v1, "i":I
    .local v11, "x":F
    :goto_0
    move v12, v1

    .end local v1    # "i":I
    .local v12, "i":I
    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 40
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, v11

    move v4, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    add-float/2addr v11, v7

    .line 39
    add-int/lit8 v1, v12, 0x1

    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    nop

    .local v10, "j":I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 44
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    move-object v1, p0

    move v3, v9

    move v5, v9

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    add-float/2addr v9, v8

    .line 43
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 47
    .end local v10    # "j":I
    :cond_1
    return-void
.end method

.method public static drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 8
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 59
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 60
    .local v1, "h":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .local v2, "p":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    const/high16 v3, -0x78000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 65
    .local v3, "r":Landroid/graphics/RectF;
    int-to-float v4, v0

    iget v5, p1, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v1

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method public static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "innerBounds"    # Landroid/graphics/RectF;
    .param p3, "outerBounds"    # Landroid/graphics/RectF;

    .line 153
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->top:F

    iget v8, p3, Landroid/graphics/RectF;->right:F

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget v6, p3, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    iget v8, p2, Landroid/graphics/RectF;->left:F

    iget v9, p3, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method public static drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 12
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "spotX"    # F
    .param p3, "spotY"    # F
    .param p4, "p"    # Landroid/graphics/Paint;
    .param p5, "shadowPaint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 117
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p2

    .line 118
    .local v1, "sx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, p3

    .line 119
    .local v2, "sy":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 120
    .local v3, "cx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 121
    .local v4, "cy":F
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v1, v6

    sub-float v7, v3, v7

    div-float v8, v2, v6

    sub-float v8, v4, v8

    div-float v9, v1, v6

    add-float/2addr v9, v3

    div-float v10, v2, v6

    add-float/2addr v10, v4

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 122
    .local v5, "r1":Landroid/graphics/RectF;
    move v7, v1

    .line 123
    .local v7, "temp":F
    move v1, v2

    .line 124
    move v2, v7

    .line 125
    new-instance v8, Landroid/graphics/RectF;

    div-float v9, v1, v6

    sub-float v9, v3, v9

    div-float v10, v2, v6

    sub-float v10, v4, v10

    div-float v11, v1, v6

    add-float/2addr v11, v3

    div-float v6, v2, v6

    add-float/2addr v6, v4

    invoke-direct {v8, v9, v10, v11, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v6, v8

    .line 126
    .local v6, "r2":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 127
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 128
    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 129
    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 130
    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 132
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 133
    .local v9, "path":Landroid/graphics/Path;
    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    iget v10, v5, Landroid/graphics/RectF;->right:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 136
    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    iget v10, v5, Landroid/graphics/RectF;->right:F

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget v10, v5, Landroid/graphics/RectF;->right:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    iget v10, v5, Landroid/graphics/RectF;->right:F

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    iget v10, v6, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget v10, v6, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget v10, v6, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    iget v10, v6, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    move-object/from16 v10, p4

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method public static getBitmapToDisplayMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "imageBounds"    # Landroid/graphics/RectF;
    .param p1, "displayBounds"    # Landroid/graphics/RectF;

    .line 162
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 163
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-static {v0, p0, p1}, Lcom/android/camera/crop/CropDrawingUtils;->setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 164
    return-object v0
.end method

.method public static setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "imageBounds"    # Landroid/graphics/RectF;
    .param p2, "displayBounds"    # Landroid/graphics/RectF;

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 170
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v0

    return v0
.end method

.method public static setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .locals 6
    .param p0, "dst"    # Landroid/graphics/Matrix;
    .param p1, "image"    # Landroid/graphics/RectF;
    .param p2, "screen"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I

    .line 175
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 176
    .local v0, "rotatedImage":Landroid/graphics/RectF;
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 177
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 178
    return v2

    .line 181
    :cond_0
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v0, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v1

    .line 182
    .local v1, "rToR":Z
    int-to-float v3, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result v3

    .line 183
    .local v3, "rot":Z
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method
