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
        Lcom/android/camera/PhotoUI$SURFACE_STATUS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_UI"


# instance fields
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

.field private mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

.field private mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mOrientation:I

.field private mOrientationResize:Z

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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

.field private mphotothumbnail:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/PhotoController;
    .param p3, "parent"    # Landroid/view/View;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    .line 143
    iput v1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    .line 145
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    .line 153
    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 154
    const v0, 0x3faaaaab

    iput v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 164
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    .line 167
    iput v1, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 168
    iput v1, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    .line 169
    iput v1, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    .line 170
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    .line 174
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mphotothumbnail:Z

    .line 1004
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    .line 263
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 264
    iput-object p2, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    .line 265
    iput-object p3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f040027

    invoke-virtual {v2, v4, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 268
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    .line 271
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 273
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 275
    const-string v0, "CAM_UI"

    const-string v2, "Using mdp_preview_content (MDP path)"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v2, Lcom/android/camera/PhotoUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$1;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 300
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mFlashOverlay:Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 302
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModuleSwitcher;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    .line 303
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 304
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitchListener(Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    new-instance v2, Lcom/android/camera/PhotoUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$2;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ModuleSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 318
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    .line 321
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 323
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraControls;

    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    .line 324
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 325
    const v3, 0x7f0d00a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 326
    .local v2, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 328
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/FaceView;

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 329
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoUI;->setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initIndicators()V

    .line 332
    new-instance v3, Lcom/android/camera/AnimationManager;

    invoke-direct {v3}, Lcom/android/camera/AnimationManager;-><init>()V

    iput-object v3, p0, Lcom/android/camera/PhotoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    .line 333
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    .line 334
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    .line 336
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 337
    .local v1, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 338
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 339
    invoke-direct {p0, v1}, Lcom/android/camera/PhotoUI;->calculateMargins(Landroid/graphics/Point;)V

    .line 340
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v5, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/CameraControls;->setMargins(II)V

    .line 341
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showFirstTimeHelp()V

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ModuleSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/MenuHelp;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/MenuHelp;)Lcom/android/camera/ui/MenuHelp;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/ui/MenuHelp;

    .line 90
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CameraControls;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/PhotoUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .line 90
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$DecodeImageForReview;)Lcom/android/camera/PhotoUI$DecodeImageForReview;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 90
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoUI;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoUI;

    .line 90
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    return v0
.end method

