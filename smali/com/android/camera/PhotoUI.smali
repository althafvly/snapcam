.class public Lcom/android/camera/PhotoUI;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/FocusOverlayManager$FocusUI;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/ui/CameraRootView$MyDisplayListener;
.implements Lcom/android/camera/ui/PieRenderer$PieListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoUI$ZoomChangeListener;,
        Lcom/android/camera/PhotoUI$DecodeImageForReview;,
        Lcom/android/camera/PhotoUI$DecodeTask;,
        Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;,
        Lcom/android/camera/PhotoUI$SURFACE_STATUS;,
        Lcom/android/camera/PhotoUI$SceneTypeParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_UI"


# instance fields
.field public SCENE_DETECT_PEOPLE_NUMBER:I

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private final mAnimationManager:Lcom/android/camera/AnimationManager;

.field private mAspectRatio:F

.field private mAspectRatioResize:Z

.field private mBlurDegreeProgressBar:Landroid/widget/SeekBar;

.field private mBokehDialog:Landroid/widget/FrameLayout;

.field private mBokehDialogText:Landroid/widget/TextView;

.field private mBokehLayout:Lcom/android/camera/ui/BokehLayout;

.field private mBokehText:Landroid/widget/TextView;

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/CameraControls;

.field private mController:Lcom/android/camera/PhotoController;

.field private mCountDownView:Lcom/android/camera/ui/CountDownView;

.field private mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

.field private mDismissAll:Z

.field private mDownSampleFactor:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFlashOverlay:Landroid/view/View;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mIsBokehMode:Z

.field private mIsCaptrueDoing:Z

.field private mIsLayoutInitializedAlready:Z

.field private mLocationDialog:Landroid/app/AlertDialog;

.field private mMakeupMenuLayout:Landroid/widget/LinearLayout;

.field private mMaxPreviewHeight:I

.field private mMaxPreviewWidth:I

.field private mMenu:Lcom/android/camera/PhotoMenu;

.field private mMenuButton:Landroid/view/View;

.field private mMenuHelp:Lcom/android/camera/ui/MenuHelp;

.field public mMenuInitialized:Z

.field private mMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mModeDetectSwitcher:Landroid/view/View;

.field private mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mOrientation:I

.field private mOrientationResize:Z

.field private mPhotoFlash:Lcom/android/camera/ui/PopSwitcher;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPrevOrientationResize:Z

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewMenuLayout:Landroid/widget/LinearLayout;

.field private mPreviewOrientation:I

.field private mProgressDialog:Landroid/widget/FrameLayout;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mScreenBrightness:F

.field private mScreenRatio:I

.field private mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

.field private mSurfaceCreated:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceResized:Z

.field private mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

.field private mSurfaceTextureUncroppedHeight:F

.field private mSurfaceTextureUncroppedWidth:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTopMargin:I

.field private mUIhidden:Z

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

.field private misOrientationSet:Z

