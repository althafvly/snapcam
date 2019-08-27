.class public Lcom/android/camera/WideAnglePanoramaUI;
.super Ljava/lang/Object;
.source "WideAnglePanoramaUI.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/WideAnglePanoramaUI$FlipBitmapDrawable;,
        Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_WidePanoramaUI"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/FrameLayout;

.field private mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mConfigChange:Z

.field private mController:Lcom/android/camera/WideAnglePanoramaController;

.field private mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mOrientation:I

.field private mPanoFailedButton:Landroid/widget/Button;

.field private mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

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

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mTextureView:Landroid/view/TextureView;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mWaitingDialog:Lcom/android/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/WideAnglePanoramaController;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/WideAnglePanoramaController;
    .param p3, "root"    # Landroid/view/ViewGroup;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 95
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mConfigChange:Z

    .line 118
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 119
    iput-object p2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    .line 120
    iput-object p3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    .line 122
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->createContentView()V

    .line 123
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 124
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/WideAnglePanoramaUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/WideAnglePanoramaUI$1;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v1, Lcom/android/camera/WideAnglePanoramaUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/WideAnglePanoramaUI$2;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 146
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/WideAnglePanoramaUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/WideAnglePanoramaUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mConfigChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/WideAnglePanoramaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/WideAnglePanoramaUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/WideAnglePanoramaUI;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaUI;

    .line 62
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedButton:Landroid/widget/Button;

    return-object v0
.end method

.method private createContentView()V
    .locals 5

    .line 451
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "layout_inflater"

    .line 452
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 453
    .local v0, "inflator":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f040026

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 455
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 456
    .local v1, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColor:I

    .line 457
    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewBackground:I

    .line 458
    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColorFast:I

    .line 460
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0033

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    .line 461
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewLayout:Landroid/view/View;

    .line 462
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    .line 463
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0095

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    .line 464
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    .line 465
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    .line 466
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0092

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 467
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 468
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const v3, 0x7f0a001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 469
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 470
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 472
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0d008d

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    .line 474
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    .line 475
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0093

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    .line 476
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 478
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0094

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    .line 479
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    .line 481
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d001e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 482
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 483
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 485
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0d0072

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewBackground:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 490
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/camera/ui/CameraRootView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 491
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    .line 492
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 493
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 494
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraControls;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 495
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->setPanoramaPreviewView()V

    .line 497
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d009b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    .line 498
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d009c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    .line 499
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d00a1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedButton:Landroid/widget/Button;

    .line 500
    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    .line 501
    invoke-direct {p0, v1}, Lcom/android/camera/WideAnglePanoramaUI;->setViews(Landroid/content/res/Resources;)V

    .line 502
    return-void
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 539
    return-void
.end method

.method private setPanoramaPreviewView()V
    .locals 17

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 376
    .local v1, "rotation":I
    iget-object v2, v0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 377
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 378
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 380
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 381
    .local v4, "width":I
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 382
    .local v5, "height":I
    const/4 v6, 0x0

    .line 383
    .local v6, "xOffset":I
    const/4 v7, 0x0

    .line 384
    .local v7, "yOffset":I
    move v8, v4

    .line 385
    .local v8, "w":I
    move v9, v5

    .line 387
    .local v9, "h":I
    mul-int/lit8 v10, v8, 0x4

    div-int/lit8 v10, v10, 0x3

    .line 388
    .end local v9    # "h":I
    .local v10, "h":I
    sub-int v9, v5, v10

    div-int/lit8 v9, v9, 0x2

    .line 390
    .end local v7    # "yOffset":I
    .local v9, "yOffset":I
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 391
    .local v7, "param":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v11, v7}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    int-to-float v12, v6

    invoke-virtual {v11, v12}, Landroid/view/TextureView;->setX(F)V

    .line 393
    iget-object v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    int-to-float v12, v9

    invoke-virtual {v11, v12}, Landroid/view/TextureView;->setY(F)V

    .line 394
    iget-object v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    int-to-float v12, v6

    invoke-virtual {v11, v12}, Landroid/view/View;->setX(F)V

    .line 396
    iget-object v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    int-to-float v12, v9

    invoke-virtual {v11, v12}, Landroid/view/View;->setY(F)V

    .line 397
    iput v9, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewYOffset:I

    .line 399
    iget v11, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewYOffset:I

    .line 400
    .local v11, "t":I
    iget-object v12, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v12}, Landroid/view/TextureView;->getBottom()I

    move-result v12

    iget v13, v0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewYOffset:I

    sub-int/2addr v12, v13

    .line 401
    .local v12, "b1":I
    iget-object v13, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v13}, Landroid/view/TextureView;->getRight()I

    move-result v13

    .line 402
    .local v13, "r":I
    iget-object v14, v0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v14}, Landroid/view/TextureView;->getBottom()I

    move-result v14

    .line 404
    .local v14, "b2":I
    iget-object v15, v0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "rotation":I
    .local v16, "rotation":I
    invoke-virtual {v15, v0, v1}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 405
    return-void
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "appRes"    # Landroid/content/res/Resources;

    .line 505
    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 507
    .local v0, "weight":I
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d0099

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PanoProgressBar;

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 508
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 509
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 510
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f0a001c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 511
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v2, 0x7f0a001e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 513
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0d009a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 514
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$4;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    return-void
.end method

