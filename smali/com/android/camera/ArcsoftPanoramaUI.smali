.class public Lcom/android/camera/ArcsoftPanoramaUI;
.super Ljava/lang/Object;
.source "ArcsoftPanoramaUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ArcsoftPanoramaUI$FlipBitmapDrawable;,
        Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_RIGHT:I = 0x0

.field public static final DIRECTION_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CAM_ArcsoftPanoramaUI"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/FrameLayout;

.field private mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mController:Lcom/android/camera/ArcsoftPanoramaController;

.field private mDialogHelper:Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;

.field private mDownIndicator:Landroid/view/View;

.field private mHintPrompt:Landroid/widget/TextView;

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMaxPreviewHeight:I

.field private mMaxPreviewWidth:I

.field private mOrientation:I

.field private mPanoFailedButton:Landroid/widget/Button;

.field private mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

.field private mPanoOrientation:I

.field private mPreviewBorder:Landroid/view/View;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewLayout:Landroid/view/View;

.field private mPreviewYOffset:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewBackground:I

.field private mReviewControl:Landroid/view/ViewGroup;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mScreenRatio:I

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTopMargin:I

.field private mUpIndicator:Landroid/view/View;

.field private mWaitingDialog:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ArcsoftPanoramaController;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/ArcsoftPanoramaController;
    .param p3, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 100
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mProgressAngle:[F

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 120
    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mMaxPreviewWidth:I

    .line 121
    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mMaxPreviewHeight:I

    .line 123
    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mScreenRatio:I

    .line 124
    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    .line 125
    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    .line 138
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 139
    iput-object p2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mController:Lcom/android/camera/ArcsoftPanoramaController;

    .line 140
    iput-object p3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    .line 142
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->createContentView()V

    .line 143
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0036

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 144
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 145
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    .line 148
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/ArcsoftPanoramaUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/ArcsoftPanoramaUI$1;-><init>(Lcom/android/camera/ArcsoftPanoramaUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v3, Lcom/android/camera/ArcsoftPanoramaUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/ArcsoftPanoramaUI$2;-><init>(Lcom/android/camera/ArcsoftPanoramaUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 165
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 166
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mScreenRatio:I

    .line 167
    invoke-direct {p0, v1}, Lcom/android/camera/ArcsoftPanoramaUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 168
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 169
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ArcsoftPanoramaUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ArcsoftPanoramaUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ArcsoftPanoramaUI;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ArcsoftPanoramaUI;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoFailedButton:Landroid/widget/Button;

    return-object v0
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 701
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 702
    .local v1, "l":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 703
    .local v2, "tm":I
    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 704
    .local v0, "bm":I
    div-int/lit8 v3, v1, 0x4

    mul-int/2addr v3, v2

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    .line 705
    div-int/lit8 v3, v1, 0x4

    iget v4, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    .line 706
    return-void

    .line 701
    .end local v0    # "bm":I
    .end local v1    # "l":I
    .end local v2    # "tm":I
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private createContentView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 374
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    .line 375
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 376
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v2, 0x7f040002

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 378
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 379
    .local v0, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mIndicatorColor:I

    .line 380
    const v2, 0x7f0a0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewBackground:I

    .line 381
    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mIndicatorColorFast:I

    .line 383
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 384
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 386
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 387
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 388
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v3, Lcom/android/camera/ArcsoftPanoramaUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/ArcsoftPanoramaUI$3;-><init>(Lcom/android/camera/ArcsoftPanoramaUI;)V

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 396
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0014

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewCover:Landroid/view/View;

    .line 397
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0004

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewLayout:Landroid/view/View;

    .line 398
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0013

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    .line 399
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0010

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewLayout:Landroid/view/View;

    .line 400
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0012

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    .line 401
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    .line 402
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 403
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 404
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 405
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 406
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 408
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0d0006

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewBorder:Landroid/view/View;

    .line 410
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    .line 411
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d000d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    .line 412
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    .line 413
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d000e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    .line 414
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 415
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 416
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 418
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d000f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    .line 419
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureIndicator:Landroid/view/View;

    .line 421
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0037

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 422
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 423
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 425
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0034

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d00a8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewBackground:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 430
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/camera/ui/CameraRootView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 432
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0032

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraControls;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 434
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0015

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    .line 435
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0016

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    .line 436
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoFailedButton:Landroid/widget/Button;

    .line 437
    new-instance v2, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;

    invoke-direct {v2, p0}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;-><init>(Lcom/android/camera/ArcsoftPanoramaUI;)V

    iput-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDialogHelper:Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;

    .line 438
    invoke-direct {p0, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->setViews(Landroid/content/res/Resources;)V

    .line 439
    return-void
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 296
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    return-void
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "appRes"    # Landroid/content/res/Resources;

    .prologue
    .line 442
    const v1, 0x7f0b0006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 444
    .local v0, "weight":I
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d00c1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PanoProgressBar;

    iput-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 445
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 446
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 447
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f0a001c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 448
    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f0a001e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 449
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissAllDialogs()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDialogHelper:Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;

    invoke-virtual {v0}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->dismissAll()V

    .line 371
    return-void
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public hideHintIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewBorder:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 473
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 475
    return-void
.end method

.method public hidePreviewCover()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    return-void
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 193
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public hideSwitcherPopup()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideUI()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideSwitcher()V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setVisibility(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideDirectionIndicators()V

    .line 200
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 484
    return-void
.end method

.method public layoutPreview(F)V
    .locals 9
    .param p1, "ratio"    # F

    .prologue
    const/4 v8, 0x0

    .line 667
    iget-object v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    .line 668
    .local v2, "rotation":I
    iget v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    iget v7, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    add-int/2addr v6, v7

    mul-int/lit8 v0, v6, 0x4

    .line 669
    .local v0, "l":I
    mul-int/lit8 v6, v0, 0x9

    div-int/lit8 v3, v6, 0x10

    .line 670
    .local v3, "s":I
    sparse-switch v2, :sswitch_data_0

    .line 690
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-direct {v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 691
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    iget v7, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    invoke-virtual {v1, v8, v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 692
    int-to-float v5, v3

    .line 693
    .local v5, "scaledTextureWidth":F
    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    int-to-float v4, v6

    .line 696
    .local v4, "scaledTextureHeight":F
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    .line 698
    return-void

    .line 672
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "scaledTextureHeight":F
    .end local v5    # "scaledTextureWidth":F
    :sswitch_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-direct {v1, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 673
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    iget v7, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    invoke-virtual {v1, v6, v8, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 674
    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    int-to-float v5, v6

    .line 675
    .restart local v5    # "scaledTextureWidth":F
    int-to-float v4, v3

    .line 676
    .restart local v4    # "scaledTextureHeight":F
    goto :goto_0

    .line 678
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "scaledTextureHeight":F
    .end local v5    # "scaledTextureWidth":F
    :sswitch_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-direct {v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 679
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    iget v7, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    invoke-virtual {v1, v8, v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 680
    int-to-float v5, v3

    .line 681
    .restart local v5    # "scaledTextureWidth":F
    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    int-to-float v4, v6

    .line 682
    .restart local v4    # "scaledTextureHeight":F
    goto :goto_0

    .line 684
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "scaledTextureHeight":F
    .end local v5    # "scaledTextureWidth":F
    :sswitch_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-direct {v1, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 685
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mBottomMargin:I

    iget v7, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mTopMargin:I

    invoke-virtual {v1, v6, v8, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 686
    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v6, v6, 0x4

    int-to-float v5, v6

    .line 687
    .restart local v5    # "scaledTextureWidth":F
    int-to-float v4, v3

    .line 688
    .restart local v4    # "scaledTextureHeight":F
    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "threadRunning"    # Z

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "lowResReview":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    .line 315
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 317
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 318
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 319
    const v2, 0x7f040028

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 321
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 322
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ArcsoftPanoramaUI;->setViews(Landroid/content/res/Resources;)V

    .line 323
    if-eqz p2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_1
    return-void
.end method

.method public onDisplayChanged()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 480
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "oldl"    # I
    .param p7, "oldt"    # I
    .param p8, "oldr"    # I
    .param p9, "oldb"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mController:Lcom/android/camera/ArcsoftPanoramaController;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/camera/ArcsoftPanoramaController;->onPreviewUILayoutChange(IIII)V

    .line 357
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 0
    .param p1, "previewFocused"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->showUI()V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideUI()V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mController:Lcom/android/camera/ArcsoftPanoramaController;

    invoke-interface {v0}, Lcom/android/camera/ArcsoftPanoramaController;->onShutterButtonClick()V

    .line 347
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 342
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onStartCapture()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideSwitcher()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->showDirectionIndicators(I)V

    .line 177
    const-string v0, "Move the device slowly toward one direction"

    invoke-virtual {p0, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->showHintIndication(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onStopCapture()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideHintIndication()V

    .line 188
    invoke-direct {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->hideDirectionIndicators()V

    .line 189
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 488
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public resetCaptureProgress()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 235
    return-void
.end method

.method public resetSavingProgress()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 333
    return-void
.end method

.method public setCaptureProgressOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 231
    return-void
.end method

.method public setMaxCaptureProgress(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 239
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 23
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 584
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ArcsoftPanoramaUI;->mOrientation:I

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d0008

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 596
    .local v6, "dummy":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    .line 597
    .local v14, "t":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 598
    .local v3, "b1":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    .line 599
    .local v13, "r":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 600
    .local v4, "b2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d0009

    .line 601
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 602
    .local v12, "progressLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v19

    const/16 v20, 0x0

    .line 603
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v11, v19, v20

    .line 605
    .local v11, "pivotY":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v19, 0x0

    div-int/lit8 v20, v13, 0x2

    aput v20, v17, v19

    const/16 v19, 0x1

    div-int/lit8 v20, v13, 0xa

    aput v20, v17, v19

    const/16 v19, 0x2

    mul-int/lit8 v20, v13, 0x9

    div-int/lit8 v20, v20, 0xa

    aput v20, v17, v19

    const/16 v19, 0x3

    div-int/lit8 v20, v13, 0x2

    aput v20, v17, v19

    .line 606
    .local v17, "x":[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    div-int/lit8 v20, v14, 0x2

    add-int v20, v20, v11

    aput v20, v18, v19

    const/16 v19, 0x1

    add-int v20, v14, v3

    div-int/lit8 v20, v20, 0x2

    aput v20, v18, v19

    const/16 v19, 0x2

    add-int v20, v14, v3

    div-int/lit8 v20, v20, 0x2

    aput v20, v18, v19

    const/16 v19, 0x3

    add-int v20, v3, v11

    aput v20, v18, v19

    .line 610
    .local v18, "y":[I
    sparse-switch p1, :sswitch_data_0

    .line 627
    const/4 v8, 0x0

    .line 628
    .local v8, "idx1":I
    const/4 v9, 0x3

    .line 629
    .local v9, "idx2":I
    const/16 v7, 0x51

    .line 633
    .local v7, "g":I
    :goto_0
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    aput-object v12, v16, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    aput-object v20, v16, v19

    .line 634
    .local v16, "views2":[Landroid/view/View;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v15, v16, v19

    .line 635
    .local v15, "v":Landroid/view/View;
    div-int/lit8 v21, v13, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    .line 636
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotY(F)V

    .line 637
    aget v21, v17, v9

    const/16 v22, 0x3

    aget v22, v17, v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 638
    aget v21, v18, v9

    const/16 v22, 0x3

    aget v22, v18, v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 639
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setRotation(F)V

    .line 634
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 612
    .end local v7    # "g":I
    .end local v8    # "idx1":I
    .end local v9    # "idx2":I
    .end local v15    # "v":Landroid/view/View;
    .end local v16    # "views2":[Landroid/view/View;
    :sswitch_0
    const/4 v8, 0x1

    .line 613
    .restart local v8    # "idx1":I
    const/4 v9, 0x2

    .line 614
    .restart local v9    # "idx2":I
    const/16 v7, 0x35

    .line 615
    .restart local v7    # "g":I
    goto :goto_0

    .line 617
    .end local v7    # "g":I
    .end local v8    # "idx1":I
    .end local v9    # "idx2":I
    :sswitch_1
    const/4 v8, 0x3

    .line 618
    .restart local v8    # "idx1":I
    const/4 v9, 0x0

    .line 619
    .restart local v9    # "idx2":I
    const/16 v7, 0x51

    .line 620
    .restart local v7    # "g":I
    goto :goto_0

    .line 622
    .end local v7    # "g":I
    .end local v8    # "idx1":I
    .end local v9    # "idx2":I
    :sswitch_2
    const/4 v8, 0x2

    .line 623
    .restart local v8    # "idx1":I
    const/4 v9, 0x1

    .line 624
    .restart local v9    # "idx2":I
    const/16 v7, 0x35

    .line 625
    .restart local v7    # "g":I
    goto :goto_0

    .line 642
    .restart local v16    # "views2":[Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0d00c2

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 643
    .local v5, "button":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 644
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 645
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    move-object/from16 v19, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/ui/RotateLayout;->setRotation(F)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    move-object/from16 v19, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/camera/ui/RotateLayout;->setRotation(F)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setRotation(F)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setRotation(F)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 651
    invoke-static/range {p1 .. p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 652
    return-void

    .line 610
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setProgressOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 251
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 252
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 226
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "failedString"    # Ljava/lang/String;
    .param p3, "OKString"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDialogHelper:Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->showAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public showCaptureProgress()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public showDirectionIndicators(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 255
    const-string v0, "CAM_ArcsoftPanoramaUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput p1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoOrientation:I

    .line 257
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 283
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mUpIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDownIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showHintIndication(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 465
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    return-void
.end method

.method public showHintIndication(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mHintPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 456
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 458
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    return-void
.end method

.method public showPreviewUI()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->showUI()V

    .line 183
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 222
    return-void
.end method

.method public showUI()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ArcsoftPanoramaUI;->showSwitcher()V

    .line 204
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setVisibility(I)V

    .line 205
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->showDirectionIndicators(I)V

    .line 206
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mDialogHelper:Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/ArcsoftPanoramaUI$DialogHelper;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 367
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 504
    const-string v0, "CAM_ArcsoftPanoramaUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const v0, 0x3faaaaab

    invoke-virtual {p0, v0}, Lcom/android/camera/ArcsoftPanoramaUI;->layoutPreview(F)V

    .line 506
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 510
    const-string v0, "CAM_ArcsoftPanoramaUI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iput-object p1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 512
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mController:Lcom/android/camera/ArcsoftPanoramaController;

    invoke-interface {v0}, Lcom/android/camera/ArcsoftPanoramaController;->onPreviewUIReady()V

    .line 513
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 514
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 518
    const-string v0, "CAM_ArcsoftPanoramaUI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 520
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mController:Lcom/android/camera/ArcsoftPanoramaController;

    invoke-interface {v0}, Lcom/android/camera/ArcsoftPanoramaController;->onPreviewUIDestroyed()V

    .line 521
    return-void
.end method

.method public updateCaptureProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 247
    return-void
.end method

.method public updateSavingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 337
    return-void
.end method

.method public updateThumbView(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 661
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 662
    return-void

    .line 658
    :cond_1
    iget v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mPanoOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/camera/ArcsoftPanoramaUI;->mReview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method