.field private mphotothumbnail:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PhotoController;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    .line 121
    iput-object v4, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 148
    iput v6, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    .line 149
    iput v6, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    .line 151
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    .line 159
    iput-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 160
    const v3, 0x3faaaaab

    iput v3, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 170
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 171
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    .line 173
    iput v6, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 174
    iput v6, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    .line 175
    iput v6, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    .line 176
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    .line 180
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->misOrientationSet:Z

    .line 182
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    .line 183
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    .line 194
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    .line 195
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    .line 198
    iput-boolean v7, p0, Lcom/android/camera/PhotoUI;->mphotothumbnail:Z

    .line 201
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mIsCaptrueDoing:Z

    .line 207
    iput v6, p0, Lcom/android/camera/PhotoUI;->SCENE_DETECT_PEOPLE_NUMBER:I

    .line 1102
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    .line 311
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 312
    iput-object p2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    .line 313
    iput-object p3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 314
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04002a

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 316
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    .line 318
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    .line 321
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 322
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 324
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 325
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 326
    const-string v3, "CAM_UI"

    const-string v4, "Using mdp_preview_content (MDP path)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v4, Lcom/android/camera/PhotoUI$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoUI$1;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 350
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RenderOverlay;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 351
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mFlashOverlay:Landroid/view/View;

    .line 352
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ShutterButton;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 354
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PopSwitcher;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mPhotoFlash:Lcom/android/camera/ui/PopSwitcher;

    .line 356
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 357
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 358
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 359
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v4, Lcom/android/camera/PhotoUI$2;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoUI$2;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 373
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    .line 374
    .local v1, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 376
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    .line 377
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 379
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/CameraControls;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 380
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d00ca

    .line 381
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 382
    .local v0, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 384
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/FaceView;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 385
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoUI;->setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initIndicators()V

    .line 388
    new-instance v3, Lcom/android/camera/AnimationManager;

    invoke-direct {v3}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 389
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    .line 390
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    .line 392
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 393
    .local v2, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 394
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 395
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 396
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v5, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/CameraControls;->setMargins(II)V

    .line 397
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showFirstTimeHelp()V

    .line 398
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsCaptrueDoing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/MenuHelp;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/MenuHelp;)Lcom/android/camera/ui/MenuHelp;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/ui/MenuHelp;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CameraControls;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/PhotoUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$DecodeImageForReview;)Lcom/android/camera/PhotoUI$DecodeImageForReview;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoUI;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    return v0
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 405
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 406
    .local v1, "l":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 407
    .local v2, "tm":I
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 408
    .local v0, "bm":I
    div-int/lit8 v3, v1, 0x4

    mul-int/2addr v3, v2

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    .line 409
    div-int/lit8 v3, v1, 0x4

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    .line 410
    return-void

    .line 405
    .end local v0    # "bm":I
    .end local v1    # "l":I
    .end local v2    # "tm":I
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    goto :goto_0
.end method

.method private initIndicators()V
    .locals 4

    .prologue
    .line 608
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a8

    .line 609
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 610
    return-void
.end method

.method private initializeCountDown()V
    .locals 4

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000a

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1380
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    .line 1381
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    check-cast v0, Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CountDownView;->setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V

    .line 1382
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->bringToFront()V

    .line 1383
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1384
    return-void
.end method

.method private openMenu()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->getCameraState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->cancelAutoFocus()V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 666
    :cond_1
    return-void
.end method

.method private setScreenBrightness(F)F
    .locals 4
    .param p1, "brightness"    # F

    .prologue
    .line 1420
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1421
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1422
    .local v0, "layout":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1423
    .local v1, "originalBrightness":F
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1424
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1425
    return v1
.end method

.method private setShowMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1164
    :cond_0
    return-void

    .line 1162
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showFirstTimeHelp(II)V
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MenuHelp;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    .line 423
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setMargins(II)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    new-instance v1, Lcom/android/camera/PhotoUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$3;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    return-void
.end method


# virtual methods
.method public adjustOrientation()V
    .locals 2

    .prologue
    .line 1655
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 1656
    return-void
.end method