.method private calculateMargins(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Point;

    .line 349
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 350
    .local v0, "l":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 351
    .local v1, "tm":I
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 352
    .local v2, "bm":I
    div-int/lit8 v3, v0, 0x4

    mul-int/2addr v3, v1

    add-int v4, v1, v2

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    .line 353
    div-int/lit8 v3, v0, 0x4

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    .line 354
    return-void
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    :goto_0
    return-object v0
.end method

.method private initIndicators()V
    .locals 4

    .line 549
    new-instance v0, Lcom/android/camera/OnScreenIndicators;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 550
    const v3, 0x7f0d0072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 551
    return-void
.end method

.method private initializeCountDown()V
    .locals 4

    .line 1277
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f040007

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1279
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    .line 1280
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    check-cast v1, Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V

    .line 1281
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->bringToFront()V

    .line 1282
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1283
    return-void
.end method

.method private openMenu()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->getCameraState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->cancelAutoFocus()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 607
    :cond_1
    return-void
.end method

.method private setScreenBrightness(F)F
    .locals 3
    .param p1, "brightness"    # F

    .line 1319
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1320
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1321
    .local v1, "layout":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1322
    .local v2, "originalBrightness":F
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1323
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1324
    return v2
.end method

.method private setShowMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 1063
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1066
    :cond_1
    return-void
.end method

.method private showFirstTimeHelp(II)V
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .line 366
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MenuHelp;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    .line 367
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setMargins(II)V

    .line 369
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    new-instance v1, Lcom/android/camera/PhotoUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$3;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void
.end method


# virtual methods
.method public adjustOrientation()V
    .locals 2

    .line 1550
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 1551
    return-void
.end method

.method public animateCapture([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .line 591
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 592
    return-void
.end method

.method public animateFlash()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mAnimationManager:Lcom/android/camera/AnimationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFlashOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/AnimationManager;->startFlashAnimation(Landroid/view/View;)V

    .line 816
    return-void
.end method

.method public declared-synchronized applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V
    .locals 2
    .param p1, "status"    # Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    monitor-enter p0

    .line 255
    :try_start_0
    sget-object v0, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    if-ne p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 254
    .end local p1    # "status":Lcom/android/camera/PhotoUI$SURFACE_STATUS;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/PhotoUI;
    throw p1
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public buttonBokeh(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1657
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->buttonBokehSetEnabled(Z)V

    .line 1660
    :cond_0
    return-void
.end method

.method public cameraOrientationPreviewResize(Z)V
    .locals 1
    .param p1, "orientation"    # Z

    .line 361
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mPrevOrientationResize:Z

    .line 362
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    .line 363
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1292
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUIAfterCountDown()V

    .line 1293
    return-void
.end method

.method public cleanupListview()V
    .locals 2

    .line 994
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUI()V

    .line 995
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 996
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1392
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .line 1396
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 1397
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hasFaces()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->showStart()V

    .line 1400
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 1401
    :cond_1
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 3

    .line 1071
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v1}, Lcom/android/camera/PhotoMenu;->removeAllView()V

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissAllPopup()V

    .line 1079
    const/4 v0, 0x1

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 1082
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls;->showRefocusToast(Z)V

    .line 1083
    return v0
.end method

.method public dismissAllPopup()V
    .locals 1

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mDismissAll:Z

    .line 1007
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1010
    :cond_0
    return-void
.end method

.method public dismissLevel1()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1017
    :cond_0
    return-void
.end method

.method public dismissLevel2()V
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 1024
    :cond_0
    return-void
.end method

.method public dismissPopup()V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1002
    :cond_0
    return-void
.end method

.method public dismissSceneModeMenu()V
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1046
    :cond_0
    return-void
.end method

.method public doShutterAnimation()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 750
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 751
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 752
    return-void
.end method

.method public enableBokehFocus(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1241
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehMode(Z)V

    .line 1243
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1244
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1251
    :cond_1
    :goto_0
    return-void
.end method

.method public enableBokehRender(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1234
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehMode(Z)V

    .line 1236
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    .line 1238
    :cond_0
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 819
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 822
    :cond_0
    return-void
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1148
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1151
    :cond_0
    return-void
.end method

.method public getBokehDegreeBar()Landroid/widget/SeekBar;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getCameraControls()Lcom/android/camera/ui/CameraControls;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    return-object v0
.end method

.method public getMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1546
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method public getPreviewMenuLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public gotoThumbnail(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1663
    iput-boolean p1, p0, Lcom/android/camera/PhotoUI;->mphotothumbnail:Z

    .line 1664
    return-void
.end method

.method public hasFaces()Z
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hidePostCaptureAlert()V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showCameraSettings()V

    .line 1102
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->cancel(Z)Z

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideTopMenu(Z)V

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1112
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1114
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 1115
    return-void
.end method

.method public hidePreviewCover()V
    .locals 2

    .line 1341
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    :cond_0
    return-void
.end method

.method public hideRemainingPhotoCnt()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 690
    return-void
.end method

.method public hideRender()V
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1652
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1269
    return-void
.end method

.method public hideSwitcher()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 717
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 718
    return-void
.end method

.method public hideTSMakeUp()V
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->hideTSMakeUp()V

    .line 1595
    :cond_0
    return-void
.end method

.method public hideUI()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 698
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 699
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 701
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideUI()V

    .line 702
    return-void
.end method

.method public hideUIWhileCountDown()V
    .locals 2

    .line 1581
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideCameraControls(Z)V

    .line 1582
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1583
    return-void
.end method

.method public initDisplayChangeListener()V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraRootView;->setDisplayChangeListener(Lcom/android/camera/ui/CameraRootView$MyDisplayListener;)V

    .line 1373
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 4

    .line 611
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    .line 614
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/PhotoUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$4;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    .line 635
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BokehLayout;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    .line 638
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    .line 641
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    .line 642
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/PhotoUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$5;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideSwitcher()V

    .line 652
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideRemainingPhotoCnt()V

    .line 653
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setSwitcherVisibility(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 655
    .local v0, "cameraControls":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002d

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 657
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    .line 658
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    .line 659
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    .line 660
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 661
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$6;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$7;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/PhotoUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$8;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    .end local v0    # "cameraControls":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public initializeFirstTime()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 732
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v1, Lcom/android/camera/PhotoUI$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoUI$9;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 745
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 746
    return-void
.end method

.method public initializeSecondTime(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 757
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->reloadPreferences()V

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 764
    .local v0, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 765
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 768
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    .line 771
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    .line 774
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 776
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 777
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 778
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v1, Lcom/android/camera/PhotoUI$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    .line 780
    :cond_1
    return-void

    .line 769
    :cond_2
    :goto_0
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewCoverVisible()Z
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    .line 1348
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    const/4 v0, 0x1

    return v0

    .line 1351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isWaitingProgressShowing()Z
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    const/4 v0, 0x1

    return v0

    .line 1140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public layoutPreview(F)V
    .locals 14
    .param p1, "ratio"    # F

    .line 401
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 402
    .local v0, "rotation":I
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determineRatio(F)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    .line 403
    iget v1, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/16 v4, 0x5a

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v6, :cond_3

    .line 404
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->determinCloseRatio(F)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 405
    iget v1, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v5, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x4

    .line 406
    .local v1, "l":I
    mul-int/lit8 v5, v1, 0x9

    div-int/lit8 v5, v5, 0x10

    .line 407
    .local v5, "s":I
    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 427
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 428
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v7, v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 429
    int-to-float v3, v5

    .line 430
    .local v3, "scaledTextureWidth":F
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v1, v4

    .end local v1    # "l":I
    .end local v5    # "s":I
    move v4, v1

    goto :goto_0

    .line 421
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scaledTextureWidth":F
    .restart local v1    # "l":I
    .restart local v5    # "s":I
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 422
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    invoke-virtual {v2, v3, v7, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 423
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    .line 424
    .restart local v3    # "scaledTextureWidth":F
    int-to-float v4, v5

    .line 425
    .local v4, "scaledTextureHeight":F
    goto :goto_0

    .line 415
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scaledTextureWidth":F
    .end local v4    # "scaledTextureHeight":F
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 416
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    invoke-virtual {v2, v7, v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    int-to-float v3, v5

    .line 418
    .restart local v3    # "scaledTextureWidth":F
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    .line 419
    .restart local v4    # "scaledTextureHeight":F
    goto :goto_0

    .line 409
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scaledTextureWidth":F
    .end local v4    # "scaledTextureHeight":F
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 410
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v3, v7, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    .line 412
    .restart local v3    # "scaledTextureWidth":F
    int-to-float v4, v5

    .line 413
    .restart local v4    # "scaledTextureHeight":F
    nop

    .line 430
    .end local v1    # "l":I
    .end local v5    # "s":I
    :goto_0
    move v1, v4

    .line 433
    .end local v4    # "scaledTextureHeight":F
    .local v1, "scaledTextureHeight":F
    goto/16 :goto_5

    .line 434
    .end local v1    # "scaledTextureHeight":F
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scaledTextureWidth":F
    :cond_3
    iget v1, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewWidth:I

    int-to-float v1, v1

    .local v1, "width":F
    iget v8, p0, Lcom/android/camera/PhotoUI;->mMaxPreviewHeight:I

    int-to-float v8, v8

    .line 435
    .local v8, "height":F
    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-eqz v10, :cond_15

    cmpl-float v9, v8, v9

    if-nez v9, :cond_4

    goto/16 :goto_6

    .line 436
    :cond_4
    iget v9, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    if-ne v9, v5, :cond_5

    .line 437
    iget v9, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v10, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 438
    :cond_5
    iget-boolean v9, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    if-eqz v9, :cond_7

    .line 439
    iget v9, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v9, v8

    .line 440
    .local v9, "scaledTextureWidth":F
    cmpl-float v10, v9, v1

    if-lez v10, :cond_6

    .line 441
    move v9, v1

    .line 442
    iget v10, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v10, v9, v10

    .local v10, "scaledTextureHeight":F
    :goto_1
    goto :goto_2

    .line 444
    .end local v10    # "scaledTextureHeight":F
    :cond_6
    move v10, v8

    goto :goto_1

    .line 447
    .end local v9    # "scaledTextureWidth":F
    :cond_7
    cmpl-float v9, v1, v8

    if-lez v9, :cond_9

    .line 448
    iget v9, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v9, v8

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    cmpl-float v9, v9, v1

    if-lez v9, :cond_8

    .line 449
    move v9, v1

    .line 450
    .restart local v9    # "scaledTextureWidth":F
    iget v10, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v10, v1, v10

    goto :goto_1

    .line 452
    .end local v9    # "scaledTextureWidth":F
    :cond_8
    iget v9, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v9, v8

    .line 453
    .restart local v9    # "scaledTextureWidth":F
    move v10, v8

    goto :goto_1

    .line 456
    .end local v9    # "scaledTextureWidth":F
    :cond_9
    iget v9, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    cmpl-float v9, v9, v8

    if-lez v9, :cond_a

    .line 457
    iget v9, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    div-float v9, v8, v9

    .line 458
    .restart local v9    # "scaledTextureWidth":F
    move v10, v8

    goto :goto_1

    .line 460
    .end local v9    # "scaledTextureWidth":F
    :cond_a
    move v9, v1

    .line 461
    .restart local v9    # "scaledTextureWidth":F
    iget v10, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    mul-float/2addr v10, v1

    .line 466
    .restart local v10    # "scaledTextureHeight":F
    :goto_2
    const-string v11, "CAM_UI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setTransformMatrix: scaledTextureWidth = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", scaledTextureHeight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v11, 0x11

    if-eqz v0, :cond_b

    if-ne v0, v3, :cond_c

    :cond_b
    cmpl-float v3, v9, v10

    if-gtz v3, :cond_f

    :cond_c
    if-eq v0, v4, :cond_d

    if-ne v0, v2, :cond_e

    :cond_d
    cmpg-float v2, v9, v10

    if-gez v2, :cond_e

    goto :goto_3

    .line 474
    :cond_e
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v3, v9

    float-to-int v4, v10

    invoke-direct {v2, v3, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_4

    .line 471
    :cond_f
    :goto_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v3, v10

    float-to-int v4, v9

    invoke-direct {v2, v3, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 474
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4
    nop

    .line 477
    iget v3, p0, Lcom/android/camera/PhotoUI;->mScreenRatio:I

    if-ne v3, v5, :cond_10

    .line 478
    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 479
    iget v3, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v4, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-virtual {v2, v7, v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 483
    .end local v1    # "width":F
    .end local v8    # "height":F
    :cond_10
    move v3, v9

    move v1, v10

    .end local v9    # "scaledTextureWidth":F
    .end local v10    # "scaledTextureHeight":F
    .local v1, "scaledTextureHeight":F
    .restart local v3    # "scaledTextureWidth":F
    :goto_5
    iget v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_11

    iget v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_12

    .line 485
    :cond_11
    iput v3, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    .line 486
    iput v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    .line 487
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    if-eqz v4, :cond_12

    .line 488
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    iget v5, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    float-to-int v5, v5

    iget v7, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    float-to-int v7, v7

    invoke-interface {v4, v5, v7}, Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;->onSurfaceTextureSizeChanged(II)V

    .line 491
    const-string v4, "CAM_UI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSurfaceTextureUncroppedWidth="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedWidth:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "mSurfaceTextureUncroppedHeight="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureUncroppedHeight:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_12
    iget-boolean v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    if-eqz v4, :cond_13

    .line 497
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    .line 500
    :cond_13
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 502
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v4, :cond_14

    .line 503
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/FaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    :cond_14
    iput-boolean v6, p0, Lcom/android/camera/PhotoUI;->mIsLayoutInitializedAlready:Z

    .line 506
    return-void

    .line 435
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scaledTextureWidth":F
    .local v1, "width":F
    .restart local v8    # "height":F
    :cond_15
    :goto_6
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    return v1

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 837
    return v1

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onCaptureCancelled()V

    .line 844
    return v1

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 847
    return v1

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 850
    return v1

    .line 852
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V
    .locals 7
    .param p1, "prefGroup"    # Lcom/android/camera/PreferenceGroup;
    .param p2, "prefs"    # Lcom/android/camera/ComboPreferences;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
    .param p5, "makeupListener"    # Lcom/android/camera/TsMakeupManager$MakeupLevelListener;

    .line 555
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/android/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 557
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PieRenderer;->setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V

    .line 558
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_1

    .line 562
    new-instance v0, Lcom/android/camera/PhotoMenu;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0, p5}, Lcom/android/camera/PhotoMenu;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoUI;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    .line 563
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p4}, Lcom/android/camera/PhotoMenu;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->initialize(Lcom/android/camera/PreferenceGroup;)V

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    .line 568
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 569
    new-instance v0, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 570
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_3

    .line 575
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v5, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 576
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setPhotoMenu(Lcom/android/camera/PhotoMenu;)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 582
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 584
    invoke-virtual {p0, p3}, Lcom/android/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 585
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 586
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 587
    return-void
.end method

.method public onDisplayChanged()V
    .locals 2

    .line 1463
    const-string v0, "CAM_UI"

    const-string v1, "Device flip detected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->checkLayoutFlip()V

    .line 1465
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->updateCameraOrientation()V

    .line 1466
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 1454
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1456
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 1459
    return-void
.end method

.method public onFocusFailed(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .line 1422
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1423
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    .line 1424
    :cond_0
    return-void
.end method

.method public onFocusStarted()V
    .locals 1

    .line 1410
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1411
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 1412
    :cond_0
    return-void
.end method

.method public onFocusSucceeded(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .line 1416
    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1417
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    .line 1418
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 1359
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 1360
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1365
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mLocationDialog:Landroid/app/AlertDialog;

    .line 1366
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->animateSlideOutPreviewMenu()V

    .line 1369
    :cond_2
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .line 1207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1208
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1214
    :cond_1
    return-void
.end method

.method public onPieMoved(II)V
    .locals 4
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .line 1218
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->getBokehFocusSize()Landroid/util/Size;

    move-result-object v0

    .line 1220
    .local v0, "bokehCircle":Landroid/util/Size;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le p2, v1, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .local v1, "y":I
    goto :goto_0

    .line 1223
    .end local v1    # "y":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    .line 1225
    .restart local v1    # "y":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setX(F)V

    .line 1226
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setY(F)V

    .line 1227
    iget-boolean v2, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 1228
    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1229
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1231
    :cond_1
    return-void
.end method

.method public onPieOpened(II)V
    .locals 3
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 1195
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    invoke-virtual {v1}, Lcom/android/camera/ui/ModuleSwitcher;->closePopup()V

    .line 1200
    iget-boolean v1, p0, Lcom/android/camera/PhotoUI;->mIsBokehMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mBlurDegreeProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1203
    :cond_1
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 2
    .param p1, "previewFocused"    # Z

    .line 857
    if-eqz p1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->showUI()V

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_4

    .line 870
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 872
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_5

    .line 873
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 875
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI;->setShowMenu(Z)V

    .line 876
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 877
    :cond_6
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1060
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 827
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/PhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 828
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .line 1437
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1438
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1439
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1442
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1443
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1448
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1450
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-nez v0, :cond_0

    .line 784
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->overrideSettings([Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1429
    :cond_0
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 1159
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1160
    return-void
.end method

.method public removeDisplayChangeListener()V
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->removeDisplayChangeListener()V

    .line 1377
    return-void
.end method

.method public removeLevel2()V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->removeView(Landroid/view/View;)V

    .line 964
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public removeSceneModeMenu()V
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->cleanupListview()V

    .line 1054
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1434
    :cond_0
    return-void
.end method

.method public sendTouchToMenu(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1034
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1038
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public sendTouchToPreviewMenu(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1027
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1030
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAspectRatio(F)V
    .locals 4
    .param p1, "ratio"    # F

    .line 381
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_2

    .line 383
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mOrientationResize:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 384
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 386
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 389
    :cond_0
    const-string v0, "CAM_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAspectRatio() ratio["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "] mAspectRatio["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget v0, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 391
    iput-boolean v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatioResize:Z

    .line 392
    iput p1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraControls;->setPreviewRatio(FZ)V

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 396
    return-void

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setBokehRenderDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .line 1254
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieRenderer;->setBokehDegree(I)V

    .line 1257
    :cond_0
    return-void
.end method

.method public setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 812
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 1118
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1121
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

    .line 1122
    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isPreviewMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->dismissSceneModeMenu()V

    .line 1124
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->addModeBack()V

    .line 1126
    :cond_2
    iput p1, p0, Lcom/android/camera/PhotoUI;->mPreviewOrientation:I

    .line 1127
    return-void
.end method

.method public setDownFactor(I)V
    .locals 0
    .param p1, "factor"    # I

    .line 357
    iput p1, p0, Lcom/android/camera/PhotoUI;->mDownSampleFactor:I

    .line 358
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1405
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 1406
    return-void
.end method

.method public setMakeupMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 892
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    .line 893
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 1481
    iput p1, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    .line 1482
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CameraControls;->setOrientation(IZ)V

    .line 1483
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setOrientation(IZ)V

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/BokehLayout;->setOrientation(IZ)V

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1491
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_3

    .line 1492
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1493
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1494
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1495
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_4

    .line 1496
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    .line 1497
    :cond_4
    if-eqz v0, :cond_5

    .line 1498
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 1499
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    .line 1500
    .local v4, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1498
    .end local v4    # "l":Lcom/android/camera/ui/RotateLayout;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1504
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 1505
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1506
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_6

    .line 1507
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_8

    .line 1508
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateLayout;

    .line 1509
    .local v2, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1507
    .end local v2    # "l":Lcom/android/camera/ui/RotateLayout;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1512
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMakeupMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1513
    .local v1, "vg":Landroid/view/ViewGroup;
    if-eqz v1, :cond_8

    .line 1514
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_2
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_8

    .line 1515
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1516
    .local v3, "vewiGroup":Landroid/view/ViewGroup;
    instance-of v4, v3, Lcom/android/camera/ui/RotateLayout;

    if-eqz v4, :cond_7

    .line 1517
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    .line 1518
    .restart local v4    # "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1514
    .end local v3    # "vewiGroup":Landroid/view/ViewGroup;
    .end local v4    # "l":Lcom/android/camera/ui/RotateLayout;
    :cond_7
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_2

    .line 1525
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_9

    .line 1526
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1527
    :cond_9
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_a

    .line 1529
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayRotation(I)V

    .line 1531
    :cond_a
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_b

    .line 1532
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1534
    :cond_b
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 1535
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    .line 1536
    .local v0, "v":Lcom/android/camera/ui/RotateImageView;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1538
    .end local v0    # "v":Lcom/android/camera/ui/RotateImageView;
    :cond_c
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1470
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoMenu;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_0
    return-void
.end method

.method public setPreviewMenuLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 884
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mPreviewMenuLayout:Landroid/widget/LinearLayout;

    .line 885
    return-void
.end method

.method public setSurfaceTextureSizeChangedListener(Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .line 509
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceTextureSizeListener:Lcom/android/camera/PhotoUI$SurfaceTextureSizeChangedListener;

    .line 510
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1260
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1261
    return-void
.end method

.method public setSwitcherIndex()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setCurrentIndex(I)V

    .line 726
    return-void
.end method

.method public setlocationy(I)V
    .locals 1
    .param p1, "my"    # I

    .line 1642
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BokehLayout;->setSizeY(I)V

    .line 1643
    return-void
.end method

.method protected showCapturedImageForReview([BIZ)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "mirror"    # Z

    .line 1087
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->hideCameraSettings()V

    .line 1088
    new-instance v0, Lcom/android/camera/PhotoUI$DecodeImageForReview;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/PhotoUI$DecodeImageForReview;-><init>(Lcom/android/camera/PhotoUI;[BIZ)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    .line 1089
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mDecodeTaskForReview:Lcom/android/camera/PhotoUI$DecodeImageForReview;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1090
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1093
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1095
    iget v0, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideTopMenu(Z)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 1098
    return-void
.end method

.method public showFirstTimeHelp()V
    .locals 5

    .line 1554
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1555
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "help_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1556
    .local v1, "isMenuShown":Z
    if-nez v1, :cond_0

    .line 1557
    iget v2, p0, Lcom/android/camera/PhotoUI;->mTopMargin:I

    iget v3, p0, Lcom/android/camera/PhotoUI;->mBottomMargin:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/PhotoUI;->showFirstTimeHelp(II)V

    .line 1558
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1559
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "help_menu"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1560
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1562
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showPopup(Landroid/widget/ListView;IZ)V
    .locals 9
    .param p1, "popup"    # Landroid/widget/ListView;
    .param p2, "level"    # I
    .param p3, "animate"    # Z

    .line 897
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 899
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 900
    const/16 v1, 0x35

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 901
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v6, :cond_1

    .line 902
    new-instance v6, Lcom/android/camera/ui/RotateLayout;

    iget-object v7, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v6, v7, v3}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 903
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 904
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget v7, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    invoke-direct {v6, v7, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 908
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget v7, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    invoke-direct {v6, v7, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 912
    .restart local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v7, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v7, v6}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    iget-object v7, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 915
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v7, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v6, v7, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 916
    iget-object v6, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 918
    :cond_2
    const/4 v6, 0x2

    if-ne p2, v6, :cond_9

    .line 919
    iget-object v7, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    if-nez v7, :cond_3

    .line 920
    new-instance v7, Lcom/android/camera/ui/RotateLayout;

    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v7, v8, v3}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v7, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    .line 921
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 923
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-eq v3, v5, :cond_4

    .line 924
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_1

    .line 928
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v1, v2

    .line 932
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    iget v2, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_5

    goto :goto_2

    .line 933
    :cond_5
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 934
    .local v2, "screenHeight":I
    :goto_3
    move-object v3, p1

    check-cast v3, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v3}, Lcom/android/camera/ui/ListSubMenu;->getPreCalculatedHeight()I

    move-result v3

    .line 935
    .local v3, "height":I
    move-object v4, p1

    check-cast v4, Lcom/android/camera/ui/ListSubMenu;

    invoke-virtual {v4}, Lcom/android/camera/ui/ListSubMenu;->getYBase()I

    move-result v4

    .line 936
    .local v4, "yBase":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 937
    .local v7, "y":I
    add-int v8, v4, v3

    if-le v8, v2, :cond_7

    .line 938
    sub-int v8, v2, v3

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 939
    :cond_7
    iget-object v8, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    if-eq v8, v5, :cond_8

    .line 940
    sget v8, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    invoke-virtual {v1, v8, v7, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    .line 942
    :cond_8
    sget v8, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    invoke-virtual {v1, v0, v7, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 945
    :goto_4
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateLayout;->addView(Landroid/view/View;)V

    .line 948
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSubMenuLayout:Lcom/android/camera/ui/RotateLayout;

    iget v8, p0, Lcom/android/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v8, v5}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 950
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "screenHeight":I
    .end local v3    # "height":I
    .end local v4    # "yBase":I
    .end local v7    # "y":I
    :cond_9
    if-eqz p3, :cond_b

    .line 951
    if-ne p2, v5, :cond_a

    .line 952
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mMenuLayout:Lcom/android/camera/ui/RotateLayout;

    sget v2, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/PhotoMenu;->animateSlideIn(Landroid/view/View;IZ)V

    .line 953
    :cond_a
    if-ne p2, v6, :cond_c

    .line 954
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoMenu;->animateFadeIn(Landroid/widget/ListView;)V

    goto :goto_5

    .line 956
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAlpha(F)V

    .line 957
    :cond_c
    :goto_5
    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V
    .locals 4
    .param p1, "popup"    # Lcom/android/camera/ui/AbstractSettingPopup;

    .line 967
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUI()V

    .line 969
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    .line 971
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 972
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 973
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/android/camera/PhotoUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoUI$10;-><init>(Lcom/android/camera/PhotoUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 988
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 990
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 991
    return-void
.end method

.method public showPreferencesToast()V
    .locals 3

    .line 1328
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e03af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    .line 1332
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mNotSelectableToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1333
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .line 1336
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    return-void
.end method

.method public showRefocusDialog()V
    .locals 6

    .line 1565
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1566
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "refocus-prompt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1567
    .local v1, "prompt":I
    if-ne v1, v2, :cond_0

    .line 1568
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0231

    .line 1569
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0232

    .line 1570
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e03c1

    const/4 v4, 0x0

    .line 1571
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1572
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1573
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1574
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "refocus-prompt"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1575
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1578
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 595
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraControls;->showRefocusToast(Z)V

    .line 596
    return-void
.end method

.method public showRemainingPhotoCnt()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showRemainingPhotoCnt()V

    .line 694
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1273
    return-void
.end method

.method public showSwitcher()V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSwitcher:Lcom/android/camera/ui/ModuleSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModuleSwitcher;->setVisibility(I)V

    .line 722
    return-void
.end method

.method public showText(I)V
    .locals 2
    .param p1, "mShow"    # I

    .line 1610
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1611
    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_0

    .line 1635
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1632
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1633
    goto :goto_0

    .line 1629
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1630
    goto :goto_0

    .line 1626
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1627
    goto :goto_0

    .line 1623
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1624
    goto :goto_0

    .line 1620
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehText:Landroid/widget/TextView;

    const v1, 0x7f0e044b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1621
    goto :goto_0

    .line 1617
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BokehLayout;->setVisibility(I)V

    .line 1618
    goto :goto_0

    .line 1614
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mBokehLayout:Lcom/android/camera/ui/BokehLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/BokehLayout;->setVisibility(I)V

    .line 1615
    nop

    .line 1639
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showUI()V
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->isMenuBeingShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mUIhidden:Z

    .line 708
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraControls;->showUI()V

    .line 709
    return-void

    .line 706
    :cond_1
    :goto_0
    return-void
.end method

.method public showUIAfterCountDown()V
    .locals 2

    .line 1586
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoMenu;->hideCameraControls(Z)V

    .line 1587
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1588
    return-void
.end method

.method public showWaitingProgress(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 1600
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mProgressDialog:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1603
    :cond_1
    return-void
.end method

.method public startCountDown(IZ)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoUI;->initializeCountDown()V

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->startCountDown(IZ)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI;->hideUIWhileCountDown()V

    .line 1299
    return-void
.end method

.method public startSelfieFlash()V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->bringToFront()V

    .line 1305
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->open()V

    .line 1306
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->setScreenBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    .line 1307
    return-void
.end method

.method public stopSelfieFlash()V
    .locals 2

    .line 1310
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->close()V

    .line 1313
    iget v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1314
    iget v0, p0, Lcom/android/camera/PhotoUI;->mScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoUI;->setScreenBrightness(F)F

    .line 1315
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 515
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
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

    .line 517
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 518
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/PhotoController;->onPreviewRectChanged(Landroid/graphics/Rect;)V

    .line 520
    iget-boolean v1, p0, Lcom/android/camera/PhotoUI;->mSurfaceResized:Z

    if-nez v1, :cond_0

    .line 521
    iget v1, p0, Lcom/android/camera/PhotoUI;->mAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoUI;->layoutPreview(F)V

    .line 524
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 528
    const-string v0, "CAM_UI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iput-object p1, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 530
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIReady()V

    .line 531
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceCreated:Z

    .line 535
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 539
    const-string v0, "CAM_UI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 541
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onPreviewUIDestroyed()V

    .line 542
    return-void
.end method

.method public tryToCloseSubList()V
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mMenu:Lcom/android/camera/PhotoMenu;

    invoke-virtual {v0}, Lcom/android/camera/PhotoMenu;->tryToCloseSubList()V

    .line 1543
    :cond_0
    return-void
.end method

.method public updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "group"    # Lcom/android/camera/PreferenceGroup;
    .param p3, "prefs"    # Lcom/android/camera/ComboPreferences;

    .line 790
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 793
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v1

    .line 792
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V

    .line 794
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 795
    const/4 v0, -0x1

    .line 796
    .local v0, "wbIndex":I
    const-string v1, "auto"

    .line 797
    .local v1, "wb":Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    .line 800
    :cond_1
    const-string v2, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 801
    .local v2, "pref":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    .line 802
    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 806
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    if-gez v0, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 807
    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {p3, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    .line 808
    .local v3, "location":Z
    iget-object v4, p0, Lcom/android/camera/PhotoUI;->mOnScreenIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v4, v3}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 809
    return-void

    .line 790
    .end local v0    # "wbIndex":I
    .end local v1    # "wb":Ljava/lang/String;
    .end local v2    # "pref":Lcom/android/camera/ListPreference;
    .end local v3    # "location":Z
    :cond_4
    :goto_1
    return-void
.end method

.method public updateRemainingPhotos(I)V
    .locals 1
    .param p1, "remaining"    # I

    .line 1477
    iget-object v0, p0, Lcom/android/camera/PhotoUI;->mCameraControls:Lcom/android/camera/ui/CameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraControls;->updateRemainingPhotos(I)V

    .line 1478
    return-void
.end method
