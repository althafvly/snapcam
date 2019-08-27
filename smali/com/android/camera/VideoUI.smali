.class public Lcom/android/camera/VideoUI;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/PauseButton$OnPauseButtonListener;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoUI$ZoomChangeListener;,
        Lcom/android/camera/VideoUI$SettingsPopup;,
        Lcom/android/camera/VideoUI$SURFACE_STATUS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_VideoUI"


# instance fields
.field private PAUSE_HEIGHT_VALUE:I

.field private PAUSE_MARGIN_LEFT_VALUE:I

.field private PAUSE_MARGIN_TOP_VALUE:I

.field private PAUSE_WIDTH_VALUE:I

.field private currentWidthPx:F

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private final mAnimationManager:Lcom/android/camera/AnimationManager;

.field private mAspectRatio:F

.field private mAspectRatioResize:Z

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mController:Lcom/android/camera/VideoController;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFlashOverlay:Landroid/view/View;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mIsTimeLapse:Z

.field private mLabelsLinearLayout:Landroid/widget/LinearLayout;

.field private mMaxPreviewHeight:I

.field private mMaxPreviewWidth:I

.field private mMenuButton:Landroid/view/View;

.field private mMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mMuteButton:Lcom/android/camera/ui/RotateImageView;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mOrientation:I

.field private mOrientationResize:Z

.field private mPauseButton:Lcom/android/camera/PauseButton;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

.field private mPrevOrientationResize:Z

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewMenuLayout:Landroid/widget/LinearLayout;

.field private mPreviewOrientation:I

.field private mRecordingStarted:Z

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mScreenRatio:I

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

.field private mSurfaceTextureUncroppedHeight:F

.field private mSurfaceTextureUncroppedWidth:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTimeLapseLabel:Landroid/view/View;

.field private mTopMargin:I

.field private mUIhidden:Z