.method public animateCapture([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 651
    return-void
.end method

.method public animateFlash()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFlashOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startFlashAnimation(Landroid/view/View;)V

    .line 909
    return-void
.end method

.method public declared-synchronized applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V
    .locals 2
    .param p1, "status"    # Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    if-ne p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buttonBokeh(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->buttonBokehSetEnabled(Z)V

    .line 1770
    :cond_0
    return-void
.end method

.method public cameraOrientationPreviewResize(Z)V
    .locals 1
    .param p1, "orientation"    # Z

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    .line 418
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    .line 419
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    .line 1394
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1393
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUIAfterCountDown()V

    goto :goto_0
.end method

.method public cleanupListview()V
    .locals 2

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUI()V

    .line 1093
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1094
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1493
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 1498
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hasFaces()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->showStart()V

    .line 1501
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 1502
    :cond_1
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 3

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1171
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPhotoFlash:Lcom/android/camera/ui/PopSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/PopSwitcher;->popInvisible()V

    .line 1174
    const/4 v0, 0x0

    .line 1175
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->removeAllView()V

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 1179
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissAllPopup()V

    .line 1180
    const/4 v0, 0x1

    .line 1182
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 1183
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls;->showRefocusToast(Z)V

    .line 1184
    return v0
.end method

.method public dismissAllPopup()V
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    .line 1105
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1108
    :cond_0
    return-void
.end method

.method public dismissLevel1()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1115
    :cond_0
    return-void
.end method

.method public dismissLevel2()V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1122
    :cond_0
    return-void
.end method

.method public dismissPopup()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1100
    :cond_0
    return-void
.end method

.method public dismissSceneModeMenu()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1144
    :cond_0
    return-void
.end method

.method public doShutterAnimation()V
    .locals 2

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 843
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 844
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 845
    return-void
.end method

.method public enableBokehFocus(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehMode(Z)V

    .line 1344
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1345
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableBokehRender(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehMode(Z)V

    .line 1337
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    .line 1339
    :cond_0
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 915
    :cond_0
    return-void
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1250
    :cond_0
    return-void
.end method

.method public freshThumbnail()V
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 1778
    return-void
.end method

.method public getBokehDegreeBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getCameraControls()Lcom/android/camera/ui/CameraControls;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method public getIsCaptureDoing()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsCaptrueDoing:Z

    return v0
.end method

.method public getMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1651
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method public getOrientationSetState()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->misOrientationSet:Z

    return v0
.end method

.method public getPhotoController()Lcom/android/camera/PhotoController;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method public getPreviewMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public gotoThumbnail(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1773
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mphotothumbnail:Z

    .line 1774
    return-void
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hidePostCaptureAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1209
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showCameraSettings()V

    .line 1210
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->cancel(Z)Z

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v2}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoMenu;->hideTopMenu(Z)V

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1220
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 1223
    return-void
.end method

.method public hidePreviewCover()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1442
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    :cond_0
    return-void
.end method

.method public hideRemainingPhotoCnt()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 769
    return-void
.end method

.method public hideRender()V
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1762
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1370
    return-void
.end method

.method public hideSwitcher()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 805
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 806
    return-void
.end method

.method public hideTSMakeUp()V
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->hideTSMakeUp()V

    .line 1700
    :cond_0
    return-void
.end method

.method public hideUI()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 777
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 780
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    goto :goto_0
.end method

.method public hideUIWhileCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1686
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideCameraControls(Z)V

    .line 1687
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1688
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 1474
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 670
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    .line 673
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/PhotoUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$4;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    .line 697
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/BokehLayout;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    .line 700
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    .line 703
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 704
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$5;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideSwitcher()V

    .line 728
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 730
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraControls;->hidePreviewThumbnail()V

    .line 732
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitcherVisibility(Z)V

    .line 733
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 734
    .local v0, "cameraControls":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040031

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 736
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    .line 737
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    .line 738
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    .line 739
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 740
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$6;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$7;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$8;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    .end local v0    # "cameraControls":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public initializeFirstTime()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f0201b4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 825
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/PhotoUI$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$9;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 838
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 839
    return-void
.end method

.method public initializeSecondTime(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 850
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_1

    .line 854
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 857
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 858
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 861
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    .line 864
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    .line 867
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 869
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 870
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 871
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewCoverVisible()Z
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    .line 1449
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    const/4 v0, 0x1

    .line 1452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public layoutPreview(F)V
    .locals 12
    .param p1, "ratio"    # F

    .prologue
    .line 457
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v8}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    .line 458
    .local v3, "rotation":I
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v8

    iput v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 459
    iget v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 460
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determinCloseRatio(F)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 461
    iget v8, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    mul-int/lit8 v1, v8, 0x4

    .line 462
    .local v1, "l":I
    mul-int/lit8 v8, v1, 0x9

    div-int/lit8 v4, v8, 0x10

    .line 463
    .local v4, "s":I
    sparse-switch v3, :sswitch_data_0

    .line 483
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 484
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 485
    int-to-float v6, v4

    .line 486
    .local v6, "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 539
    .end local v1    # "l":I
    .end local v4    # "s":I
    .local v5, "scaledTextureHeight":F
    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_1

    iget v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_2

    .line 541
    :cond_1
    iput v6, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    .line 542
    iput v5, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    .line 543
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    if-eqz v8, :cond_2

    .line 544
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    iget v9, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    float-to-int v10, v10

    invoke-interface {v8, v9, v10}, Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;->onSurfaceTextureSizeChanged(II)V

    .line 547
    const-string v8, "CAM_UI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSurfaceTextureUncroppedWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mSurfaceTextureUncroppedHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_2
    iget-boolean v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    if-eqz v8, :cond_3

    .line 553
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    .line 556
    :cond_3
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 558
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v8, :cond_4

    .line 559
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/FaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    :cond_4
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/RenderOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    .line 565
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_5
    return-void

    .line 465
    .restart local v1    # "l":I
    .restart local v4    # "s":I
    :sswitch_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 466
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 467
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 468
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 469
    .restart local v5    # "scaledTextureHeight":F
    goto :goto_0

    .line 471
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 472
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 473
    int-to-float v6, v4

    .line 474
    .restart local v6    # "scaledTextureWidth":F
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v5, v8

    .line 475
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 477
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :sswitch_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 478
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v6, v8

    .line 480
    .restart local v6    # "scaledTextureWidth":F
    int-to-float v5, v4

    .line 481
    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_0

    .line 490
    .end local v1    # "l":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "s":I
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_6
    iget v8, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    int-to-float v7, v8

    .local v7, "width":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    int-to-float v0, v8

    .line 491
    .local v0, "height":F
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_5

    .line 492
    iget v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 493
    iget v8, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v9, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 494
    :cond_7
    iget-boolean v8, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    if-eqz v8, :cond_d

    .line 495
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 496
    .restart local v6    # "scaledTextureWidth":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_c

    .line 497
    move v6, v7

    .line 498
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v5, v6, v8

    .line 522
    .restart local v5    # "scaledTextureHeight":F
    :goto_1
    const-string v8, "CAM_UI"

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

    .line 524
    if-eqz v3, :cond_8

    const/16 v8, 0xb4

    if-ne v3, v8, :cond_9

    :cond_8
    cmpl-float v8, v6, v5

    if-gtz v8, :cond_b

    :cond_9
    const/16 v8, 0x5a

    if-eq v3, v8, :cond_a

    const/16 v8, 0x10e

    if-ne v3, v8, :cond_11

    :cond_a
    cmpg-float v8, v6, v5

    if-gez v8, :cond_11

    .line 527
    :cond_b
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v8, v5

    float-to-int v9, v6

    const/16 v10, 0x11

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 533
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    iget v8, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 534
    const/16 v8, 0x31

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 535
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 500
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "scaledTextureHeight":F
    :cond_c
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 503
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_d
    cmpl-float v8, v7, v0

    if-lez v8, :cond_f

    .line 504
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_e

    .line 505
    move v6, v7

    .line 506
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 508
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_e
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float v6, v0, v8

    .line 509
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto :goto_1

    .line 512
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_f
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v8, v7

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_10

    .line 513
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v6, v0, v8

    .line 514
    .restart local v6    # "scaledTextureWidth":F
    move v5, v0

    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_1

    .line 516
    .end local v5    # "scaledTextureHeight":F
    .end local v6    # "scaledTextureWidth":F
    :cond_10
    move v6, v7

    .line 517
    .restart local v6    # "scaledTextureWidth":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float v5, v7, v8

    .restart local v5    # "scaledTextureHeight":F
    goto/16 :goto_1

    .line 530
    :cond_11
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v8, v6

    float-to-int v9, v5

    const/16 v10, 0x11

    invoke-direct {v2, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_2

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 924
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v2}, Lcom/android/camera/PhotoMenu;->handleBackKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v0

    .line 928
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 935
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v2}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 936
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->onCaptureCancelled()V

    goto :goto_0

    .line 938
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v2}, Lcom/android/camera/PhotoController;->isCameraIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 941
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v2}, Lcom/android/camera/PhotoController;->getCameraState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 942
    goto :goto_0

    .line 946
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v2}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 947
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 950
    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 6
    .param p1, "prefGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    .param p5, "makeupListener"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 616
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_1

    .line 621
    new-instance v0, Lcom/android/camera/PhotoMenu;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0, p5}, Lcom/android/camera/PhotoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 622
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p4}, Lcom/android/camera/PhotoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    .line 627
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 628
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 629
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_3

    .line 634
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 635
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setPhotoMenu(Lcom/android/camera/PhotoMenu;)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 641
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 643
    invoke-virtual {p0, p3}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 644
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 646
    return-void
