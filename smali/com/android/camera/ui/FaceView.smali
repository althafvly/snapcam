.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected final LOGV:Z

.field private final blink_threshold:I

.field protected volatile mBlocked:Z

.field protected mColor:I

.field protected mDisplayOrientation:I

.field protected mDisplayRotation:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private final mFailColor:I

.field private final mFocusedColor:I

.field protected final mFocusingColor:I

.field private mHandler:Landroid/os/Handler;

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMirror:Z

.field protected mOrientation:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPause:Z

.field private mPendingFaces:[Landroid/hardware/Camera$Face;

.field protected mRect:Landroid/graphics/RectF;

.field protected mStateSwitchPending:Z

.field protected mUncroppedHeight:I

.field protected mUncroppedWidth:I

.field private final smile_threashold_no_smile:I

.field private final smile_threashold_small_smile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    nop

    .line 45
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 46
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 72
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/FaceView;->smile_threashold_no_smile:I

    .line 73
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/camera/ui/FaceView;->smile_threashold_small_smile:I

    .line 74
    iput v0, p0, Lcom/android/camera/ui/FaceView;->blink_threshold:I

    .line 78
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    .line 79
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 80
    new-instance v0, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    .line 97
    const v2, 0x7f0a0025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    .line 98
    const v2, 0x7f0a0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    .line 99
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const v3, 0x7f0c0059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FaceView;

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 184
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 187
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 206
    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-lez v1, :cond_19

    .line 208
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mUncroppedWidth:I

    .line 209
    .local v1, "rw":I
    iget v2, v0, Lcom/android/camera/ui/FaceView;->mUncroppedHeight:I

    .line 211
    .local v2, "rh":I
    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/16 v10, 0xb4

    if-le v2, v1, :cond_0

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eq v3, v10, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-eq v3, v9, :cond_1

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    if-ne v3, v8, :cond_2

    .line 213
    :cond_1
    move v3, v1

    .line 214
    .local v3, "temp":I
    move v1, v2

    .line 215
    move v2, v3

    .line 217
    .end local v1    # "rw":I
    .end local v2    # "rh":I
    .end local v3    # "temp":I
    .local v11, "rw":I
    .local v12, "rh":I
    :cond_2
    move v11, v1

    move v12, v2

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, v0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v3, v0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-static {v1, v2, v3, v11, v12}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v11

    const/4 v13, 0x2

    div-int/lit8 v14, v1, 0x2

    .line 219
    .local v14, "dx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v12

    div-int/lit8 v15, v1, 0x2

    .line 223
    .local v15, "dy":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 224
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 225
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 226
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_0
    move v6, v1

    .end local v1    # "i":I
    .local v6, "i":I
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-ge v6, v1, :cond_18

    .line 228
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/hardware/Camera$Face;->score:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    .line 226
    move/from16 v29, v11

    move/from16 v30, v12

    move v11, v13

    move v12, v14

    move v13, v15

    move v15, v8

    move v14, v9

    move v8, v6

    goto/16 :goto_d

    .line 231
    :cond_3
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v6

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 232
    iget-boolean v1, v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const-string v2, "Original rect"

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 233
    :cond_4
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 234
    iget-boolean v1, v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const-string v2, "Transformed rect"

    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 235
    :cond_5
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/camera/ui/FaceView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 237
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->isExtendedFaceInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 240
    const/4 v1, 0x4

    new-array v5, v1, [F

    .line 241
    .local v5, "point":[F
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v17, v1, 0xc

    .line 242
    .local v17, "delta_x":I
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v18, v1, 0xc

    .line 243
    .local v18, "delta_y":I
    const-string v1, "CAM_FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blink: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v6

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v6

    .line 244
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    const/16 v4, 0x3c

    const/16 v19, 0x3

    const/16 v20, 0x1

    if-eqz v1, :cond_8

    .line 246
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    if-ne v1, v10, :cond_6

    goto :goto_1

    .line 253
    :cond_6
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v17, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v5, v16

    .line 254
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v5, v20

    .line 255
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v17, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v5, v13

    .line 256
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v5, v19

    goto :goto_2

    .line 248
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v5, v16

    .line 249
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v18, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v5, v20

    .line 250
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v5, v13

    .line 251
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v18, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v5, v19

    .line 259
    :goto_2
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 260
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    if-lt v1, v4, :cond_8

    .line 261
    aget v1, v5, v16

    int-to-float v2, v14

    add-float/2addr v2, v1

    aget v1, v5, v20

    int-to-float v3, v15

    add-float/2addr v3, v1

    aget v1, v5, v13

    int-to-float v4, v14

    add-float/2addr v4, v1

    aget v1, v5, v19

    int-to-float v8, v15

    add-float/2addr v8, v1

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v1

    move-object v1, v7

    const/16 v9, 0x3c

    move-object v9, v5

    move v5, v8

    .end local v5    # "point":[F
    .local v9, "point":[F
    move v8, v6

    move-object/from16 v6, v22

    .end local v6    # "i":I
    .local v8, "i":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 265
    .end local v8    # "i":I
    .end local v9    # "point":[F
    .restart local v5    # "point":[F
    .restart local v6    # "i":I
    :cond_8
    move-object v9, v5

    move v8, v6

    .end local v5    # "point":[F
    .end local v6    # "i":I
    .restart local v8    # "i":I
    .restart local v9    # "point":[F
    :goto_3
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    if-eqz v1, :cond_b

    .line 266
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    if-ne v1, v10, :cond_9

    goto :goto_4

    .line 273
    :cond_9
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v17, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v9, v16

    .line 274
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v20

    .line 275
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v17, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v9, v13

    .line 276
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v19

    goto :goto_5

    .line 268
    :cond_a
    :goto_4
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v9, v16

    .line 269
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v18, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v9, v20

    .line 270
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v9, v13

    .line 271
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v18, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v9, v19

    .line 278
    :goto_5
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 279
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_b

    .line 281
    aget v1, v9, v16

    int-to-float v2, v14

    add-float/2addr v2, v1

    aget v1, v9, v20

    int-to-float v3, v15

    add-float/2addr v3, v1

    aget v1, v9, v13

    int-to-float v4, v14

    add-float/2addr v4, v1

    aget v1, v9, v19

    int-to-float v5, v15

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    :cond_b
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftRightGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    .line 287
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getTopBottomGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    .line 353
    :cond_c
    move/from16 v29, v11

    move/from16 v30, v12

    move v12, v14

    move v13, v15

    .end local v11    # "rw":I
    .end local v14    # "dx":I
    .end local v15    # "dy":I
    .local v12, "dx":I
    .local v13, "dy":I
    .local v29, "rw":I
    .local v30, "rh":I
    :cond_d
    const/16 v14, 0x5a

    const/16 v15, 0x10e

    goto/16 :goto_c

    .line 289
    .end local v13    # "dy":I
    .end local v29    # "rw":I
    .end local v30    # "rh":I
    .restart local v11    # "rw":I
    .local v12, "rh":I
    .restart local v14    # "dx":I
    .restart local v15    # "dy":I
    :cond_e
    :goto_6
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v8

    iget-object v4, v4, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    .line 290
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v5, v1, v3

    .line 294
    .local v5, "length":D
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftRightGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    neg-int v1, v1

    int-to-double v3, v1

    .line 295
    .local v3, "nGazeYaw":D
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getTopBottomGazeDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    .line 296
    .local v1, "nGazePitch":D
    const-wide v23, 0x4066800000000000L    # 180.0

    div-double v25, v3, v23

    const-wide v27, 0x400921fb54442d18L    # Math.PI

    move/from16 v29, v11

    mul-double v10, v25, v27

    .line 297
    .end local v11    # "rw":I
    .restart local v29    # "rw":I
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    iget-object v13, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v13, v13, v8

    .line 298
    invoke-static {v13}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v13

    neg-int v13, v13

    move/from16 v30, v12

    int-to-double v12, v13

    .end local v12    # "rh":I
    .restart local v30    # "rh":I
    div-double v12, v12, v23

    mul-double v12, v12, v27

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    div-double v12, v1, v23

    mul-double v12, v12, v27

    .line 300
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    div-double v25, v3, v23

    move/from16 v31, v14

    move/from16 v32, v15

    mul-double v14, v25, v27

    .line 301
    .end local v14    # "dx":I
    .end local v15    # "dy":I
    .local v31, "dx":I
    .local v32, "dy":I
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget-object v14, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v14, v14, v8

    .line 302
    invoke-static {v14}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v14

    neg-int v14, v14

    int-to-double v14, v14

    div-double v14, v14, v23

    mul-double v14, v14, v27

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    neg-double v12, v5

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 305
    .local v10, "gazeRollX":F
    neg-double v14, v3

    div-double v14, v14, v23

    mul-double v14, v14, v27

    .line 306
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v11, v11, v8

    .line 307
    invoke-static {v11}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v11

    neg-int v11, v11

    int-to-double v12, v11

    div-double v12, v12, v23

    mul-double v12, v12, v27

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v14, v11

    div-double v11, v1, v23

    mul-double v11, v11, v27

    .line 309
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double v25, v3, v23

    move-wide/from16 v33, v1

    mul-double v1, v25, v27

    .line 310
    .end local v1    # "nGazePitch":D
    .local v33, "nGazePitch":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v11, v1

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    .line 311
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    div-double v1, v1, v23

    mul-double v1, v1, v27

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v11, v1

    sub-double/2addr v14, v11

    neg-double v1, v5

    mul-double/2addr v14, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v14, v1

    double-to-float v11, v14

    .line 315
    .local v11, "gazeRollY":F
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getLeftEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_11

    .line 316
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_10

    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_f

    goto :goto_7

    .line 323
    :cond_f
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v9, v16

    .line 324
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v20

    .line 325
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    const/4 v2, 0x2

    aput v1, v9, v2

    .line 326
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    aput v1, v9, v19

    goto :goto_8

    .line 318
    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v9, v16

    .line 319
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v20

    .line 320
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    const/4 v2, 0x2

    aput v1, v9, v2

    .line 321
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    aput v1, v9, v19

    .line 328
    :goto_8
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 329
    aget v1, v9, v16

    move/from16 v12, v31

    int-to-float v2, v12

    .end local v31    # "dx":I
    .local v12, "dx":I
    add-float/2addr v2, v1

    aget v1, v9, v20

    move/from16 v13, v32

    int-to-float v14, v13

    .end local v32    # "dy":I
    .restart local v13    # "dy":I
    add-float/2addr v14, v1

    const/4 v1, 0x2

    aget v15, v9, v1

    int-to-float v1, v12

    add-float/2addr v15, v1

    aget v1, v9, v19

    move-wide/from16 v35, v3

    int-to-float v3, v13

    .end local v3    # "nGazeYaw":D
    .local v35, "nGazeYaw":D
    add-float v21, v1, v3

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-wide/from16 v23, v33

    move-object v1, v7

    .end local v33    # "nGazePitch":D
    .local v23, "nGazePitch":D
    move-wide/from16 v25, v35

    move v3, v14

    .end local v35    # "nGazeYaw":D
    .local v25, "nGazeYaw":D
    move-object v14, v4

    move v4, v15

    move-wide/from16 v27, v5

    move/from16 v5, v21

    .end local v5    # "length":D
    .local v27, "length":D
    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 333
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v23    # "nGazePitch":D
    .end local v25    # "nGazeYaw":D
    .end local v27    # "length":D
    .restart local v3    # "nGazeYaw":D
    .restart local v5    # "length":D
    .restart local v31    # "dx":I
    .restart local v32    # "dy":I
    .restart local v33    # "nGazePitch":D
    :cond_11
    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    move/from16 v12, v31

    move/from16 v13, v32

    move-wide/from16 v23, v33

    .end local v3    # "nGazeYaw":D
    .end local v5    # "length":D
    .end local v31    # "dx":I
    .end local v32    # "dy":I
    .end local v33    # "nGazePitch":D
    .restart local v12    # "dx":I
    .restart local v13    # "dy":I
    .restart local v23    # "nGazePitch":D
    .restart local v25    # "nGazeYaw":D
    .restart local v27    # "length":D
    :goto_9
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRightEyeBlinkDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_d

    .line 334
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v14, 0x5a

    if-eq v1, v14, :cond_13

    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    const/16 v15, 0x10e

    if-ne v1, v15, :cond_12

    goto :goto_a

    .line 341
    :cond_12
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v9, v16

    .line 342
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v20

    .line 343
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    const/4 v2, 0x2

    aput v1, v9, v2

    .line 344
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    aput v1, v9, v19

    goto :goto_b

    .line 336
    :cond_13
    const/16 v15, 0x10e

    :goto_a
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aput v1, v9, v16

    .line 337
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v20

    .line 338
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    const/4 v2, 0x2

    aput v1, v9, v2

    .line 339
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    aput v1, v9, v19

    .line 347
    :goto_b
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 348
    aget v1, v9, v16

    int-to-float v2, v12

    add-float/2addr v2, v1

    aget v1, v9, v20

    int-to-float v3, v13

    add-float/2addr v3, v1

    const/4 v1, 0x2

    aget v4, v9, v1

    int-to-float v1, v12

    add-float/2addr v4, v1

    aget v1, v9, v19

    int-to-float v5, v13

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    .end local v10    # "gazeRollX":F
    .end local v11    # "gazeRollY":F
    .end local v23    # "nGazePitch":D
    .end local v25    # "nGazeYaw":D
    .end local v27    # "length":D
    :goto_c
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    if-eqz v1, :cond_16

    .line 354
    const-string v1, "CAM_FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileDegree(Landroid/hardware/Camera$Face;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    .line 355
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileScore(Landroid/hardware/Camera$Face;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_14

    .line 357
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v12

    sub-int v1, v1, v17

    int-to-float v1, v1

    aput v1, v9, v16

    .line 358
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v20

    .line 359
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v12

    add-int v1, v1, v17

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v9, v2

    .line 360
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, v9, v19

    .line 362
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v10, v1

    .line 363
    .local v10, "faceMatrix":Landroid/graphics/Matrix;
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getRollDirection(Landroid/hardware/Camera$Face;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 365
    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 366
    aget v1, v9, v16

    int-to-float v2, v12

    add-float/2addr v2, v1

    aget v1, v9, v20

    int-to-float v3, v13

    add-float/2addr v3, v1

    const/4 v11, 0x2

    aget v1, v9, v11

    int-to-float v4, v12

    add-float/2addr v4, v1

    aget v1, v9, v19

    int-to-float v5, v13

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 368
    .end local v10    # "faceMatrix":Landroid/graphics/Matrix;
    goto/16 :goto_d

    :cond_14
    const/4 v11, 0x2

    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ExtendedFaceWrapper;->getSmileDegree(Landroid/hardware/Camera$Face;)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_15

    .line 370
    iget v1, v0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    rsub-int v10, v1, 0x168

    .line 371
    .local v10, "rotation_mouth":I
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, v2, v17

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v3, v18

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v8

    iget-object v4, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v4, v4, v17

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v8

    iget-object v5, v5, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 374
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 375
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v12

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 376
    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v10

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 378
    .end local v10    # "rotation_mouth":I
    goto :goto_d

    .line 379
    :cond_15
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, v2, v17

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, v3, v18

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v4, v4, v8

    iget-object v4, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v4, v4, v17

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v8

    iget-object v5, v5, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int v5, v5, v18

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 382
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 383
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v12

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 384
    iget-object v1, v0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .end local v9    # "point":[F
    .end local v17    # "delta_x":I
    .end local v18    # "delta_y":I
    goto :goto_d

    .line 226
    :cond_16
    const/4 v11, 0x2

    goto :goto_d

    .end local v8    # "i":I
    .end local v13    # "dy":I
    .end local v29    # "rw":I
    .end local v30    # "rh":I
    .restart local v6    # "i":I
    .local v11, "rw":I
    .local v12, "rh":I
    .restart local v14    # "dx":I
    .restart local v15    # "dy":I
    :cond_17
    move/from16 v29, v11

    move/from16 v30, v12

    move v11, v13

    move v12, v14

    move v13, v15

    move v15, v8

    move v14, v9

    move v8, v6

    .end local v6    # "i":I
    .end local v11    # "rw":I
    .end local v14    # "dx":I
    .end local v15    # "dy":I
    .restart local v8    # "i":I
    .local v12, "dx":I
    .restart local v13    # "dy":I
    .restart local v29    # "rw":I
    .restart local v30    # "rh":I
    :goto_d
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "i":I
    .local v1, "i":I
    move v9, v14

    move v8, v15

    const/16 v10, 0xb4

    move v14, v12

    move v15, v13

    move/from16 v12, v30

    move v13, v11

    move/from16 v11, v29

    goto/16 :goto_0

    .line 389
    .end local v1    # "i":I
    .end local v13    # "dy":I
    .end local v29    # "rw":I
    .end local v30    # "rh":I
    .restart local v11    # "rw":I
    .local v12, "rh":I
    .restart local v14    # "dx":I
    .restart local v15    # "dy":I
    :cond_18
    move/from16 v29, v11

    move/from16 v30, v12

    move v12, v14

    move v13, v15

    .end local v11    # "rw":I
    .end local v14    # "dx":I
    .end local v15    # "dy":I
    .local v12, "dx":I
    .restart local v13    # "dy":I
    .restart local v29    # "rw":I
    .restart local v30    # "rh":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 391
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v29    # "rw":I
    .end local v30    # "rh":I
    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    return-void
.end method

.method public onSurfaceTextureSizeChanged(II)V
    .locals 0
    .param p1, "uncroppedWidth"    # I
    .param p2, "uncroppedHeight"    # I

    .line 111
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mUncroppedWidth:I

    .line 112
    iput p2, p0, Lcom/android/camera/ui/FaceView;->mUncroppedHeight:I

    .line 113
    return-void
.end method

.method public pause()V
    .locals 1

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 191
    return-void
.end method

.method public resume()V
    .locals 1

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 195
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .param p1, "block"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    .line 199
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 141
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 142
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CAM_FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 202
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayRotation:I

    .line 203
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 4
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .line 116
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

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

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 119
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_3

    :cond_2
    array-length v0, p1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 121
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mPendingFaces:[Landroid/hardware/Camera$Face;

    .line 122
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-nez v0, :cond_4

    .line 123
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    :cond_4
    return-void

    .line 129
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    if-eqz v0, :cond_6

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mStateSwitchPending:Z

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    :cond_6
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 134
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mBlocked:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 138
    :cond_7
    return-void
.end method

.method public setMirror(Z)V
    .locals 3
    .param p1, "mirror"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CAM_FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 147
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 149
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .line 176
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFailColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 178
    return-void
.end method

.method public showStart()V
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusingColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 164
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .line 169
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mFocusedColor:I

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mColor:I

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 171
    return-void
.end method