.field private mVideoMenu:Lcom/android/camera/VideoMenu;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/VideoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x28

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    .line 109
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mIsTimeLapse:Z

    .line 115
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 116
    iput v6, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    .line 117
    iput v6, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    .line 118
    const v3, 0x3faaaaab

    iput v3, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 121
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    .line 122
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    .line 125
    iput v6, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    .line 126
    iput v6, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    .line 127
    iput v6, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    .line 130
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/VideoUI;->currentWidthPx:F

    .line 141
    const/16 v3, 0x27b

    iput v3, p0, Lcom/android/camera/VideoUI;->PAUSE_MARGIN_TOP_VALUE:I

    .line 142
    const/16 v3, 0x10e

    iput v3, p0, Lcom/android/camera/VideoUI;->PAUSE_MARGIN_LEFT_VALUE:I

    .line 143
    iput v4, p0, Lcom/android/camera/VideoUI;->PAUSE_WIDTH_VALUE:I

    .line 144
    iput v4, p0, Lcom/android/camera/VideoUI;->PAUSE_HEIGHT_VALUE:I

    .line 211
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 212
    iput-object p2, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    .line 213
    iput-object p3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    .line 214
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04004b

    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    .line 218
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 219
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 221
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 222
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 223
    const-string v3, "CAM_VideoUI"

    const-string v4, "Using mdp_preview_content (MDP path)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 226
    .local v2, "surfaceContainer":Landroid/view/View;
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit16 v3, v3, 0x168

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/VideoUI;->currentWidthPx:F

    .line 228
    new-instance v3, Lcom/android/camera/VideoUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoUI$1;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 265
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mFlashOverlay:Landroid/view/View;

    .line 266
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ShutterButton;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 267
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 268
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 269
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 270
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v4, Lcom/android/camera/VideoUI$2;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoUI$2;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateImageView;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    .line 286
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 287
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    check-cast v3, Lcom/android/camera/VideoModule;

    invoke-virtual {v3}, Lcom/android/camera/VideoModule;->isAudioMute()Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v4, Lcom/android/camera/VideoUI$3;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoUI$3;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeMiscControls()V

    .line 305
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeControlByIntent()V

    .line 306
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializeOverlay()V

    .line 307
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->initializePauseButton()V

    .line 309
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/CameraControls;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 310
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00ca

    .line 311
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 312
    .local v0, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 314
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/FaceView;

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 315
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoUI;->setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V

    .line 317
    :cond_0
    new-instance v3, Lcom/android/camera/AnimationManager;

    invoke-direct {v3}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v3, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 318
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    .line 319
    iput-boolean v6, p0, Lcom/android/camera/VideoUI;->mPrevOrientationResize:Z

    .line 321
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 322
    .local v1, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 323
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    .line 324
    invoke-direct {p0, v1}, Lcom/android/camera/VideoUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 325
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v4, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v5, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/CameraControls;->setMargins(II)V

    .line 326
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    return-void

    .line 290
    .end local v0    # "faceViewStub":Landroid/view/ViewStub;
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v4, 0x7f02009f

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/VideoUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/VideoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/VideoUI;->popupDismissed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoUI;)Lcom/android/camera/PauseButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/VideoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/VideoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/VideoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mPrevOrientationResize:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/VideoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/VideoUI;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoUI;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoUI;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoUI;
    .param p1, "x1"    # F

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI;->layoutPreview(F)V

    return-void
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 330
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 331
    .local v1, "l":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 332
    .local v2, "tm":I
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 333
    .local v0, "bm":I
    div-int/lit8 v3, v1, 0x4

    mul-int/2addr v3, v2

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    .line 334
    div-int/lit8 v3, v1, 0x4

    iget v4, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    .line 335
    return-void

    .line 330
    .end local v0    # "bm":I
    .end local v1    # "l":I
    .end local v2    # "tm":I
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$4;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraControls;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 368
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a8

    .line 369
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 371
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenIndicators;->resetToDefault()V

    .line 372
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideSwitcher()V

    .line 375
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hidePreviewThumbnail()V

    .line 377
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040031

    iget-object v2, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 382
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    .line 385
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$5;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$6;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/VideoUI$7;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$7;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    :cond_0
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 749
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 753
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->enableTouch(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 755
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 756
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    .line 759
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    .line 761
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 763
    return-void
.end method

.method private initializeOverlay()V
    .locals 6

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 692
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 695
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-nez v0, :cond_1

    .line 698
    new-instance v0, Lcom/android/camera/VideoMenu;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/VideoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoUI;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 701
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 702
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 705
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_3

    .line 706
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 707
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setVideoMenu(Lcom/android/camera/VideoMenu;)V

    .line 711
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 726
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    .line 727
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/VideoUI$8;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoUI$8;-><init>(Lcom/android/camera/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    return-void
.end method

.method private initializePauseButton()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PauseButton;

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    .line 778
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/PauseButton;->setOnPauseButtonListener(Lcom/android/camera/PauseButton$OnPauseButtonListener;)V

    .line 779
    return-void
.end method

.method private layoutPreview(F)V
    .locals 14
    .param p1, "ratio"    # F

    .prologue
    const/16 v13, 0x11

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 434
    const/4 v2, 0x0

    .line 437
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    .line 438
    .local v3, "rotation":I
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v8

    iput v8, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    .line 439
    iget v8, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 440
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determinCloseRatio(F)I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 441
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    mul-int/lit8 v1, v8, 0x4

    .line 442
    .local v1, "l":I
    mul-int/lit8 v8, v1, 0x9

    div-int/lit8 v4, v8, 0x10

    .line 443
    .local v4, "s":I
    sparse-switch v3, :sswitch_data_0

    .line 463
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 464
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    invoke-virtual {v2, v10, v8, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 465
    int-to-float v6, v4

    .line 466
    .local v6, "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 516
    .end local v1    # "l":I
    .end local v4    # "s":I
    .local v5, "scaledTextureHeight":F
    :goto_0
    iget v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_1

    .line 518
    :cond_0
    iput v6, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    .line 519
    iput v5, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    .line 520
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    if-eqz v8, :cond_1

    .line 521
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    iget v9, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    float-to-int v10, v10

    invoke-interface {v8, v9, v10}, Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;->onSurfaceTextureSizeChanged(II)V

    .line 524
    const-string v8, "CAM_VideoUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSurfaceTextureUncroppedWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedWidth:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mSurfaceTextureUncroppedHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureUncroppedHeight:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1
    if-eqz v2, :cond_2

    .line 531
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->requestLayout()V

    .line 533
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v8, :cond_2

    .line 534
    iget-object v8, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/FaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_2
    return-void

    .line 445
    .restart local v1    # "l":I
    .restart local v4    # "s":I
    :sswitch_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 446
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    invoke-virtual {v2, v8, v10, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 447
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 448
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 449
    .restart local v5    # "scaledTextureHeight":F
    goto :goto_0

    .line 451
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 452
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    invoke-virtual {v2, v10, v8, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 453
    int-to-float v6, v4

    .line 454
    .restart local v6    # "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 455
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 457
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 458
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    invoke-virtual {v2, v8, v10, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 459
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 460
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 461
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 470
    .end local v1    # "l":I
    .end local v4    # "s":I
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_3
    iget v8, p0, Lcom/android/camera/VideoUI;->mMaxPreviewWidth:I

    int-to-float v7, v8

    .local v7, "width":F
    iget v8, p0, Lcom/android/camera/VideoUI;->mMaxPreviewHeight:I

    int-to-float v0, v8

    .line 471
    .local v0, "height":F
    cmpl-float v8, v7, v11

    if-eqz v8, :cond_2

    cmpl-float v8, v0, v11

    if-eqz v8, :cond_2

    .line 472
    iget v8, p0, Lcom/android/camera/VideoUI;->mScreenRatio:I

    if-ne v8, v12, :cond_4

    .line 473
    iget v8, p0, Lcom/android/camera/VideoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/VideoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 474
    :cond_4
    iget-boolean v8, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    if-eqz v8, :cond_a

    .line 475
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 476
    .restart local v6    # "scaledTextureWidth":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_9

    .line 477
    move v6, v7

    .line 478
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    div-float v5, v6, v8

    .line 502
    .restart local v5    # "scaledTextureHeight":F
    :goto_1
    const-string v8, "CAM_VideoUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setTransformMatrix: scaledTextureWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scaledTextureHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v3, :cond_5

    const/16 v8, 0xb4

    if-ne v3, v8, :cond_6

    :cond_5
    cmpl-float v8, v6, v5

    if-gtz v8, :cond_8

    :cond_6
    const/16 v8, 0x5a

    if-eq v3, v8, :cond_7

    const/16 v8, 0x10e

    if-ne v3, v8, :cond_e

    :cond_7
    cmpg-float v8, v6, v5

    if-gez v8, :cond_e

    .line 508
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v8, v5

    float-to-int v9, v6

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 480
    .end local v5    # "scaledTextureHeight":F
    :cond_9
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 483
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_a
    cmpl-float v8, v7, v0

    if-lez v8, :cond_c

    .line 484
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_b

    .line 485
    move v6, v7

    .line 486
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    div-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 488
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_b
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 489
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 492
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_c
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float/2addr v8, v7

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_d

    .line 493
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    div-float v6, v0, v8

    .line 494
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 496
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_d
    move v6, v7

    .line 497
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    mul-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 511
    :cond_e
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v8, v6

    float-to-int v9, v5

    invoke-direct {v2, v8, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private popupDismissed()V
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    .line 865
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private setViewSize(Lcom/android/camera/PauseButton;)V
    .locals 10
    .param p1, "view"    # Lcom/android/camera/PauseButton;

    .prologue
    const/4 v9, 0x0

    .line 782
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Lcom/android/camera/PauseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    .local v1, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v7, p0, Lcom/android/camera/VideoUI;->PAUSE_WIDTH_VALUE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/VideoUI;->currentWidthPx:F

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 786
    .local v6, "pause_width_px":I
    iget v7, p0, Lcom/android/camera/VideoUI;->PAUSE_HEIGHT_VALUE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/VideoUI;->currentWidthPx:F

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 787
    .local v3, "pause_height_px":I
    iget v7, p0, Lcom/android/camera/VideoUI;->PAUSE_MARGIN_TOP_VALUE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/VideoUI;->currentWidthPx:F

    mul-float/2addr v7, v8

    float-to-int v5, v7

    .line 788
    .local v5, "pause_margin_top_px":I
    iget v7, p0, Lcom/android/camera/VideoUI;->PAUSE_MARGIN_LEFT_VALUE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/VideoUI;->currentWidthPx:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 791
    .local v4, "pause_margin_left":I
    invoke-virtual {v1, v4, v5, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 793
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 794
    .local v2, "metric":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 796
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 798
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 799
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 801
    invoke-virtual {p1, v0}, Lcom/android/camera/PauseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    return-void
.end method


# virtual methods
.method public adjustOrientation()V
    .locals 2

    .prologue
    .line 1386
    iget v0, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoUI;->setOrientation(IZ)V

    .line 1387
    return-void
.end method

.method public animateCapture()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->animateCapture(Landroid/graphics/Bitmap;)V

    .line 554
    return-void
.end method

.method public animateCapture(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 562
    const-string v0, "CAM_VideoUI"

    const-string v1, "No valid bitmap for capture animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startCaptureAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public animateFlash()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mFlashOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startFlashAnimation(Landroid/view/View;)V

    .line 546
    return-void
.end method

.method public declared-synchronized applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V
    .locals 2
    .param p1, "status"    # Lcom/android/camera/VideoUI$SURFACE_STATUS;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    if-ne p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cameraOrientationPreviewResize(Z)V
    .locals 1
    .param p1, "orientation"    # Z

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mPrevOrientationResize:Z

    .line 339
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    .line 340
    return-void
.end method

.method public cancelAnimations()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    invoke-virtual {v0}, Lcom/android/camera/AnimationManager;->cancelAnimations()V

    .line 574
    return-void
.end method

.method public cleanupListview()V
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->showUI()V

    .line 880
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 881
    return-void
.end method

.method public clickShutter()V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 1228
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 611
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->closeAllView()V

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v1, :cond_1

    .line 615
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 616
    const/4 v0, 0x1

    .line 618
    :cond_1
    return v0
.end method

.method public dismissLevel1()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 888
    :cond_0
    return-void
.end method

.method public dismissLevel2()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 895
    :cond_0
    return-void
.end method

.method public dismissPopup(Z)V
    .locals 1
    .param p1, "topLevelOnly"    # Z

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isInReviewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI$SettingsPopup;->dismiss(Z)V

    goto :goto_0
.end method

.method public dismissSceneModeMenu()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 914
    :cond_0
    return-void
.end method

.method public dp2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 805
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public enableCameraControls(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 636
    :cond_1
    return-void

    .line 631
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePauseButton(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    if-eqz v0, :cond_0

    .line 1052
    if-eqz p1, :cond_1

    .line 1053
    const-string v0, "CAM_VideoUI"

    const-string v1, "pause Button enabled !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/PauseButton;->setEnabled(Z)V

    .line 1059
    :cond_0
    return-void

    .line 1055
    :cond_1
    const-string v0, "CAM_VideoUI"

    const-string v1, "pause Button disabled !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableShutter(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1041
    if-eqz p1, :cond_1

    .line 1042
    const-string v0, "CAM_VideoUI"

    const-string v1, "Shutter Button enabled !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1048
    :cond_0
    return-void

    .line 1044
    :cond_1
    const-string v0, "CAM_VideoUI"

    const-string v1, "Shutter Button disabled !!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCameraControls()Lcom/android/camera/ui/CameraControls;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method public getMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    return v0
.end method

.method public getPreviewMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getShutterButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hidePieRenderer()Z
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1028
    const/4 v0, 0x1

    .line 1030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePreviewCover()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 159
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public hideReviewUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1171
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1173
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    .line 1175
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->showUI()V

    .line 1176
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1178
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1179
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1180
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 684
    return-void
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 597
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 598
    return-void
.end method

.method public hideSwitcherPopup()Z
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1338
    const/4 v0, 0x1

    .line 1340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideUI()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 578
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    .line 581
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    goto :goto_0
.end method

.method public hideUIwhileRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1137
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 1139
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    sput-boolean v1, Lcom/android/camera/ui/CameraControls;->isRecoding:Z

    .line 1141
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->hideUI()V

    .line 1142
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 640
    return-void
.end method

.method public initializePopup(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 1208
    return-void
.end method

.method public initializeSurfaceView()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 349
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 350
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 351
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 353
    :cond_0
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 1224
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 1216
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoUI;->mZoomMax:I

    .line 1217
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    .line 1220
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/VideoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 1222
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/VideoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public is1080pEnabled()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->is1080pEnabled()Z

    move-result v0

    .line 859
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is4KEnabled()Z
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    check-cast v0, Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->is4KEnabled()Z

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewCoverVisible()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

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

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 868
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v1}, Lcom/android/camera/VideoMenu;->handleBackKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hidePieRenderer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonContinue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1322
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onButtonContinue()V

    .line 1323
    return-void
.end method

.method public onButtonPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1313
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1315
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onButtonPause()V

    .line 1316
    return-void
.end method

.method public onDisplayChanged()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 1253
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->updateCameraOrientation()V

    .line 1254
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1391
    const-string v0, "CAM_VideoUI"

    const-string v1, "onFacedetectopmn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 1393
    return-void
.end method

.method public onPieClosed()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 1073
    return-void
.end method

.method public onPieMoved(II)V
    .locals 0
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 1078
    return-void
.end method

.method public onPieOpened(II)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1068
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 2
    .param p1, "previewFocused"    # Z

    .prologue
    .line 1191
    if-eqz p1, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->showUI()V

    .line 1196
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1203
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI;->setShowMenu(Z)V

    .line 1204
    return-void

    .line 1194
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideUI()V

    goto :goto_0

    .line 1201
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hidePieRenderer()Z

    .line 1023
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/VideoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 1093
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1404
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1405
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1406
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1407
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1409
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1410
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1415
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1417
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->overrideSettings([Ljava/lang/String;)V

    .line 664
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1397
    :cond_0
    return-void
.end method

.method public pressShutter(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1232
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 657
    return-void
.end method

.method public removeLevel2()V
    .locals 3

    .prologue
    .line 925
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 927
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->removeView(Landroid/view/View;)V

    .line 929
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public removeSceneModeMenu()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->cleanupListview()V

    .line 922
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 622
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPauseButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1326
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1328
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/PauseButton;->setPaused(Z)V

    .line 1329
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1401
    :cond_0
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v2, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 906
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAspectRatio(D)V
    .locals 3
    .param p1, "ratio"    # D

    .prologue
    const/4 v2, 0x1

    .line 817
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 818
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    .line 820
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double p1, v0, p1

    .line 823
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_1

    .line 824
    iput-boolean v2, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    .line 825
    double-to-float v0, p1

    iput v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v1, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 829
    double-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoUI;->layoutPreview(F)V

    .line 830
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 647
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    if-eq v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    .line 648
    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->isPreviewMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->dismissSceneModeMenu()V

    .line 650
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->addModeBack()V

    .line 652
    :cond_2
    iput p1, p0, Lcom/android/camera/VideoUI;->mPreviewOrientation:I

    .line 653
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1344
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 1345
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_0

    .line 1346
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1347
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_1

    .line 1348
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1349
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v3, :cond_2

    .line 1350
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_4

    .line 1351
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v5, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1352
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1358
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    .line 1359
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1360
    .local v2, "vg":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3

    .line 1361
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "vg":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 1362
    .restart local v2    # "vg":Landroid/view/ViewGroup;
    :cond_3
    if-eqz v2, :cond_5

    .line 1363
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 1364
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1365
    .local v1, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1363
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1354
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1355
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 1369
    :cond_5
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v3, :cond_6

    .line 1370
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1372
    :cond_6
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1373
    iput p1, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    .line 1374
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 670
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 745
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method public setPreviewGesturesVideoUI()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 741
    return-void
.end method

.method public setPreviewMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1006
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 408
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 409
    :cond_0
    const-string v1, "CAM_VideoUI"

    const-string v2, "Preview size should not be 0."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 413
    :cond_1
    if-le p1, p2, :cond_4

    .line 414
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 418
    .local v0, "ratio":F
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/VideoUI;->mOrientationResize:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 419
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_2

    .line 421
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 424
    :cond_2
    iget v1, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 425
    iput-boolean v3, p0, Lcom/android/camera/VideoUI;->mAspectRatioResize:Z

    .line 426
    iput v0, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v2, p0, Lcom/android/camera/VideoUI;->mAspectRatio:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 430
    invoke-direct {p0, v0}, Lcom/android/camera/VideoUI;->layoutPreview(F)V

    goto :goto_0

    .line 416
    .end local v0    # "ratio":F
    :cond_4
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .restart local v0    # "ratio":F
    goto :goto_1
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1244
    return-void
.end method

.method public setShutterButtonRes()V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1098
    return-void
.end method

.method public setShutterPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .line 344
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1082
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 606
    return-void
.end method

.method public showPopup(Landroid/widget/ListView;IZ)V
    .locals 10
    .param p1, "popup"    # Landroid/widget/ListView;
    .param p2, "level"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 935
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 936
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 937
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v6, :cond_0

    .line 938
    new-instance v6, Lcom/android/camera/ui/RotateLayout;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 939
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 940
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 948
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 951
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v7, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 952
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 954
    :cond_1
    const/4 v6, 0x2

    if-ne p2, v6, :cond_5

    .line 955
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v6, :cond_2

    .line 956
    new-instance v6, Lcom/android/camera/ui/RotateLayout;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 957
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 959
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 963
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 964
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v7, -0x2

    const/16 v8, 0x33

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 973
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget v6, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_a

    :cond_3
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    .line 974
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, "screenHeight":I
    :goto_2
    move-object v6, p1

    .line 975
    check-cast v6, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v6}, Lcom/android/camera/ui/ListSubMenu;->getPreCalculatedHeight()I

    move-result v0

    .local v0, "height":I
    move-object v6, p1

    .line 976
    check-cast v6, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v6}, Lcom/android/camera/ui/ListSubMenu;->getYBase()I

    move-result v5

    .line 977
    .local v5, "yBase":I
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 978
    .local v4, "y":I
    add-int v6, v5, v0

    if-le v6, v3, :cond_4

    .line 979
    const/4 v6, 0x0

    sub-int v7, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 980
    :cond_4
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b

    .line 981
    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 986
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 988
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v7, p0, Lcom/android/camera/VideoUI;->mOrientation:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 990
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "screenHeight":I
    .end local v4    # "y":I
    .end local v5    # "yBase":I
    :cond_5
    if-eqz p3, :cond_c

    .line 991
    const/4 v6, 0x1

    if-ne p2, v6, :cond_6

    .line 992
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    iget-object v7, p0, Lcom/android/camera/VideoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    sget v8, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/camera/VideoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 993
    :cond_6
    const/4 v6, 0x2

    if-ne p2, v6, :cond_7

    .line 994
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v6, p1}, Lcom/android/camera/VideoMenu;->animateFadeIn(Landroid/widget/ListView;)V

    .line 998
    :cond_7
    :goto_4
    return-void

    .line 944
    :cond_8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, -0x2

    const/16 v8, 0x35

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 968
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v7, -0x2

    const/16 v8, 0x35

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 974
    :cond_a
    iget-object v6, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    .line 983
    .restart local v0    # "height":I
    .restart local v3    # "screenHeight":I
    .restart local v4    # "y":I
    .restart local v5    # "yBase":I
    :cond_b
    const/4 v6, 0x0

    sget v7, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 997
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "screenHeight":I
    .end local v4    # "y":I
    .end local v5    # "yBase":I
    :cond_c
    const v6, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_4
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideUI()V

    .line 1015
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI$SettingsPopup;->dismiss(Z)V

    .line 1018
    :cond_0
    new-instance v0, Lcom/android/camera/VideoUI$SettingsPopup;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/VideoUI$SettingsPopup;-><init>(Lcom/android/camera/VideoUI;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mPopup:Lcom/android/camera/VideoUI$SettingsPopup;

    .line 1019
    return-void
.end method

.method public showPreviewBorder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1086
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public showRecordingUI(Z)V
    .locals 5
    .param p1, "recording"    # Z

    .prologue
    const/4 v4, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1101
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mRecordingStarted:Z

    .line 1102
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v3, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1104
    if-eqz p1, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1109
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->hideSwitcher()V

    .line 1110
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 1134
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1103
    goto :goto_1

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020025

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mLabelsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1130
    invoke-virtual {p0}, Lcom/android/camera/VideoUI;->showSwitcher()V

    .line 1132
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public showReviewControls()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1160
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1161
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1162
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewPlayButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1163
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    .line 1166
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->hideUI()V

    .line 1167
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1168
    return-void
.end method

.method public showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 688
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 602
    return-void
.end method

.method public showTimeLapseUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 836
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/VideoUI;->mIsTimeLapse:Z

    .line 837
    return-void

    .line 834
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showUI()V
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->isMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoUI;->mUIhidden:Z

    .line 588
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    goto :goto_0
.end method

.method public showUIafterRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1145
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setWillNotDraw(Z)V

    .line 1147
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    sput-boolean v1, Lcom/android/camera/ui/CameraControls;->isRecoding:Z

    .line 1149
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->showUI()V

    .line 1152
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1289
    const-string v0, "CAM_VideoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: width = "

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

    .line 1290
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1294
    const-string v0, "CAM_VideoUI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iput-object p1, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1296
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onPreviewUIReady()V

    .line 1297
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 1298
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1302
    const-string v0, "CAM_VideoUI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1304
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;

    invoke-interface {v0}, Lcom/android/camera/VideoController;->onPreviewUIDestroyed()V

    .line 1305
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/camera/VideoUI;->mVideoMenu:Lcom/android/camera/VideoMenu;

    invoke-virtual {v0}, Lcom/android/camera/VideoMenu;->tryToCloseSubList()V

    .line 1379
    :cond_0
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V
    .locals 3
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 811
    const-string v1, "pref_camera_recordlocation_key"

    invoke-static {p2, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 812
    .local v0, "location":Z
    iget-object v1, p0, Lcom/android/camera/VideoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 814
    return-void
.end method
