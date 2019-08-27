.class public Lcom/android/camera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusOverlayManager$MainHandler;,
        Lcom/android/camera/FocusOverlayManager$Listener;,
        Lcom/android/camera/FocusOverlayManager$FocusUI;
    }
.end annotation


# static fields
.field private static final RESET_FACE_DETECTION:I = 0x1

.field private static final RESET_FACE_DETECTION_DELAY:I = 0xbb8

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0x2ee0

.field public static final STATE_FAIL:I = 0x4

.field public static final STATE_FOCUSING:I = 0x1

.field public static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CAM_FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mIsAFRunning:Z

.field mListener:Lcom/android/camera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mPreviousMoving:Z

.field private mState:I

.field private mTouchAFRunning:Z

.field private mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

.field private mZslEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/FocusOverlayManager$FocusUI;)V
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;
    .param p2, "defaultFocusModes"    # [Ljava/lang/String;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/android/camera/FocusOverlayManager$Listener;
    .param p5, "mirror"    # Z
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "ui"    # Lcom/android/camera/FocusOverlayManager$FocusUI;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 95
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mZslEnabled:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchAFRunning:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mIsAFRunning:Z

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Lcom/android/camera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/camera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 148
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 149
    iput-object p2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 150
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 151
    iput-object p4, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    .line 152
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 153
    iput-object p7, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    .line 154
    return-void
.end method

.method private autoFocus()V
    .locals 2

    .line 439
    const-string v0, "CAM_FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->autoFocus()V

    .line 441
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 442
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 443
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    return-void
.end method

.method private calculateTapArea(IIFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "areaMultiple"    # F
    .param p4, "rect"    # Landroid/graphics/Rect;

    .line 566
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->getAreaSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 567
    .local v0, "areaSize":I
    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v1

    .line 569
    .local v1, "left":I
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v2

    .line 572
    .local v2, "top":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    add-int v6, v1, v0

    int-to-float v6, v6

    add-int v7, v2, v0

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 573
    .local v3, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 574
    invoke-static {v3, p4}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method private capture()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 463
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    :cond_0
    return-void
.end method

.method private getAreaSize()I
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private initializeFocusAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 354
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 359
    return-void
.end method

.method private initializeMeteringAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 365
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/FocusOverlayManager;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 372
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mZslEnabled:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 218
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 220
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .line 616
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "focusMode":Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 617
    :goto_0
    return v1
.end method

.method private resetMeteringAreas()V
    .locals 1

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 376
    return-void
.end method

.method private setMatrix()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZILandroid/graphics/Rect;)V

    .line 210
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    .line 213
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .line 223
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 225
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 2

    .line 447
    const-string v0, "CAM_FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 453
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 454
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->resumeFaceDetection()V

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 456
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 457
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    return-void
.end method

.method public doSnap()V
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 272
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_1

    .line 273
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_1

    .line 267
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    .line 280
    :cond_4
    :goto_1
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getCurrentFocusState()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    return-object v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    const-string v0, "auto"

    return-object v0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 474
    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_focusmode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 483
    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 484
    .local v2, "mode":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 485
    iput-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 486
    goto :goto_1

    .line 482
    .end local v2    # "mode":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "i":I
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 494
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 495
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 494
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 496
    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2

    .line 498
    :cond_5
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 501
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    return-object v1
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 2

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .line 588
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .line 596
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouch()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchAFRunning:Z

    return v0
.end method

.method public isZslEnabled()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mZslEnabled:Z

    return v0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "shutterButtonPressed"    # Z

    .line 283
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 290
    :cond_0
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 293
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->capture()V

    goto :goto_2

    .line 294
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 298
    if-eqz p1, :cond_2

    .line 299
    iput v2, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    goto :goto_1

    .line 301
    :cond_2
    iput v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 306
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 309
    :cond_3
    if-eqz p2, :cond_5

    .line 311
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_2

    .line 313
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 317
    :cond_5
    :goto_2
    return-void
.end method