.end method

.method public onDisplayChanged()V
    .locals 2

    .prologue
    .line 1567
    const-string v0, "CAM_UI"

    const-string v1, "Device flip detected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 1569
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->updateCameraOrientation()V

    .line 1570
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1563
    :goto_0
    return-void

    .line 1560
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/android/camera/PhotoUI;->SCENE_DETECT_PEOPLE_NUMBER:I

    .line 1562
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    goto :goto_0
.end method

.method public onFocusFailed(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 1523
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1524
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    .line 1525
    :cond_0
    return-void
.end method

.method public onFocusStarted()V
    .locals 1

    .prologue
    .line 1511
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1512
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 1513
    :cond_0
    return-void
.end method

.method public onFocusSucceeded(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .prologue
    .line 1517
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1518
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    .line 1519
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 1460
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 1461
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1466
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    .line 1467
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_2

    .line 1468
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1470
    :cond_2
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1307
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1313
    :cond_1
    return-void
.end method

.method public onPieMoved(II)V
    .locals 4
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 1317
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->getBokehFocusSize()Landroid/util/Size;

    move-result-object v0

    .line 1320
    .local v0, "bokehCircle":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le p2, v2, :cond_1

    .line 1321
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xc

    sub-int v1, p2, v2

    .line 1326
    .local v1, "y":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setX(F)V

    .line 1327
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setY(F)V

    .line 1328
    iget-boolean v2, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 1329
    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1330
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1332
    :cond_0
    return-void

    .line 1323
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    add-int v1, p2, v2

    .restart local v1    # "y":I
    goto :goto_0
.end method

.method public onPieOpened(II)V
    .locals 3
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    const/4 v2, 0x0

    .line 1293
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1294
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1299
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1302
    :cond_1
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 4
    .param p1, "previewFocused"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 955
    if-eqz p1, :cond_5

    .line 956
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUI()V

    .line 960
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 961
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 968
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_7

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez p1, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 973
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI;->setShowMenu(Z)V

    .line 974
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 975
    :cond_4
    return-void

    .line 958
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 961
    goto :goto_1

    .line 968
    :cond_7
    const/16 v0, 0x8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 971
    goto :goto_3
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1158
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/PhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 921
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1538
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1539
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1540
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1542
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1543
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1544
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1549
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1551
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1530
    :cond_0
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1258
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1259
    return-void

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_0
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 1478
    return-void
.end method

.method public removeLevel2()V
    .locals 3

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->removeView(Landroid/view/View;)V

    .line 1062
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public removeSceneModeMenu()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 1152
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1535
    :cond_0
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1132
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v2, :cond_0

    .line 1133
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1134
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1136
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 5
    .param p1, "ratio"    # F

    .prologue
    const/4 v4, 0x1

    .line 437
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 440
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_1

    .line 442
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 445
    :cond_1
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio() ratio["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mAspectRatio["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 447
    iput-boolean v4, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    .line 448
    iput p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 452
    return-void
.end method

.method public setBokehRenderDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehDegree(I)V

    .line 1358
    :cond_0
    return-void
.end method

.method public setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 905
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1229
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    if-eq v0, p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 1230
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isPreviewMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1232
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->addModeBack()V

    .line 1234
    :cond_2
    iput p1, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    .line 1235
    return-void
.end method

.method public setDownFactor(I)V
    .locals 0
    .param p1, "factor"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    .line 414
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 1507
    return-void
.end method

.method public setMakeupMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    .line 991
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 9
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1583
    iput p1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    .line 1584
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 1585
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    if-eqz v6, :cond_0

    .line 1586
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setOrientation(IZ)V

    .line 1588
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v6, :cond_1

    .line 1589
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/BokehLayout;->setOrientation(IZ)V

    .line 1591
    :cond_1
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_2

    .line 1592
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1593
    :cond_2
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_3

    .line 1594
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1595
    :cond_3
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 1596
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1597
    .local v4, "vg":Landroid/view/ViewGroup;
    if-eqz v4, :cond_4

    .line 1598
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "vg":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 1599
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    :cond_4
    if-eqz v4, :cond_5

    .line 1600
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1601
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1602
    .local v1, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1600
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1606
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8

    .line 1607
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1608
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_6

    .line 1609
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_8

    .line 1610
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1611
    .restart local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1609
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1614
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1615
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    if-eqz v4, :cond_8

    .line 1616
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_8

    .line 1617
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1618
    .local v3, "vewiGroup":Landroid/view/ViewGroup;
    instance-of v6, v3, Lcom/android/camera/ui/RotateLayout;

    if-eqz v6, :cond_7

    move-object v1, v3

    .line 1619
    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    .line 1620
    .restart local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1616
    .end local v1    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1627
    .end local v0    # "i":I
    .end local v3    # "vewiGroup":Landroid/view/ViewGroup;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v6, :cond_9

    .line 1628
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1629
    :cond_9
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1630
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v6, :cond_a

    .line 1631
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/FaceView;->setDisplayRotation(I)V

    .line 1633
    :cond_a
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v6, :cond_b

    .line 1634
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1636
    :cond_b
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_c

    .line 1637
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    .line 1638
    .local v2, "v":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1641
    .end local v2    # "v":Lcom/android/camera/ui/RotateImageView;
    :cond_c
    iput-boolean v8, p0, Lcom/android/camera/PhotoUI;->misOrientationSet:Z

    .line 1643
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method public setPreviewMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 983
    return-void
.end method

.method public setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .line 569
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1362
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 819
    return-void
.end method

.method public setlocationy(I)V
    .locals 1
    .param p1, "my"    # I

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BokehLayout;->setSizeY(I)V

    .line 1753
    :cond_0
    return-void
.end method

.method protected showCapturedImageForReview([BIZ)V
    .locals 4
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "mirror"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1189
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget-boolean v0, v0, Lcom/android/camera/ui/CameraControls;->mShowingContainer:Z

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showProMenu()V

    .line 1195
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideCameraSettings()V

    .line 1196
    new-instance v0, Lcom/android/camera/PhotoUI$DecodeImageForReview;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/PhotoUI$DecodeImageForReview;-><init>(Lcom/android/camera/PhotoUI;[BIZ)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 1197
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1198
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v0, v3}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1201
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1203
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 1204
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoMenu;->hideTopMenu(Z)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 1206
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideProMenu()V

    goto :goto_0
.end method

.method public showFirstTimeHelp()V
    .locals 5

    .prologue
    .line 1659
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1660
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "help_menu"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1661
    .local v1, "isMenuShown":Z
    if-nez v1, :cond_0

    .line 1662
    iget v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/PhotoUI;->showFirstTimeHelp(II)V

    .line 1663
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1664
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "help_menu"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1667
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showPopup(Landroid/widget/ListView;IZ)V
    .locals 9
    .param p1, "popup"    # Landroid/widget/ListView;
    .param p2, "level"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 997
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 998
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 999
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v5, :cond_0

    .line 1000
    new-instance v5, Lcom/android/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1001
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    .line 1002
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v6, -0x2

    const/16 v7, 0x33

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1010
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1013
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1014
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 1016
    :cond_1
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    .line 1017
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v5, :cond_2

    .line 1018
    new-instance v5, Lcom/android/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1019
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1021
    :cond_2
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    .line 1022
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v6, -0x2

    const/16 v7, 0x33

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1030
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget v5, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_a

    :cond_3
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 1031
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .local v2, "screenHeight":I
    :goto_2
    move-object v5, p1

    .line 1032
    check-cast v5, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v5}, Lcom/android/camera/ui/ListSubMenu;->getPreCalculatedHeight()I

    move-result v0

    .local v0, "height":I
    move-object v5, p1

    .line 1033
    check-cast v5, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v5}, Lcom/android/camera/ui/ListSubMenu;->getYBase()I

    move-result v4

    .line 1034
    .local v4, "yBase":I
    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1035
    .local v3, "y":I
    add-int v5, v4, v0

    if-le v5, v2, :cond_4

    .line 1036
    const/4 v5, 0x0

    sub-int v6, v2, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1037
    :cond_4
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 1038
    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1043
    :goto_3
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 1046
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v6, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1048
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "screenHeight":I
    .end local v3    # "y":I
    .end local v4    # "yBase":I
    :cond_5
    if-eqz p3, :cond_c

    .line 1049
    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    .line 1050
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    sget v7, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/PhotoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 1051
    :cond_6
    const/4 v5, 0x2

    if-ne p2, v5, :cond_7

    .line 1052
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v5, p1}, Lcom/android/camera/PhotoMenu;->animateFadeIn(Landroid/widget/ListView;)V

    .line 1055
    :cond_7
    :goto_4
    return-void

    .line 1006
    :cond_8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v6, -0x2

    const/16 v7, 0x35

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_0

    .line 1026
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    const/4 v6, -0x2

    const/16 v7, 0x35

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 1031
    :cond_a
    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_2

    .line 1040
    .restart local v0    # "height":I
    .restart local v2    # "screenHeight":I
    .restart local v3    # "y":I
    .restart local v4    # "yBase":I
    :cond_b
    const/4 v5, 0x0

    sget v6, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 1054
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "screenHeight":I
    .end local v3    # "y":I
    .end local v4    # "yBase":I
    :cond_c
    const v5, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_4
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 4
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 1065
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 1067
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    .line 1069
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1071
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/android/camera/PhotoUI$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$10;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1086
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1089
    return-void
.end method

.method public showPreferencesToast()V
    .locals 3

    .prologue
    .line 1429
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    if-nez v1, :cond_0

    .line 1430
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    .line 1433
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1434
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    return-void
.end method

.method public showRefocusDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1670
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1671
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "refocus-prompt"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1672
    .local v3, "prompt":I
    if-ne v3, v5, :cond_0

    .line 1673
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e023b

    .line 1674
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e023c

    .line 1675
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e03e1

    const/4 v6, 0x0

    .line 1676
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1677
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1678
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1679
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "refocus-prompt"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1680
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1683
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraControls;->showRefocusToast(Z)V

    .line 655
    return-void
.end method

.method public showRemainingPhotoCnt()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showRemainingPhotoCnt()V

    .line 773
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1374
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 810
    return-void
.end method

.method public showText(I)V
    .locals 2
    .param p1, "mShow"    # I

    .prologue
    const/16 v1, 0x8

    .line 1718
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1719
    packed-switch p1, :pswitch_data_0

    .line 1743
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1722
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BokehLayout;->setVisibility(I)V

    goto :goto_0

    .line 1725
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BokehLayout;->setVisibility(I)V

    goto :goto_0

    .line 1728
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e046b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1731
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e046c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1734
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e046f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1737
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e046d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1740
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e046e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public showUI()V
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 787
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    goto :goto_0
.end method

.method public showUI(Z)V
    .locals 1
    .param p1, "anim"    # Z

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 795
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraControls;->showUI(Z)V

    goto :goto_0
.end method

.method public showUIAfterCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1691
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideCameraControls(Z)V

    .line 1692
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1693
    return-void
.end method

.method public showWaitingProgress(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1706
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1709
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mIsCaptrueDoing:Z

    .line 1711
    return-void

    .line 1706
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startCountDown(IZ)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initializeCountDown()V

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->startCountDown(IZ)V

    .line 1399
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUIWhileCountDown()V

    .line 1400
    return-void
.end method

.method public startSelfieFlash()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->bringToFront()V

    .line 1406
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->open()V

    .line 1407
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->setScreenBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    .line 1408
    return-void
.end method

.method public stopSelfieFlash()V
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->close()V

    .line 1414
    iget v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1415
    iget v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->setScreenBrightness(F)F

    .line 1416
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 574
    const-string v1, "CAM_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceChanged: width ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 576
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 577
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/PhotoController;->onPreviewRectChanged(Landroid/graphics/Rect;)V

    .line 579
    iget-boolean v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    if-nez v1, :cond_0

    .line 580
    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 583
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 587
    const-string v0, "CAM_UI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 589
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIReady()V

    .line 590
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    .line 594
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 598
    const-string v0, "CAM_UI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 600
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIDestroyed()V

    .line 601
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->tryToCloseSubList()V

    .line 1648
    :cond_0
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p3, "prefs"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 883
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 885
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 886
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v5

    .line 885
    invoke-virtual {v4, p1, v5}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V

    .line 887
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 888
    const/4 v3, -0x1

    .line 889
    .local v3, "wbIndex":I
    const-string v2, "auto"

    .line 890
    .local v2, "wb":Ljava/lang/String;
    const-string v4, "auto"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 891
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    .line 893
    :cond_2
    const-string v4, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 894
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_3

    .line 895
    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 899
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-gez v3, :cond_4

    const/4 v3, 0x2

    .end local v3    # "wbIndex":I
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 900
    const-string v4, "pref_camera_recordlocation_key"

    invoke-static {p3, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 901
    .local v0, "location":Z
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v4, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    goto :goto_0
.end method

.method public updateRemainingPhotos(I)V
    .locals 0
    .param p1, "remaining"    # I

    .prologue
    .line 1580
    return-void
.end method

.method public updateSceneDetectIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "sceneType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1789
    invoke-static {p1}, Lcom/android/camera/PhotoUI$SceneTypeParam;->valueOf(Ljava/lang/String;)Lcom/android/camera/PhotoUI$SceneTypeParam;

    move-result-object v0

    .line 1790
    .local v0, "mSceneTypeParam":Lcom/android/camera/PhotoUI$SceneTypeParam;
    const-string v1, "CAM_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSceneTypeParam:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    sget-object v1, Lcom/android/camera/PhotoUI$11;->$SwitchMap$com$android$camera$PhotoUI$SceneTypeParam:[I

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI$SceneTypeParam;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1835
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1838
    :goto_0
    return-void

    .line 1793
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1796
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1799
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020168

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1802
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1805
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1808
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1811
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1814
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1817
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1820
    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020170

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1823
    :pswitch_a
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020171

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1826
    :pswitch_b
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020172

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1829
    :pswitch_c
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020169

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1832
    :pswitch_d
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mModeDetectSwitcher:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020173

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
