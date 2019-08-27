.class Lcom/android/camera/GraphView;
.super Landroid/view/View;
.source "PhotoModule.java"


# static fields
.field private static final STATS_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "GraphView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintRect:Landroid/graphics/Paint;

.field private mPhotoModule:Lcom/android/camera/PhotoModule;

.field private mScale:F

.field private mWidth:F

.field private scaled:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 6572
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6558
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    .line 6559
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    .line 6560
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 6561
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/camera/GraphView;->mScale:F

    .line 6574
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 6575
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6576
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6577
    return-void
.end method


# virtual methods
.method public PreviewChanged()V
    .locals 0

    .line 6650
    invoke-virtual {p0}, Lcom/android/camera/GraphView;->invalidate()V

    .line 6651
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v1, p0

    .line 6588
    const-string v0, "GraphView"

    const-string v2, "in Camera.java ondraw"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    iget-object v0, v1, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 6594
    :cond_0
    iget-object v0, v1, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 6595
    iget-object v8, v1, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    .line 6596
    .local v8, "paint":Landroid/graphics/Paint;
    iget-object v9, v1, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 6597
    .local v9, "cavas":Landroid/graphics/Canvas;
    const/high16 v10, 0x40a00000    # 5.0f

    .line 6598
    .local v10, "border":F
    iget v0, v1, Lcom/android/camera/GraphView;->mHeight:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v11, v0, v2

    .line 6599
    .local v11, "graphheight":F
    iget v0, v1, Lcom/android/camera/GraphView;->mWidth:F

    sub-float v12, v0, v2

    .line 6601
    .local v12, "graphwidth":F
    const/4 v13, 0x0

    .line 6602
    .local v13, "bargap":F
    const/high16 v0, 0x43800000    # 256.0f

    div-float v14, v12, v0

    .line 6604
    .local v14, "barwidth":F
    const v2, -0x555556

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6605
    const/high16 v2, -0x1000000

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6607
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

    .line 6608
    mul-int v2, v17, v7

    int-to-float v2, v2

    add-float v16, v2, v18

    .line 6609
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

    .line 6607
    .end local v16    # "y":F
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 6611
    .end local v2    # "k":I
    :cond_1
    move v2, v15

    .local v2, "j":I
    :goto_1
    move v7, v2

    .end local v2    # "j":I
    .local v7, "j":I
    int-to-float v2, v7

    div-float v3, v12, v16

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 6612
    mul-int v2, v17, v7

    int-to-float v2, v2

    add-float v19, v2, v18

    .line 6613
    .local v19, "x":F
    const/high16 v4, 0x40a00000    # 5.0f

    add-float v6, v11, v18

    move-object v2, v9

    move/from16 v3, v19

    move/from16 v5, v19

    move/from16 v20, v7

    move-object v7, v8

    .end local v7    # "j":I
    .local v20, "j":I
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6611
    .end local v19    # "x":F
    add-int/lit8 v2, v20, 0x1

    .end local v20    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .line 6615
    .end local v2    # "j":I
    :cond_2
    sget-object v16, Lcom/android/camera/PhotoModule;->statsdata:[I

    monitor-enter v16

    .line 6618
    const/high16 v2, -0x80000000

    .line 6619
    .local v2, "maxValue":I
    :try_start_0
    sget-object v3, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v3, v3, v15

    const/16 v7, 0x100

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 6620
    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "maxValue":I
    :goto_2
    if-gt v2, v7, :cond_4

    .line 6621
    sget-object v5, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v5, v5, v2

    if-ge v3, v5, :cond_3

    .line 6622
    sget-object v5, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v5, v5, v2

    move v3, v5

    .line 6620
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6628
    .end local v2    # "i":I
    .end local v3    # "maxValue":I
    .local v15, "maxValue":I
    :cond_4
    :goto_3
    move v15, v3

    goto :goto_4

    .line 6626
    .end local v15    # "maxValue":I
    .local v2, "maxValue":I
    :cond_5
    sget-object v3, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v3, v3, v15

    .end local v2    # "maxValue":I
    .restart local v3    # "maxValue":I
    goto :goto_3

    .line 6628
    .end local v3    # "maxValue":I
    .restart local v15    # "maxValue":I
    :goto_4
    int-to-float v2, v15

    iput v2, v1, Lcom/android/camera/GraphView;->mScale:F

    .line 6629
    nop

    .local v4, "i":I
    :goto_5
    move v6, v4

    .end local v4    # "i":I
    .local v6, "i":I
    if-gt v6, v7, :cond_7

    .line 6630
    sget-object v2, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v2, v2, v6

    int-to-float v2, v2

    iget v3, v1, Lcom/android/camera/GraphView;->mScale:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/android/camera/GraphView;->scaled:F

    .line 6631
    iget v2, v1, Lcom/android/camera/GraphView;->scaled:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_6

    .line 6632
    iput v0, v1, Lcom/android/camera/GraphView;->scaled:F

    .line 6633
    :cond_6
    add-int/lit8 v2, v6, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v13

    int-to-float v3, v6

    mul-float/2addr v3, v14

    add-float/2addr v2, v3

    add-float v17, v2, v18

    .line 6634
    .local v17, "left":F
    add-float v19, v11, v18

    .line 6635
    .local v19, "top":F
    add-float v20, v17, v14

    .line 6636
    .local v20, "right":F
    iget v2, v1, Lcom/android/camera/GraphView;->scaled:F

    sub-float v21, v19, v2

    .line 6637
    .local v21, "bottom":F
    iget-object v5, v1, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    move-object v2, v9

    move/from16 v3, v17

    move/from16 v4, v19

    move-object/from16 v22, v5

    move/from16 v5, v20

    move/from16 v23, v6

    move/from16 v6, v21

    .end local v6    # "i":I
    .local v23, "i":I
    move/from16 v24, v7

    move-object/from16 v7, v22

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6629
    add-int/lit8 v4, v23, 0x1

    .end local v23    # "i":I
    .restart local v4    # "i":I
    move/from16 v7, v24

    goto :goto_5

    .line 6639
    .end local v4    # "i":I
    .end local v15    # "maxValue":I
    .end local v17    # "left":F
    .end local v19    # "top":F
    .end local v20    # "right":F
    .end local v21    # "bottom":F
    :cond_7
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6640
    iget-object v0, v1, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

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
    goto :goto_7

    .line 6639
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

    :goto_6
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 6642
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "cavas":Landroid/graphics/Canvas;
    .end local v10    # "border":F
    .end local v11    # "graphheight":F
    .end local v12    # "graphwidth":F
    .end local v13    # "bargap":F
    .end local v14    # "barwidth":F
    :cond_8
    move-object/from16 v4, p1

    :goto_7
    iget-object v0, v1, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_9

    .line 6643
    iget-object v0, v1, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->getCamera()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 6644
    iget-object v0, v1, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    .line 6645
    iget-object v0, v1, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->sendHistogramData()V

    .line 6648
    :cond_9
    return-void

    .line 6590
    :cond_a
    :goto_8
    move-object/from16 v4, p1

    const-string v0, "GraphView"

    const-string v2, "returning as histogram is off "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 6580
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 6581
    iget-object v0, p0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6582
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/GraphView;->mWidth:F

    .line 6583
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/GraphView;->mHeight:F

    .line 6584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6585
    return-void
.end method

.method public setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "photoModule"    # Lcom/android/camera/PhotoModule;

    .line 6653
    iput-object p1, p0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 6654
    return-void
.end method