.method public onAutoFocusMoving(Z)V
    .locals 5
    .param p1, "moving"    # Z

    .line 320
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->hasFaces()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 326
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mIsAFRunning:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    .line 328
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mIsAFRunning:Z

    .line 330
    :cond_1
    return-void

    .line 335
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-eqz v0, :cond_3

    return-void

    .line 338
    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    if-nez v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusStarted()V

    .line 340
    iput-boolean v2, p0, Lcom/android/camera/FocusOverlayManager;->mIsAFRunning:Z

    goto :goto_0

    .line 341
    :cond_4
    if-nez p1, :cond_5

    .line 342
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    .line 343
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mIsAFRunning:Z

    .line 346
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mPreviousMoving:Z

    .line 348
    return-void
.end method

.method public onCameraReleased()V
    .locals 1

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchAFRunning:Z

    .line 435
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 436
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 424
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    .line 429
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 430
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 431
    return-void
.end method

.method public onShutterDown()V
    .locals 3

    .line 230
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 233
    .local v0, "autoFocusCalled":Z
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    .line 237
    const/4 v0, 0x1

    .line 241
    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    .line 242
    :cond_2
    return-void
.end method

.method public onShutterUp()V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    .line 258
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 379
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 381
    :cond_0
    const-string v0, "Camera"

    const-string v1, "TouchFocus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 392
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->initializeFocusAreas(II)V

    .line 396
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->initializeMeteringAreas(II)V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager$FocusUI;->setFocusPosition(II)V

    .line 403
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mZslEnabled:Z

    if-eqz v0, :cond_6

    .line 404
    iput-boolean v1, p0, Lcom/android/camera/FocusOverlayManager;->mTouchAFRunning:Z

    .line 408
    :cond_6
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mListener:Lcom/android/camera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 412
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_7

    .line 413
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->autoFocus()V

    goto :goto_0

    .line 415
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/FocusOverlayManager;->updateFocusUI()V

    .line 417
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    :goto_0
    return-void

    .line 389
    :cond_8
    :goto_1
    return-void

    .line 379
    :cond_9
    :goto_2
    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "focusMode"    # Ljava/lang/String;

    .line 604
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    return-void
.end method

.method public resetTouchFocus()V
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->clearFocus()V

    .line 551
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 553
    iput-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 556
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->resetMeteringAreas()V

    .line 560
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchAFRunning:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mZslEnabled:Z

    if-eqz v0, :cond_3

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mTouchAFRunning:Z

    .line 563
    :cond_3
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .line 608
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mAeAwbLock:Z

    .line 609
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .line 199
    iput p1, p0, Lcom/android/camera/FocusOverlayManager;->mDisplayOrientation:I

    .line 200
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 201
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mMirror:Z

    .line 195
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 196
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 165
    if-nez p1, :cond_0

    return-void

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 167
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 168
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 169
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 170
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    .line 171
    return-void
.end method

.method public setPhotoUI(Lcom/android/camera/FocusOverlayManager$FocusUI;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/camera/FocusOverlayManager$FocusUI;

    .line 157
    iput-object p1, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    .line 158
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .line 181
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 183
    invoke-direct {p0}, Lcom/android/camera/FocusOverlayManager;->setMatrix()V

    .line 185
    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .line 174
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 175
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/camera/FocusOverlayManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 177
    :cond_1
    return-void
.end method

.method public setZslEnable(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 623
    iput-boolean p1, p0, Lcom/android/camera/FocusOverlayManager;->mZslEnabled:Z

    .line 624
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .line 513
    iget-boolean v0, p0, Lcom/android/camera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    if-eqz v0, :cond_7

    .line 520
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_1

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusStarted()V

    goto :goto_1

    .line 529
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 532
    :cond_3
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_1

    .line 535
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 536
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusSucceeded(Z)V

    goto :goto_1

    .line 537
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 538
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusFailed(Z)V

    goto :goto_1

    .line 530
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/FocusOverlayManager;->mUI:Lcom/android/camera/FocusOverlayManager$FocusUI;

    invoke-interface {v0}, Lcom/android/camera/FocusOverlayManager$FocusUI;->onFocusStarted()V

    .line 541
    :cond_7
    :goto_1
    return-void
.end method
