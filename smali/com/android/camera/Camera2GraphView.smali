.class Lcom/android/camera/Camera2GraphView;
.super Landroid/view/View;
.source "CaptureModule.java"


# static fields
.field private static final STATS_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "GraphView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCaptureModule:Lcom/android/camera/CaptureModule;

.field private mEnd:I

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintRect:Landroid/graphics/Paint;

.field private mScale:F

.field private mStart:I

.field private mWidth:F

.field private scaled:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 5618
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5604
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaint:Landroid/graphics/Paint;

    .line 5605
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    .line 5606
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 5607
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/camera/Camera2GraphView;->mScale:F

    .line 5620
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 5621
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5622
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5623
    return-void
.end method


# virtual methods
.method public PreviewChanged()V
    .locals 0

    .line 5689
    invoke-virtual {p0}, Lcom/android/camera/Camera2GraphView;->invalidate()V

    .line 5690
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v1, p0

    .line 5640
    iget-object v0, v1, Lcom/android/camera/Camera2GraphView;->mCaptureModule:Lcom/android/camera/CaptureModule;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/camera/Camera2GraphView;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mHiston:Z

    if-nez v0, :cond_0

    .line 5641
    const-string v0, "GraphView"

    const-string v2, "returning as histogram is off "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    return-void

    .line 5645
    :cond_0
    iget-object v0, v1, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 5646
    iget-object v8, v1, Lcom/android/camera/Camera2GraphView;->mPaint:Landroid/graphics/Paint;

    .line 5647
    .local v8, "paint":Landroid/graphics/Paint;
    iget-object v9, v1, Lcom/android/camera/Camera2GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 5648
    .local v9, "cavas":Landroid/graphics/Canvas;
    const/high16 v10, 0x40a00000    # 5.0f

    .line 5649
    .local v10, "border":F
    iget v0, v1, Lcom/android/camera/Camera2GraphView;->mHeight:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v11, v0, v2

    .line 5650
    .local v11, "graphheight":F
    iget v0, v1, Lcom/android/camera/Camera2GraphView;->mWidth:F

    sub-float v12, v0, v2

    .line 5652
    .local v12, "graphwidth":F
    const/4 v13, 0x0

    .line 5653
    .local v13, "bargap":F
    const/high16 v0, 0x43800000    # 256.0f

    div-float v14, v12, v0

    .line 5655
    .local v14, "barwidth":F
    const v2, -0x555556

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5656
    const/high16 v2, -0x1000000

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5658
    const/4 v15, 0x0

    move v2, v15

    .local v2, "k":I
    :goto_0
    move v7, v2

    .end local v2    # "k":I
    .local v7, "k":I
    int-to-float v2, v7

    const/high16 v16, 0x42000000    # 32.0f

    div-float v3, v11, v16

    cmpg-float v2, v2, v3

    const/16 v17, 0x20

    const/high16 v18, 0x40a00000    # 5.0f

    if-gtz v2, :cond_1

    .line 5659
    mul-int v2, v17, v7

    int-to-float v2, v2

    add-float v16, v2, v18

    .line 5660
    .local v16, "y":F
    const/high16 v3, 0x40a00000    # 5.0f

    add-float v5, v12, v18

    move-object v2, v9

    move/from16 v4, v16

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v8

    .end local v7    # "k":I
    .local v17, "k":I
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5658
    .end local v16    # "y":F
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 5662
    .end local v2    # "k":I
    :cond_1
    nop

    .local v15, "j":I
    :goto_1
    int-to-float v2, v15

    div-float v3, v12, v16

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 5663
    mul-int v2, v17, v15

    int-to-float v2, v2

    add-float v19, v2, v18

    .line 5664
    .local v19, "x":F
    const/high16 v4, 0x40a00000    # 5.0f

    add-float v6, v11, v18

    move-object v2, v9

    move/from16 v3, v19

    move/from16 v5, v19

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5662
    .end local v19    # "x":F
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 5666
    .end local v15    # "j":I
    :cond_2
    sget-object v15, Lcom/android/camera/CaptureModule;->statsdata:[I

    monitor-enter v15

    .line 5667
    const/high16 v2, -0x80000000

    .line 5668
    .local v2, "maxValue":I
    :try_start_0
    iget v3, v1, Lcom/android/camera/Camera2GraphView;->mStart:I

    move v7, v2

    .end local v2    # "maxValue":I
    .local v3, "i":I
    .local v7, "maxValue":I
    :goto_2
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    iget v3, v1, Lcom/android/camera/Camera2GraphView;->mEnd:I

    if-ge v2, v3, :cond_4

    .line 5669
    sget-object v3, Lcom/android/camera/CaptureModule;->statsdata:[I

    aget v3, v3, v2

    if-ge v7, v3, :cond_3

    .line 5670
    sget-object v3, Lcom/android/camera/CaptureModule;->statsdata:[I

    aget v3, v3, v2

    .line 5668
    .end local v7    # "maxValue":I
    .local v3, "maxValue":I
    move v7, v3

    .end local v3    # "maxValue":I
    .restart local v7    # "maxValue":I
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_2

    .line 5673
    .end local v3    # "i":I
    :cond_4
    int-to-float v2, v7

    iput v2, v1, Lcom/android/camera/Camera2GraphView;->mScale:F

    .line 5674
    iget v2, v1, Lcom/android/camera/Camera2GraphView;->mStart:I

    .restart local v2    # "i":I
    :goto_3
    move v6, v2

    .end local v2    # "i":I
    .local v6, "i":I
    iget v2, v1, Lcom/android/camera/Camera2GraphView;->mEnd:I

    if-ge v6, v2, :cond_6

    .line 5675
    sget-object v2, Lcom/android/camera/CaptureModule;->statsdata:[I

    aget v2, v2, v6

    int-to-float v2, v2

    iget v3, v1, Lcom/android/camera/Camera2GraphView;->mScale:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/android/camera/Camera2GraphView;->scaled:F

    .line 5676
    iget v2, v1, Lcom/android/camera/Camera2GraphView;->scaled:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_5

    .line 5677
    iput v0, v1, Lcom/android/camera/Camera2GraphView;->scaled:F

    .line 5678
    :cond_5
    iget v2, v1, Lcom/android/camera/Camera2GraphView;->mStart:I

    sub-int v2, v6, v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v13

    iget v3, v1, Lcom/android/camera/Camera2GraphView;->mStart:I

    sub-int v3, v6, v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float/2addr v2, v3

    add-float v16, v2, v18

    .line 5679
    .local v16, "left":F
    add-float v17, v11, v18

    .line 5680
    .local v17, "top":F
    add-float v19, v16, v14

    .line 5681
    .local v19, "right":F
    iget v2, v1, Lcom/android/camera/Camera2GraphView;->scaled:F

    sub-float v20, v17, v2

    .line 5682
    .local v20, "bottom":F
    iget-object v5, v1, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v21, v5

    move/from16 v5, v19

    move/from16 v22, v6

    move/from16 v6, v20

    .end local v6    # "i":I
    .local v22, "i":I
    move/from16 v23, v7

    move-object/from16 v7, v21

    .end local v7    # "maxValue":I
    .local v23, "maxValue":I
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5674
    add-int/lit8 v2, v22, 0x1

    .end local v22    # "i":I
    .restart local v2    # "i":I
    move/from16 v7, v23

    goto :goto_3

    .line 5684
    .end local v2    # "i":I
    .end local v16    # "left":F
    .end local v17    # "top":F
    .end local v19    # "right":F
    .end local v20    # "bottom":F
    .end local v23    # "maxValue":I
    :cond_6
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5685
    iget-object v0, v1, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "cavas":Landroid/graphics/Canvas;
    .end local v10    # "border":F
    .end local v11    # "graphheight":F
    .end local v12    # "graphwidth":F
    .end local v13    # "bargap":F
    .end local v14    # "barwidth":F
    goto :goto_5

    .line 5684
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v9    # "cavas":Landroid/graphics/Canvas;
    .restart local v10    # "border":F
    .restart local v11    # "graphheight":F
    .restart local v12    # "graphwidth":F
    .restart local v13    # "bargap":F
    .restart local v14    # "barwidth":F
    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    :goto_4
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 5687
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "cavas":Landroid/graphics/Canvas;
    .end local v10    # "border":F
    .end local v11    # "graphheight":F
    .end local v12    # "graphwidth":F
    .end local v13    # "bargap":F
    .end local v14    # "barwidth":F
    :cond_7
    move-object/from16 v4, p1

    :goto_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 5632
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 5633
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5634
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/Camera2GraphView;->mWidth:F

    .line 5635
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/Camera2GraphView;->mHeight:F

    .line 5636
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 5637
    return-void
.end method

.method public setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "captureModule"    # Lcom/android/camera/CaptureModule;

    .line 5693
    iput-object p1, p0, Lcom/android/camera/Camera2GraphView;->mCaptureModule:Lcom/android/camera/CaptureModule;

    .line 5694
    return-void
.end method

.method setDataSection(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 5626
    iput p1, p0, Lcom/android/camera/Camera2GraphView;->mStart:I

    .line 5627
    iput p2, p0, Lcom/android/camera/Camera2GraphView;->mEnd:I

    .line 5628
    return-void
.end method
