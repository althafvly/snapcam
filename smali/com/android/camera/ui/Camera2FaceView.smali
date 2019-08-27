.class public Lcom/android/camera/ui/Camera2FaceView;
.super Lcom/android/camera/ui/FaceView;
.source "Camera2FaceView.java"


# instance fields
.field private final blink_threshold:I

.field private mCameraBound:Landroid/graphics/Rect;

.field private mExFaces:[Lcom/android/camera/ExtendedFace;

.field private mFaces:[Landroid/hardware/camera2/params/Face;

.field private mHandler:Landroid/os/Handler;

.field private mPendingExFaces:[Lcom/android/camera/ExtendedFace;

.field private mPendingFaces:[Landroid/hardware/camera2/params/Face;

.field private mZoom:F

.field private final smile_threashold_no_smile:I

.field private final smile_threashold_small_smile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->smile_threashold_no_smile:I

    .line 47
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->smile_threashold_small_smile:I

    .line 48
    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->blink_threshold:I

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    .line 56
    new-instance v0, Lcom/android/camera/ui/Camera2FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/Camera2FaceView$1;-><init>(Lcom/android/camera/ui/Camera2FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/Camera2FaceView;[Landroid/hardware/camera2/params/Face;)[Landroid/hardware/camera2/params/Face;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/Face;

    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/Camera2FaceView;)[Landroid/hardware/camera2/params/Face;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingFaces:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/Camera2FaceView;[Lcom/android/camera/ExtendedFace;)[Lcom/android/camera/ExtendedFace;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;
    .param p1, "x1"    # [Lcom/android/camera/ExtendedFace;

    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/Camera2FaceView;)[Lcom/android/camera/ExtendedFace;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/Camera2FaceView;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingExFaces:[Lcom/android/camera/ExtendedFace;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 341
    iget v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mColor:I

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 343
    iput-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/ui/Camera2FaceView;->invalidate()V

    .line 345
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 50
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 110
    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mBlocked:Z

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v1, v1

    if-lez v1, :cond_1d

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    if-eqz v1, :cond_1d

    .line 112
    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mUncroppedWidth:I

    .line 113
    .local v1, "rw":I
    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mUncroppedHeight:I

    .line 114
    .local v2, "rh":I
    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/16 v10, 0xb4

    if-le v2, v1, :cond_0

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    if-eq v3, v10, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    if-eq v3, v9, :cond_1

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    if-ne v3, v8, :cond_2

    .line 116
    :cond_1
    move v3, v1

    .line 117
    .local v3, "temp":I
    move v1, v2

    .line 118
    move v2, v3

    .line 120
    .end local v1    # "rw":I
    .end local v2    # "rh":I
    .end local v3    # "temp":I
    .local v11, "rw":I
    .local v12, "rh":I
    :cond_2
    move v11, v1

    move v12, v2

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mMirror:Z

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayOrientation:I

    invoke-static {v1, v2, v3, v11, v12}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 124
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v13, v1

    .line 125
    .local v13, "translateMatrix":Landroid/graphics/Matrix;
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v1, v14

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v14

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 126
    int-to-float v1, v12

    int-to-float v2, v11

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v1, v3

    if-nez v1, :cond_3

    .line 127
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 128
    .local v1, "ativeArrayRatio":F
    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v2, v3

    .line 129
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v13, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 131
    .end local v1    # "ativeArrayRatio":F
    .end local v2    # "scale":F
    :cond_3
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float v1, v2, v1

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    invoke-virtual {v13, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 133
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v1

    .line 134
    .local v15, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    iget v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    mul-float/2addr v1, v3

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    iget v4, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    mul-float/2addr v3, v4

    .line 134
    invoke-virtual {v15, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 136
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    iget-object v3, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 136
    invoke-virtual {v15, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Camera2FaceView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v11

    const/16 v16, 0x2

    div-int/lit8 v6, v1, 0x2

    .line 140
    .local v6, "dx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/Camera2FaceView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v12

    div-int/lit8 v5, v1, 0x2

    .line 144
    .local v5, "dy":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 146
    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "extendFaceSize":I
    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    const/16 v17, 0x0

    if-nez v2, :cond_4

    move/from16 v2, v17

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    array-length v2, v2

    :goto_0
    move v4, v2

    .line 153
    .end local v1    # "extendFaceSize":I
    .local v4, "extendFaceSize":I
    move/from16 v1, v17

    .local v1, "i":I
    :goto_1
    move v3, v1

    .end local v1    # "i":I
    .local v3, "i":I
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v1, v1

    if-ge v3, v1, :cond_1c

    .line 154
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_5

    .line 153
    move/from16 v25, v3

    move/from16 v34, v4

    move-object v3, v7

    move/from16 v19, v8

    move/from16 v21, v9

    move/from16 v27, v10

    move/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v41, v13

    move-object v7, v15

    move v12, v5

    move v11, v6

    goto/16 :goto_11

    .line 155
    :cond_5
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 156
    .local v2, "faceBound":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v8, v0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    invoke-virtual {v2, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 157
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 158
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 159
    iget-boolean v1, v0, Lcom/android/camera/ui/Camera2FaceView;->LOGV:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    const-string v8, "Original rect"

    invoke-static {v1, v8}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 160
    :cond_6
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 161
    iget-boolean v1, v0, Lcom/android/camera/ui/Camera2FaceView;->LOGV:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    const-string v8, "Transformed rect"

    invoke-static {v1, v8}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 162
    :cond_7
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/android/camera/ui/Camera2FaceView;->mColor:I

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v8, v6

    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 165
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v8, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v8, v1, v8

    .line 166
    .local v8, "rectHeight":F
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v9, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, v9

    .line 167
    .local v9, "rectWidth":F
    cmpl-float v1, v8, v9

    if-lez v1, :cond_8

    move v1, v9

    goto :goto_2

    :cond_8
    move v1, v8

    :goto_2
    move/from16 v20, v1

    .line 169
    .local v20, "diameter":F
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v10, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    move/from16 v22, v8

    div-float v8, v20, v14

    .end local v8    # "rectHeight":F
    .local v22, "rectHeight":F
    iget-object v14, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10, v8, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    if-ge v3, v4, :cond_1b

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1b

    .line 172
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    aget-object v8, v1, v3

    .line 173
    .local v8, "exFace":Lcom/android/camera/ExtendedFace;
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object v10, v1, v3

    .line 174
    .local v10, "face":Landroid/hardware/camera2/params/Face;
    const/4 v1, 0x4

    new-array v14, v1, [F

    .line 175
    .local v14, "point":[F
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xc

    .line 176
    .local v1, "delta_x":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v23

    move-object/from16 v24, v2

    div-int/lit8 v2, v23, 0xc

    .line 178
    .local v2, "delta_y":I
    .local v24, "faceBound":Landroid/graphics/Rect;
    move/from16 v25, v3

    int-to-float v3, v1

    .end local v3    # "i":I
    .local v25, "i":I
    move/from16 v26, v1

    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    .end local v1    # "delta_x":I
    .local v26, "delta_x":I
    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 179
    .end local v26    # "delta_x":I
    .local v3, "delta_x":I
    int-to-float v1, v2

    move/from16 v27, v2

    iget v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    .end local v2    # "delta_y":I
    .local v27, "delta_y":I
    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 181
    .end local v27    # "delta_y":I
    .restart local v2    # "delta_y":I
    const-string v1, "CAM_FaceView"

    move/from16 v28, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "extendFaceSize":I
    .local v28, "extendFaceSize":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v9

    const-string v9, "blink: ("

    .end local v9    # "rectWidth":F
    .local v29, "rectWidth":F
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getLeyeBlink()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getReyeBlink()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    const/16 v9, 0x3c

    const/16 v23, 0x3

    const/16 v26, 0x1

    if-eqz v1, :cond_b

    .line 184
    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_9

    goto :goto_3

    .line 191
    :cond_9
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, v14, v17

    .line 192
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v14, v26

    .line 193
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, v14, v16

    .line 194
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v14, v23

    goto :goto_4

    .line 186
    :cond_a
    :goto_3
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v14, v17

    .line 187
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, v14, v26

    .line 188
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v14, v16

    .line 189
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, v14, v23

    .line 196
    :goto_4
    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 197
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 198
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getLeyeBlink()I

    move-result v1

    if-lt v1, v9, :cond_b

    .line 199
    aget v1, v14, v17

    int-to-float v4, v6

    add-float/2addr v4, v1

    aget v1, v14, v26

    int-to-float v9, v5

    add-float/2addr v9, v1

    aget v1, v14, v16

    move/from16 v30, v2

    int-to-float v2, v6

    .end local v2    # "delta_y":I
    .local v30, "delta_y":I
    add-float v27, v1, v2

    aget v1, v14, v23

    int-to-float v2, v5

    add-float v31, v1, v2

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object v1, v7

    move-object/from16 v32, v2

    move v2, v4

    move/from16 v33, v3

    move v3, v9

    .end local v3    # "delta_x":I
    .local v33, "delta_x":I
    move/from16 v9, v28

    move/from16 v4, v27

    .end local v28    # "extendFaceSize":I
    .local v9, "extendFaceSize":I
    move/from16 v34, v9

    move v9, v5

    move/from16 v5, v31

    .end local v5    # "dy":I
    .local v9, "dy":I
    .local v34, "extendFaceSize":I
    move/from16 v35, v11

    move v11, v6

    move-object/from16 v6, v32

    .end local v6    # "dx":I
    .local v11, "dx":I
    .local v35, "rw":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 203
    .end local v9    # "dy":I
    .end local v30    # "delta_y":I
    .end local v33    # "delta_x":I
    .end local v34    # "extendFaceSize":I
    .end local v35    # "rw":I
    .restart local v2    # "delta_y":I
    .restart local v3    # "delta_x":I
    .restart local v5    # "dy":I
    .restart local v6    # "dx":I
    .local v11, "rw":I
    .restart local v28    # "extendFaceSize":I
    :cond_b
    move/from16 v30, v2

    move/from16 v33, v3

    move v9, v5

    move/from16 v35, v11

    move/from16 v34, v28

    move v11, v6

    .end local v2    # "delta_y":I
    .end local v3    # "delta_x":I
    .end local v5    # "dy":I
    .end local v6    # "dx":I
    .end local v28    # "extendFaceSize":I
    .restart local v9    # "dy":I
    .local v11, "dx":I
    .restart local v30    # "delta_y":I
    .restart local v33    # "delta_x":I
    .restart local v34    # "extendFaceSize":I
    .restart local v35    # "rw":I
    :goto_5
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 204
    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-ne v1, v6, :cond_c

    goto :goto_6

    .line 211
    :cond_c
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v33, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v14, v17

    .line 212
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v14, v26

    .line 213
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v33, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v14, v16

    .line 214
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v14, v23

    goto :goto_7

    .line 206
    :cond_d
    const/16 v6, 0xb4

    :goto_6
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v14, v17

    .line 207
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v30, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v14, v26

    .line 208
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v14, v16

    .line 209
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v30, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v14, v23

    .line 216
    :goto_7
    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 217
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 218
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getReyeBlink()I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_e

    .line 220
    aget v1, v14, v17

    int-to-float v2, v11

    add-float/2addr v2, v1

    aget v1, v14, v26

    int-to-float v3, v9

    add-float/2addr v3, v1

    aget v1, v14, v16

    int-to-float v4, v11

    add-float/2addr v4, v1

    aget v1, v14, v23

    int-to-float v5, v9

    add-float/2addr v5, v1

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v1

    move-object v1, v7

    move/from16 v27, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 225
    :cond_e
    move/from16 v27, v6

    goto :goto_8

    :cond_f
    const/16 v27, 0xb4

    :goto_8
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getLeftrightGaze()I

    move-result v1

    if-nez v1, :cond_11

    .line 226
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getTopbottomGaze()I

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_9

    .line 293
    :cond_10
    move/from16 v40, v12

    move-object/from16 v41, v13

    move-object v13, v14

    move-object v7, v15

    const/16 v19, 0x10e

    const/16 v21, 0x5a

    move v12, v9

    goto/16 :goto_f

    .line 228
    :cond_11
    :goto_9
    nop

    .line 229
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    .line 230
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 231
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    .line 232
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v5, v1, v3

    .line 233
    .local v5, "length":D
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getLeftrightGaze()I

    move-result v1

    neg-int v1, v1

    int-to-double v3, v1

    .line 234
    .local v3, "nGazeYaw":D
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getTopbottomGaze()I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    .line 235
    .local v1, "nGazePitch":D
    const-wide v31, 0x4066800000000000L    # 180.0

    div-double v36, v3, v31

    const-wide v38, 0x400921fb54442d18L    # Math.PI

    move/from16 v40, v12

    move-object/from16 v41, v13

    mul-double v12, v36, v38

    .line 236
    .end local v12    # "rh":I
    .end local v13    # "translateMatrix":Landroid/graphics/Matrix;
    .local v40, "rh":I
    .local v41, "translateMatrix":Landroid/graphics/Matrix;
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    neg-double v12, v12

    .line 237
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v43, v14

    move-object/from16 v42, v15

    int-to-double v14, v7

    .end local v14    # "point":[F
    .end local v15    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v42, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v43, "point":[F
    div-double v14, v14, v31

    mul-double v14, v14, v38

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    div-double v14, v1, v31

    mul-double v14, v14, v38

    .line 239
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double v36, v3, v31

    move/from16 v45, v9

    move-object/from16 v44, v10

    mul-double v9, v36, v38

    .line 240
    .end local v9    # "dy":I
    .end local v10    # "face":Landroid/hardware/camera2/params/Face;
    .local v44, "face":Landroid/hardware/camera2/params/Face;
    .local v45, "dy":I
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    .line 241
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v7

    neg-int v7, v7

    int-to-double v9, v7

    div-double v9, v9, v31

    mul-double v9, v9, v38

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    add-double/2addr v12, v14

    neg-double v9, v5

    mul-double/2addr v12, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v9

    double-to-float v7, v12

    .line 244
    .local v7, "gazeRollX":F
    neg-double v12, v3

    div-double v12, v12, v31

    mul-double v12, v12, v38

    .line 245
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 246
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v14

    neg-int v14, v14

    int-to-double v14, v14

    div-double v14, v14, v31

    mul-double v14, v14, v38

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    div-double v14, v1, v31

    mul-double v14, v14, v38

    .line 248
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double v36, v3, v31

    mul-double v9, v36, v38

    .line 249
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    .line 250
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v9

    neg-int v9, v9

    int-to-double v9, v9

    div-double v9, v9, v31

    mul-double v9, v9, v38

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    sub-double/2addr v12, v14

    neg-double v9, v5

    mul-double/2addr v12, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v9

    double-to-float v9, v12

    .line 254
    .local v9, "gazeRollY":F
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getLeyeBlink()I

    move-result v10

    const/16 v12, 0x3c

    if-ge v10, v12, :cond_14

    .line 255
    iget v10, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v12, 0x5a

    if-eq v10, v12, :cond_13

    iget v10, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v12, 0x10e

    if-ne v10, v12, :cond_12

    .line 257
    move-object/from16 v10, v44

    goto :goto_a

    .line 262
    :cond_12
    move-object/from16 v10, v44

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    .end local v44    # "face":Landroid/hardware/camera2/params/Face;
    .restart local v10    # "face":Landroid/hardware/camera2/params/Face;
    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    aput v12, v43, v17

    .line 263
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    aput v12, v43, v26

    .line 264
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    add-float/2addr v12, v9

    aput v12, v43, v16

    .line 265
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    aput v12, v43, v23

    goto :goto_b

    .line 257
    .end local v10    # "face":Landroid/hardware/camera2/params/Face;
    .restart local v44    # "face":Landroid/hardware/camera2/params/Face;
    :cond_13
    move-object/from16 v10, v44

    .end local v44    # "face":Landroid/hardware/camera2/params/Face;
    .restart local v10    # "face":Landroid/hardware/camera2/params/Face;
    :goto_a
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    aput v12, v43, v17

    .line 258
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    aput v12, v43, v26

    .line 259
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    aput v12, v43, v16

    .line 260
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    add-float/2addr v12, v9

    aput v12, v43, v23

    .line 267
    :goto_b
    move-object/from16 v12, v42

    move-object/from16 v13, v43

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 268
    .end local v42    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .end local v43    # "point":[F
    .local v12, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v13, "point":[F
    iget-object v14, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 269
    aget v14, v13, v17

    int-to-float v15, v11

    add-float/2addr v14, v15

    aget v15, v13, v26

    move-wide/from16 v47, v1

    move-object/from16 v46, v12

    move/from16 v12, v45

    int-to-float v1, v12

    .end local v1    # "nGazePitch":D
    .end local v45    # "dy":I
    .local v12, "dy":I
    .local v46, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v47, "nGazePitch":D
    add-float/2addr v15, v1

    aget v1, v13, v16

    int-to-float v2, v11

    add-float v21, v1, v2

    aget v1, v13, v23

    int-to-float v2, v12

    add-float v28, v1, v2

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-wide/from16 v31, v47

    move-object/from16 v1, p1

    .end local v47    # "nGazePitch":D
    .local v31, "nGazePitch":D
    move-object/from16 v36, v2

    move v2, v14

    move-wide/from16 v37, v3

    move v3, v15

    .end local v3    # "nGazeYaw":D
    .local v37, "nGazeYaw":D
    move/from16 v4, v21

    move-wide v14, v5

    move/from16 v5, v28

    .end local v5    # "length":D
    .local v14, "length":D
    move-object/from16 v6, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 273
    .end local v10    # "face":Landroid/hardware/camera2/params/Face;
    .end local v12    # "dy":I
    .end local v13    # "point":[F
    .end local v14    # "length":D
    .end local v31    # "nGazePitch":D
    .end local v37    # "nGazeYaw":D
    .end local v46    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .restart local v1    # "nGazePitch":D
    .restart local v3    # "nGazeYaw":D
    .restart local v5    # "length":D
    .restart local v42    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .restart local v43    # "point":[F
    .restart local v44    # "face":Landroid/hardware/camera2/params/Face;
    .restart local v45    # "dy":I
    :cond_14
    move-wide/from16 v31, v1

    move-wide/from16 v37, v3

    move-wide v14, v5

    move-object/from16 v46, v42

    move-object/from16 v13, v43

    move-object/from16 v10, v44

    move/from16 v12, v45

    .end local v1    # "nGazePitch":D
    .end local v3    # "nGazeYaw":D
    .end local v5    # "length":D
    .end local v42    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .end local v43    # "point":[F
    .end local v44    # "face":Landroid/hardware/camera2/params/Face;
    .end local v45    # "dy":I
    .restart local v10    # "face":Landroid/hardware/camera2/params/Face;
    .restart local v12    # "dy":I
    .restart local v13    # "point":[F
    .restart local v14    # "length":D
    .restart local v31    # "nGazePitch":D
    .restart local v37    # "nGazeYaw":D
    .restart local v46    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    :goto_c
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getReyeBlink()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_17

    .line 274
    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v1, v6, :cond_16

    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    const/16 v5, 0x10e

    if-ne v1, v5, :cond_15

    goto :goto_d

    .line 281
    :cond_15
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v13, v17

    .line 282
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v13, v26

    .line 283
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v9

    aput v1, v13, v16

    .line 284
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    aput v1, v13, v23

    goto :goto_e

    .line 276
    :cond_16
    const/16 v5, 0x10e

    :goto_d
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v13, v17

    .line 277
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v13, v26

    .line 278
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    aput v1, v13, v16

    .line 279
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v9

    aput v1, v13, v23

    .line 286
    :goto_e
    move-object/from16 v4, v46

    invoke-virtual {v4, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 287
    .end local v46    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v4, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 288
    aget v1, v13, v17

    int-to-float v2, v11

    add-float/2addr v2, v1

    aget v1, v13, v26

    int-to-float v3, v12

    add-float/2addr v3, v1

    aget v1, v13, v16

    int-to-float v5, v11

    add-float/2addr v5, v1

    aget v1, v13, v23

    int-to-float v6, v12

    add-float/2addr v6, v1

    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v49, v7

    move-object v7, v4

    move v4, v5

    .end local v4    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v7, "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v49, "gazeRollX":F
    const/16 v19, 0x10e

    move v5, v6

    const/16 v21, 0x5a

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v9    # "gazeRollY":F
    .end local v14    # "length":D
    .end local v31    # "nGazePitch":D
    .end local v37    # "nGazeYaw":D
    .end local v49    # "gazeRollX":F
    goto :goto_f

    .line 293
    .end local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .restart local v46    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    :cond_17
    move-object/from16 v7, v46

    const/16 v19, 0x10e

    const/16 v21, 0x5a

    .end local v46    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .restart local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    :goto_f
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 294
    const-string v1, "CAM_FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getSmileDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getSmileConfidence()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getSmileDegree()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_18

    .line 297
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v11

    sub-int v1, v1, v33

    int-to-float v1, v1

    aput v1, v13, v17

    .line 298
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v13, v26

    .line 299
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v11

    add-int v1, v1, v33

    int-to-float v1, v1

    aput v1, v13, v16

    .line 300
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v13, v23

    .line 301
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v1

    .line 302
    .local v9, "faceMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getRollDirection()I

    move-result v1

    int-to-float v1, v1

    .line 303
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 302
    invoke-virtual {v9, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 304
    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 305
    invoke-virtual {v7, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 306
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 307
    aget v1, v13, v17

    int-to-float v2, v11

    add-float/2addr v2, v1

    aget v1, v13, v26

    int-to-float v3, v12

    add-float/2addr v3, v1

    aget v1, v13, v16

    int-to-float v4, v11

    add-float/2addr v4, v1

    aget v1, v13, v23

    int-to-float v5, v12

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 309
    .end local v9    # "faceMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_10

    :cond_18
    invoke-virtual {v8}, Lcom/android/camera/ExtendedFace;->getSmileDegree()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_19

    .line 311
    iget v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mDisplayRotation:I

    rsub-int v9, v1, 0x168

    .line 312
    .local v9, "rotation_mouth":I
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, v2, v33

    int-to-float v2, v2

    .line 313
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v3, v30

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v4, v4, v33

    int-to-float v4, v4

    .line 314
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v5, v5, v30

    int-to-float v5, v5

    .line 312
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 315
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 316
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 317
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 318
    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v9

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 320
    .end local v9    # "rotation_mouth":I
    goto :goto_10

    .line 321
    :cond_19
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, v2, v33

    int-to-float v2, v2

    .line 322
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v3, v30

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v4, v4, v33

    int-to-float v4, v4

    .line 323
    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v5, v5, v30

    int-to-float v5, v5

    .line 321
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 324
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 325
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 326
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 327
    iget-object v1, v0, Lcom/android/camera/ui/Camera2FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/ui/Camera2FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .end local v8    # "exFace":Lcom/android/camera/ExtendedFace;
    .end local v10    # "face":Landroid/hardware/camera2/params/Face;
    .end local v13    # "point":[F
    .end local v20    # "diameter":F
    .end local v22    # "rectHeight":F
    .end local v24    # "faceBound":Landroid/graphics/Rect;
    .end local v29    # "rectWidth":F
    .end local v30    # "delta_y":I
    .end local v33    # "delta_x":I
    goto :goto_11

    .line 153
    :cond_1a
    :goto_10
    move-object/from16 v3, p1

    goto :goto_11

    .end local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .end local v25    # "i":I
    .end local v34    # "extendFaceSize":I
    .end local v35    # "rw":I
    .end local v40    # "rh":I
    .end local v41    # "translateMatrix":Landroid/graphics/Matrix;
    .local v3, "i":I
    .local v4, "extendFaceSize":I
    .local v5, "dy":I
    .restart local v6    # "dx":I
    .local v11, "rw":I
    .local v12, "rh":I
    .local v13, "translateMatrix":Landroid/graphics/Matrix;
    .restart local v15    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    :cond_1b
    move/from16 v25, v3

    move/from16 v34, v4

    move-object v3, v7

    move/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v41, v13

    move-object v7, v15

    const/16 v19, 0x10e

    const/16 v21, 0x5a

    const/16 v27, 0xb4

    move v12, v5

    move v11, v6

    .end local v3    # "i":I
    .end local v4    # "extendFaceSize":I
    .end local v5    # "dy":I
    .end local v6    # "dx":I
    .end local v13    # "translateMatrix":Landroid/graphics/Matrix;
    .end local v15    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .restart local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v11, "dx":I
    .local v12, "dy":I
    .restart local v25    # "i":I
    .restart local v34    # "extendFaceSize":I
    .restart local v35    # "rw":I
    .restart local v40    # "rh":I
    .restart local v41    # "translateMatrix":Landroid/graphics/Matrix;
    :goto_11
    add-int/lit8 v1, v25, 0x1

    .end local v25    # "i":I
    .local v1, "i":I
    move-object v15, v7

    move v6, v11

    move v5, v12

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v27

    move/from16 v4, v34

    move/from16 v11, v35

    move/from16 v12, v40

    move-object/from16 v13, v41

    const/high16 v14, 0x40000000    # 2.0f

    move-object v7, v3

    goto/16 :goto_1

    .line 332
    .end local v1    # "i":I
    .end local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .end local v34    # "extendFaceSize":I
    .end local v35    # "rw":I
    .end local v40    # "rh":I
    .end local v41    # "translateMatrix":Landroid/graphics/Matrix;
    .restart local v4    # "extendFaceSize":I
    .restart local v5    # "dy":I
    .restart local v6    # "dx":I
    .local v11, "rw":I
    .local v12, "rh":I
    .restart local v13    # "translateMatrix":Landroid/graphics/Matrix;
    .restart local v15    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    :cond_1c
    move/from16 v34, v4

    move-object v3, v7

    move/from16 v35, v11

    move/from16 v40, v12

    move-object/from16 v41, v13

    move-object v7, v15

    move v12, v5

    move v11, v6

    .end local v4    # "extendFaceSize":I
    .end local v5    # "dy":I
    .end local v6    # "dx":I
    .end local v13    # "translateMatrix":Landroid/graphics/Matrix;
    .end local v15    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .restart local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .local v11, "dx":I
    .local v12, "dy":I
    .restart local v34    # "extendFaceSize":I
    .restart local v35    # "rw":I
    .restart local v40    # "rh":I
    .restart local v41    # "translateMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v7    # "bsgcTranslateMatrix":Landroid/graphics/Matrix;
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v34    # "extendFaceSize":I
    .end local v35    # "rw":I
    .end local v40    # "rh":I
    .end local v41    # "translateMatrix":Landroid/graphics/Matrix;
    goto :goto_12

    .line 334
    :cond_1d
    move-object v3, v7

    :goto_12
    invoke-super/range {p0 .. p1}, Lcom/android/camera/ui/FaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    return-void
.end method

.method public setCameraBound(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "cameraBound"    # Landroid/graphics/Rect;

    .line 75
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    .line 76
    return-void
.end method

.method public setFaces([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "extendedFaces"    # [Lcom/android/camera/ExtendedFace;

    .line 83
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CAM_FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mPause:Z

    if-eqz v0, :cond_1

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 86
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, v0

    if-eqz v0, :cond_3

    :cond_2
    array-length v0, p1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 88
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingFaces:[Landroid/hardware/camera2/params/Face;

    .line 89
    iput-object p2, p0, Lcom/android/camera/ui/Camera2FaceView;->mPendingExFaces:[Lcom/android/camera/ExtendedFace;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_4

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    :cond_4
    return-void

    .line 97
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_6

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mStateSwitchPending:Z

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 102
    iput-object p2, p0, Lcom/android/camera/ui/Camera2FaceView;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 103
    iget-boolean v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mBlocked:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length v0, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/Camera2FaceView;->mCameraBound:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/Camera2FaceView;->invalidate()V

    .line 106
    :cond_7
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "zoom"    # F

    .line 79
    iput p1, p0, Lcom/android/camera/ui/Camera2FaceView;->mZoom:F

    .line 80
    return-void
.end method