.method private showTooFastIndication()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 531
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissAllDialogs()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->dismissAll()V

    .line 448
    return-void
.end method

.method public flipPreviewIfNeeded()V
    .locals 5

    .line 543
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->getCameraOrientation()I

    move-result v0

    .line 545
    .local v0, "cameraOrientation":I
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 547
    .local v1, "displayRotation":I
    sub-int v2, v0, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .line 548
    .local v2, "rotation":I
    const/16 v3, 0xb4

    if-lt v2, v3, :cond_0

    .line 549
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setRotation(F)V

    .line 553
    :goto_0
    return-void
.end method

.method public getPreviewAreaSize()Landroid/graphics/Point;
    .locals 3

    .line 304
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    .line 305
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 304
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public hideSwitcher()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 169
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 170
    return-void
.end method

.method public hideSwitcherPopup()Z
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 628
    const/4 v0, 0x1

    return v0

    .line 630
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideUI()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideSwitcher()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 563
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "threadRunning"    # Z

    .line 343
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showPreviewCover()V

    .line 345
    iput-boolean v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mConfigChange:Z

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    new-instance v2, Lcom/android/camera/WideAnglePanoramaUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaUI$3;-><init>(Lcom/android/camera/WideAnglePanoramaUI;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    :goto_0
    const/4 v0, 0x0

    .line 355
    .local v0, "lowResReview":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    .line 359
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 361
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 362
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 363
    const v3, 0x7f040025

    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 365
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 366
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/WideAnglePanoramaUI;->setViews(Landroid/content/res/Resources;)V

    .line 367
    if-eqz p2, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_2
    return-void
.end method

.method public onDisplayChanged()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 558
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->flipPreviewIfNeeded()V

    .line 559
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

    .line 433
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/camera/WideAnglePanoramaController;->onPreviewUILayoutChange(IIII)V

    .line 434
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 0
    .param p1, "previewFocused"    # Z

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showUI()V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideUI()V

    .line 188
    :goto_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->onShutterButtonClick()V

    .line 424
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 419
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .line 427
    return-void
.end method

.method public onStartCapture()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideSwitcher()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/camera/WideAnglePanoramaUI;->showDirectionIndicators(I)V

    .line 154
    return-void
.end method

.method public onStopCapture()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideTooFastIndication()V

    .line 164
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideDirectionIndicators()V

    .line 165
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .line 272
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 273
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->onPreviewUIReady()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 275
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 284
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mController:Lcom/android/camera/WideAnglePanoramaController;

    invoke-interface {v0}, Lcom/android/camera/WideAnglePanoramaController;->onPreviewUIDestroyed()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 286
    const-string v0, "CAM_WidePanoramaUI"

    const-string v1, "surfaceTexture is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .line 280
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 293
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mConfigChange:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 567
    return-void
.end method

.method public reset()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 312
    return-void
.end method

.method public resetCaptureProgress()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 209
    return-void
.end method

.method public resetSavingProgress()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 409
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 410
    return-void
.end method

.method public saveFinalMosaic(Landroid/graphics/Bitmap;I)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .line 315
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 316
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 317
    .local v0, "rotateMatrix":Landroid/graphics/Matrix;
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 318
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    .line 318
    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 323
    .end local v0    # "rotateMatrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->requestLayout()V

    .line 331
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 332
    return-void
.end method

.method public setCaptureProgressOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 204
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 205
    return-void
.end method

.method public setMaxCaptureProgress(I)V
    .locals 1
    .param p1, "max"    # I

    .line 212
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 213
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 25
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 634
    iput v2, v1, Lcom/android/camera/WideAnglePanoramaUI;->mOrientation:I

    .line 645
    iget-object v0, v1, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d008f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 646
    .local v3, "dummy":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 647
    .local v4, "t":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 648
    .local v5, "b1":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    .line 649
    .local v6, "r":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 650
    .local v7, "b2":I
    iget-object v0, v1, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    .line 651
    const v8, 0x7f0d0090

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    .line 652
    .local v8, "progressLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 653
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    add-int/2addr v10, v0

    .line 655
    .local v10, "pivotY":I
    const/4 v0, 0x4

    new-array v12, v0, [I

    div-int/lit8 v13, v6, 0x2

    aput v13, v12, v9

    div-int/lit8 v13, v6, 0xa

    const/4 v14, 0x1

    aput v13, v12, v14

    mul-int/lit8 v13, v6, 0x9

    div-int/lit8 v13, v13, 0xa

    aput v13, v12, v11

    div-int/lit8 v13, v6, 0x2

    const/4 v15, 0x3

    aput v13, v12, v15

    .line 656
    .local v12, "x":[I
    new-array v0, v0, [I

    div-int/lit8 v13, v4, 0x2

    add-int/2addr v13, v10

    aput v13, v0, v9

    add-int v13, v4, v5

    div-int/2addr v13, v11

    aput v13, v0, v14

    add-int v13, v4, v5

    div-int/2addr v13, v11

    aput v13, v0, v11

    add-int v13, v5, v10

    aput v13, v0, v15

    move-object v13, v0

    .line 660
    .local v13, "y":[I
    const/16 v0, 0x5a

    if-eq v2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq v2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq v2, v0, :cond_0

    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "idx1":I
    const/16 v16, 0x3

    .line 679
    .local v16, "idx2":I
    const/16 v17, 0x51

    .end local v0    # "idx1":I
    .local v16, "idx1":I
    .local v17, "g":I
    .local v18, "idx2":I
    :goto_0
    move/from16 v18, v16

    move/from16 v16, v0

    goto :goto_1

    .line 672
    .end local v16    # "idx1":I
    .end local v17    # "g":I
    .end local v18    # "idx2":I
    :cond_0
    const/4 v0, 0x2

    .line 673
    .restart local v0    # "idx1":I
    const/16 v16, 0x1

    .line 674
    .local v16, "idx2":I
    const/16 v17, 0x35

    .line 675
    .restart local v17    # "g":I
    goto :goto_0

    .line 667
    .end local v0    # "idx1":I
    .end local v16    # "idx2":I
    .end local v17    # "g":I
    :cond_1
    const/4 v0, 0x3

    .line 668
    .restart local v0    # "idx1":I
    const/16 v16, 0x0

    .line 669
    .restart local v16    # "idx2":I
    const/16 v17, 0x51

    .line 670
    .restart local v17    # "g":I
    goto :goto_0

    .line 662
    .end local v0    # "idx1":I
    .end local v16    # "idx2":I
    .end local v17    # "g":I
    :cond_2
    const/4 v0, 0x1

    .line 663
    .restart local v0    # "idx1":I
    const/16 v16, 0x2

    .line 664
    .restart local v16    # "idx2":I
    const/16 v17, 0x35

    .line 665
    .restart local v17    # "g":I
    goto :goto_0

    .line 679
    .end local v0    # "idx1":I
    .local v16, "idx1":I
    .restart local v18    # "idx2":I
    :goto_1
    move/from16 v19, v17

    .line 683
    .end local v17    # "g":I
    .local v19, "g":I
    new-array v0, v11, [Landroid/view/View;

    iget-object v15, v1, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureIndicator:Landroid/view/View;

    .line 684
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    aput-object v15, v0, v9

    iget-object v15, v1, Lcom/android/camera/WideAnglePanoramaUI;->mRootView:Landroid/view/ViewGroup;

    const v11, 0x7f0d0096

    .line 685
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v0, v14

    move-object v11, v0

    .line 687
    .local v11, "views1":[Landroid/view/View;
    array-length v15, v11

    move v14, v9

    :goto_2
    if-ge v14, v15, :cond_4

    aget-object v9, v11, v14

    .line 688
    .local v9, "v":Landroid/view/View;
    aget v0, v12, v16

    const/16 v17, 0x0

    aget v20, v12, v17

    sub-int v0, v0, v20

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 689
    aget v0, v13, v16

    aget v21, v13, v17

    sub-int v0, v0, v21

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v22, v3

    const/16 v3, 0x15

    .end local v3    # "dummy":Landroid/view/View;
    .local v22, "dummy":Landroid/view/View;
    if-lt v0, v3, :cond_3

    .line 693
    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 694
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "setTranslationZ"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x1

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .end local v4    # "t":I
    .end local v5    # "b1":I
    .local v23, "t":I
    .local v24, "b1":I
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v4, v5, v17

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 695
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v4, 0x0

    aput-object v17, v5, v4

    invoke-virtual {v3, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 698
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_4

    .line 696
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v23    # "t":I
    .end local v24    # "b1":I
    .restart local v4    # "t":I
    .restart local v5    # "b1":I
    :catch_1
    move-exception v0

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "t":I
    .end local v5    # "b1":I
    .restart local v23    # "t":I
    .restart local v24    # "b1":I
    :goto_3
    goto :goto_4

    .line 700
    .end local v23    # "t":I
    .end local v24    # "b1":I
    .restart local v4    # "t":I
    .restart local v5    # "b1":I
    :cond_3
    move/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "t":I
    .end local v5    # "b1":I
    .restart local v23    # "t":I
    .restart local v24    # "b1":I
    :goto_4
    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setRotation(F)V

    .line 687
    .end local v9    # "v":Landroid/view/View;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    const/4 v9, 0x0

    goto :goto_2

    .line 703
    .end local v22    # "dummy":Landroid/view/View;
    .end local v23    # "t":I
    .end local v24    # "b1":I
    .local v3, "dummy":Landroid/view/View;
    .restart local v4    # "t":I
    .restart local v5    # "b1":I
    :cond_4
    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v3    # "dummy":Landroid/view/View;
    .end local v4    # "t":I
    .end local v5    # "b1":I
    .restart local v22    # "dummy":Landroid/view/View;
    .restart local v23    # "t":I
    .restart local v24    # "b1":I
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/view/View;

    const/16 v17, 0x0

    aput-object v8, v0, v17

    iget-object v3, v1, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 704
    .local v0, "views2":[Landroid/view/View;
    array-length v3, v0

    move/from16 v4, v17

    :goto_5
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 705
    .local v5, "v":Landroid/view/View;
    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setPivotX(F)V

    .line 706
    int-to-float v9, v10

    invoke-virtual {v5, v9}, Landroid/view/View;->setPivotY(F)V

    .line 707
    aget v9, v12, v18

    const/4 v14, 0x3

    aget v15, v12, v14

    sub-int/2addr v9, v15

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 708
    aget v9, v13, v18

    aget v15, v13, v14

    sub-int/2addr v9, v15

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 709
    neg-int v9, v2

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setRotation(F)V

    .line 704
    .end local v5    # "v":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 712
    :cond_5
    iget-object v3, v1, Lcom/android/camera/WideAnglePanoramaUI;->mReviewControl:Landroid/view/ViewGroup;

    const v4, 0x7f0d009a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 713
    .local v3, "button":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 714
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v5, v19

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 715
    .end local v19    # "g":I
    .local v5, "g":I
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object v9, v1, Lcom/android/camera/WideAnglePanoramaUI;->mWaitingDialog:Lcom/android/camera/ui/RotateLayout;

    neg-int v14, v2

    int-to-float v14, v14

    invoke-virtual {v9, v14}, Lcom/android/camera/ui/RotateLayout;->setRotation(F)V

    .line 717
    iget-object v9, v1, Lcom/android/camera/WideAnglePanoramaUI;->mPanoFailedDialog:Lcom/android/camera/ui/RotateLayout;

    neg-int v14, v2

    int-to-float v14, v14

    invoke-virtual {v9, v14}, Lcom/android/camera/ui/RotateLayout;->setRotation(F)V

    .line 718
    iget-object v9, v1, Lcom/android/camera/WideAnglePanoramaUI;->mReview:Landroid/widget/ImageView;

    neg-int v14, v2

    int-to-float v14, v14

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setRotation(F)V

    .line 719
    iget-object v9, v1, Lcom/android/camera/WideAnglePanoramaUI;->mTooFastPrompt:Landroid/widget/TextView;

    neg-int v14, v2

    int-to-float v14, v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setRotation(F)V

    .line 720
    iget-object v9, v1, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    move/from16 v14, p2

    invoke-virtual {v9, v2, v14}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 721
    invoke-static/range {p1 .. p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 722
    return-void
.end method

.method public setProgressOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 245
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 246
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 247
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 200
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "failedString"    # Ljava/lang/String;
    .param p3, "OKString"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 439
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->showAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method public showCaptureProgress()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public showDirectionIndicators(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 250
    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    nop

    .line 264
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showFinalMosaic()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 339
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    return-void
.end method

.method public showPreviewUI()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showUI()V

    .line 159
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 196
    return-void
.end method

.method public showUI()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showSwitcher()V

    .line 179
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mDialogHelper:Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/camera/WideAnglePanoramaUI$DialogHelper;->showWaitingDialog(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method public updateCaptureProgress(FFFFF)V
    .locals 4
    .param p1, "panningRateXInDegree"    # F
    .param p2, "panningRateYInDegree"    # F
    .param p3, "progressHorizontalAngle"    # F
    .param p4, "progressVerticalAngle"    # F
    .param p5, "maxPanningSpeed"    # F

    .line 224
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p5

    if-gtz v0, :cond_1

    .line 225
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->hideTooFastIndication()V

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaUI;->showTooFastIndication()V

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 234
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    const/4 v2, 0x1

    aput p4, v0, v2

    .line 235
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v0, v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mProgressAngle:[F

    aget v0, v0, v2

    float-to-int v0, v0

    .line 241
    .local v0, "angleInMajorDirection":I
    :goto_2
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaUI;->mCaptureProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 242
    return-void
.end method

.method public updateSavingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 413
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaUI;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 414
    return-void
.end method
