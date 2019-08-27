.class public Lcom/android/camera/CaptureUI;
.super Ljava/lang/Object;
.source "CaptureUI.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
.implements Lcom/android/camera/FocusOverlayManager$FocusUI;
.implements Lcom/android/camera/PauseButton$OnPauseButtonListener;
.implements Lcom/android/camera/PreviewGestures$SingleTapListener;
.implements Lcom/android/camera/SettingsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureUI$DecodeImageForReview;,
        Lcom/android/camera/CaptureUI$DecodeTask;,
        Lcom/android/camera/CaptureUI$ZoomChangeListener;,
        Lcom/android/camera/CaptureUI$MonoDummyListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final AUTOMATIC_MODE:I = 0x0

.field private static final CLICK_THRESHOLD:I = 0xc8

.field private static final FILTER_MENU_IN_ANIMATION:I = 0x1

.field private static final FILTER_MENU_NONE:I = 0x0

.field private static final FILTER_MENU_ON:I = 0x2

.field private static final HIGHLIGHT_COLOR:I = -0xcc4a1b

.field private static final TAG:Ljava/lang/String; = "SnapCam_CaptureUI"


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private callbackMono:Landroid/view/SurfaceHolder$Callback;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBokehSeekBar:Landroid/widget/SeekBar;

.field private mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

.field private mBokehTipText:Landroid/widget/TextView;

.field private mBottomMargin:I

.field private mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

.field private mCancelButton:Landroid/widget/ImageView;

.field private mCountDownView:Lcom/android/camera/ui/CountDownView;

.field private mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDownSampleFactor:I

.field private mExitBestMode:Landroid/widget/ImageView;

.field private mFaceView:Lcom/android/camera/ui/Camera2FaceView;

.field private mFilterLayout:Landroid/view/ViewGroup;

.field private mFilterMenuStatus:I

.field private mFilterModeSwitcher:Landroid/view/View;

.field private mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

.field private mFrontBackSwitcher:Landroid/view/View;

.field private mGestures:Lcom/android/camera/PreviewGestures;

.field private mIsMonoDummyAllocationEverUsed:Z

.field private mIsSceneModeLabelClose:Z

.field private mIsVideoUI:Z

.field private mMakeupButton:Landroid/widget/ImageView;

.field private mMakeupSeekBar:Landroid/widget/SeekBar;

.field private mMakeupSeekBarLayout:Landroid/view/View;

.field private mMenuHelp:Lcom/android/camera/ui/MenuHelp;

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mMonoDummyAllocation:Landroid/renderscript/Allocation;

.field private mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

.field private mMuteButton:Lcom/android/camera/ui/RotateImageView;

.field private mOrientation:I

.field private mPauseButton:Lcom/android/camera/PauseButton;

.field private mPieRenderer:Lcom/android/camera/ui/PieRenderer;

.field private mPreviewCover:Landroid/view/View;

.field mPreviewHeight:I

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field mPreviewWidth:I

.field private mProModeCloseButton:Landroid/view/View;

.field private mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mReviewCancelButton:Landroid/view/View;

.field private mReviewDoneButton:Landroid/view/View;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Landroid/view/View;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

.field private mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

.field private mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

.field private mSceneModeLabelView:Landroid/widget/LinearLayout;

.field private mSceneModeName:Landroid/widget/TextView;

.field private mSceneModeSwitcher:Landroid/view/View;

.field private mScreenBrightness:F

.field private mScreenRatio:I

.field private mSeekbarBody:Landroid/view/View;

.field private mSeekbarToggleButton:Landroid/widget/ImageView;

.field private mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderMono:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

.field private mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTimeLapseLabel:Landroid/view/View;

.field private mTopMargin:I

.field private mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

.field private mUIhidden:Z

.field private mVideoButton:Landroid/widget/ImageView;

.field private mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V
    .locals 11
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;
    .param p3, "parent"    # Landroid/view/View;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    .line 122
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    .line 126
    new-instance v1, Lcom/android/camera/CaptureUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$1;-><init>(Lcom/android/camera/CaptureUI;)V

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    .line 143
    new-instance v1, Lcom/android/camera/CaptureUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$2;-><init>(Lcom/android/camera/CaptureUI;)V

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 180
    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    .line 182
    iput v0, p0, Lcom/android/camera/CaptureUI;->mScreenRatio:I

    .line 183
    iput v0, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    .line 184
    iput v0, p0, Lcom/android/camera/CaptureUI;->mBottomMargin:I

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 218
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/CaptureUI;->mDownSampleFactor:I

    .line 219
    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    .line 223
    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsSceneModeLabelClose:Z

    .line 256
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 257
    iput-object p2, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    .line 258
    iput-object p3, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    .line 259
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 260
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p0}, Lcom/android/camera/SettingsManager;->registerListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 261
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    const v4, 0x7f040006

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    .line 265
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AutoFitSurfaceView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 266
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 267
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 268
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    new-instance v2, Lcom/android/camera/CaptureUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$3;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 281
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AutoFitSurfaceView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 282
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/AutoFitSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    .line 284
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 286
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RenderOverlay;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 287
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ShutterButton;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 288
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    .line 289
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    .line 290
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    .line 291
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    .line 292
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    .line 293
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    .line 294
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    .line 295
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarBody:Landroid/view/View;

    .line 296
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    .line 297
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/CaptureUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$4;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    .line 310
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/CaptureUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$5;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 325
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/CaptureUI$6;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/CaptureUI$6;-><init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->setMakeupButtonIcon()V

    .line 335
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FlashToggleButton;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    .line 336
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mProModeCloseButton:Landroid/view/View;

    .line 337
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mProModeCloseButton:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$7;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    .line 344
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/camera/CaptureUI$8;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/CaptureUI$8;-><init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 363
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    .line 364
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFilterModeButton()V

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initSceneModeButton()V

    .line 367
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initSwitchCamera()V

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFlashButton()V

    .line 369
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 371
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 372
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    .line 373
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mTimeLapseLabel:Landroid/view/View;

    .line 374
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PauseButton;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    .line 375
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/PauseButton;->setOnPauseButtonListener(Lcom/android/camera/PauseButton$OnPauseButtonListener;)V

    .line 377
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    .line 378
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isAudioMute()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureUI;->setMuteButtonResource(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    new-instance v4, Lcom/android/camera/CaptureUI$9;

    invoke-direct {v4, p0}, Lcom/android/camera/CaptureUI$9;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/camera/CaptureUI$10;

    invoke-direct {v4, p0}, Lcom/android/camera/CaptureUI$10;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    .line 398
    .local v1, "muteButton":Lcom/android/camera/ui/RotateImageView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 400
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v5, 0x7f0d00d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    .line 401
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v5, 0x7f0d00d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    .line 402
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v5, 0x7f0d00d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    .line 403
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/camera/CaptureUI$11;

    invoke-direct {v5, p0}, Lcom/android/camera/CaptureUI$11;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v5, 0x7f0d0019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/OneUICameraControls;

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    .line 412
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v5, 0x7f0d0034

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/Camera2FaceView;

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    .line 414
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v5, 0x7f0d007d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mCancelButton:Landroid/widget/ImageView;

    .line 415
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v4

    .line 416
    .local v4, "intentMode":I
    if-eqz v4, :cond_0

    .line 417
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/OneUICameraControls;->setIntentMode(I)V

    .line 418
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v5, v0}, Lcom/android/camera/ui/OneUICameraControls;->setVideoMode(Z)V

    .line 419
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0d0043

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewCancelButton:Landroid/view/View;

    .line 421
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0d0041

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    .line 422
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0d0042

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    .line 423
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0d0040

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewPlayButton:Landroid/view/View;

    .line 424
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0d003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    .line 425
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0d003f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewImage:Landroid/widget/ImageView;

    .line 426
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewCancelButton:Landroid/view/View;

    new-instance v6, Lcom/android/camera/CaptureUI$12;

    invoke-direct {v6, p0}, Lcom/android/camera/CaptureUI$12;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v6, Lcom/android/camera/CaptureUI$13;

    invoke-direct {v6, p0}, Lcom/android/camera/CaptureUI$13;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v6, Lcom/android/camera/CaptureUI$14;

    invoke-direct {v6, p0, v4}, Lcom/android/camera/CaptureUI$14;-><init>(Lcom/android/camera/CaptureUI;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mReviewPlayButton:Landroid/view/View;

    new-instance v6, Lcom/android/camera/CaptureUI$15;

    invoke-direct {v6, p0}, Lcom/android/camera/CaptureUI$15;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mCancelButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/camera/CaptureUI$16;

    invoke-direct {v6, p0}, Lcom/android/camera/CaptureUI$16;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_0
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 465
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Lcom/android/camera/util/CameraUtil;->determineRatio(II)I

    move-result v5

    iput v5, p0, Lcom/android/camera/CaptureUI;->mScreenRatio:I

    .line 466
    iget v5, p0, Lcom/android/camera/CaptureUI;->mScreenRatio:I

    if-ne v5, v3, :cond_2

    .line 467
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 468
    .local v5, "l":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 469
    .local v6, "tm":I
    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c008d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 470
    .local v7, "bm":I
    div-int/lit8 v8, v5, 0x4

    mul-int/2addr v8, v6

    add-int v9, v6, v7

    div-int/2addr v8, v9

    iput v8, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    .line 471
    div-int/lit8 v8, v5, 0x4

    iget v9, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/camera/CaptureUI;->mBottomMargin:I

    .line 474
    .end local v5    # "l":I
    .end local v6    # "tm":I
    .end local v7    # "bm":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-nez v5, :cond_3

    .line 475
    new-instance v5, Lcom/android/camera/ui/PieRenderer;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v5, v6}, Lcom/android/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 476
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 479
    :cond_3
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v5, :cond_4

    .line 480
    new-instance v5, Lcom/android/camera/ui/ZoomRenderer;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v5, v6}, Lcom/android/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    .line 481
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 484
    :cond_4
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    if-nez v5, :cond_5

    .line 485
    new-instance v5, Lcom/android/camera/ui/TrackingFocusRenderer;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-direct {v5, v6, v7, p0}, Lcom/android/camera/ui/TrackingFocusRenderer;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureUI;)V

    iput-object v5, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    .line 486
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RenderOverlay;->addRenderer(Lcom/android/camera/ui/RenderOverlay$Renderer;)V

    .line 488
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 489
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    goto :goto_1

    .line 491
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 494
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-nez v0, :cond_7

    .line 496
    new-instance v0, Lcom/android/camera/PreviewGestures;

    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v8, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    iget-object v9, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    iget-object v10, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/PreviewGestures;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/TrackingFocusRenderer;)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    .line 497
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RenderOverlay;->setGestures(Lcom/android/camera/PreviewGestures;)V

    .line 500
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0, v3}, Lcom/android/camera/PreviewGestures;->setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V

    .line 501
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->requestLayout()V

    .line 503
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 504
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 505
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showFirstTimeHelp()V

    .line 506
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CaptureUI;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .line 93
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CaptureUI;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->toggleMakeup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CaptureUI;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CaptureUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Z

    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureUI;->setMuteButtonResource(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/camera/CaptureUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/camera/CaptureUI;->mIsSceneModeLabelClose:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/CaptureUI;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CaptureUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CaptureUI;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .line 93
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/CaptureUI;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/CaptureUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .line 93
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/CaptureUI;)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/CaptureUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/MenuHelp;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CaptureUI;Lcom/android/camera/ui/MenuHelp;)Lcom/android/camera/ui/MenuHelp;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Lcom/android/camera/ui/MenuHelp;

    .line 93
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/CaptureUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget v0, p0, Lcom/android/camera/CaptureUI;->mDownSampleFactor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->previewUIReady()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureUI$DecodeImageForReview;)Lcom/android/camera/CaptureUI$DecodeImageForReview;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;
    .param p1, "x1"    # Lcom/android/camera/CaptureUI$DecodeImageForReview;

    .line 93
    iput-object p1, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/TrackingFocusRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/AutoFitSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CaptureUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->previewUIDestroyed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CaptureUI;)Lcom/android/camera/ui/Camera2FaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CaptureUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarBody:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CaptureUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureUI;

    .line 93
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateSlideOut(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1073
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1075
    :cond_0
    iput v1, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    .line 1077
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1078
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    nop

    .line 1079
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const-wide/16 v3, 0x12c

    if-ne v1, v2, :cond_1

    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1082
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1084
    :goto_0
    new-instance v1, Lcom/android/camera/CaptureUI$25;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$25;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1104
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1105
    return-void

    .line 1074
    .end local v0    # "vp":Landroid/view/ViewPropertyAnimator;
    :cond_2
    :goto_1
    return-void
.end method

.method private enableView(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    .line 775
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/camera/SettingsManager$Values;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SettingsManager$Values;

    .line 776
    .local v1, "values":Lcom/android/camera/SettingsManager$Values;
    if-eqz v1, :cond_1

    .line 777
    iget-object v2, v1, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 778
    .local v2, "enabled":Z
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 780
    .end local v2    # "enabled":Z
    :cond_1
    return-void
.end method

.method private getCurrentIntentMode()I
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    return v0
.end method

.method private getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    return-object v0

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    :goto_0
    return-object v0
.end method

.method private getScreenWidth()I
    .locals 3

    .line 897
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 898
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 899
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v1
.end method

.method private handleBackKeyOnMenu()Z
    .locals 2

    .line 1277
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 1279
    return v0

    .line 1281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initializeCountDown()V
    .locals 4

    .line 1369
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f040007

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1371
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    .line 1372
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V

    .line 1373
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->bringToFront()V

    .line 1374
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    iget v1, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1375
    return-void
.end method

.method private needShowInstructional()Z
    .locals 7

    .line 818
    const/4 v0, 0x1

    .line 819
    .local v0, "needShow":Z
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 820
    invoke-static {v2}, Lcom/android/camera/ComboPreferences;->getGlobalSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 819
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 821
    .local v1, "pref":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v4}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v2

    .line 822
    .local v2, "index":I
    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 823
    const/4 v0, 0x0

    goto :goto_0

    .line 825
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_camera2_scenemode_key_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 826
    .local v5, "instructionalKey":Ljava/lang/String;
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v4

    move v0, v3

    .line 829
    .end local v5    # "instructionalKey":Ljava/lang/String;
    :goto_0
    return v0
.end method

.method private previewUIDestroyed()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onPreviewUIDestroyed()V

    .line 245
    return-void
.end method

.method private previewUIReady()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onPreviewUIReady()V

    .line 229
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 233
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    .line 235
    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateThumbnail(Landroid/widget/ImageView;)V

    .line 241
    :cond_3
    :goto_0
    return-void
.end method

.method private rotationSceneModeInstructionalDialog(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .line 903
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 904
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getScreenWidth()I

    move-result v0

    .line 905
    .local v0, "screenWidth":I
    mul-int/lit8 v1, v0, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 906
    .local v1, "dialogSize":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 907
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 908
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 909
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 910
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 911
    const v4, 0x7f0d00cf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 912
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 913
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    return-void
.end method

.method private setMakeupButtonIcon()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_makeup_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureUI$17;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CaptureUI$17;-><init>(Lcom/android/camera/CaptureUI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method private setMuteButtonResource(Z)V
    .locals 2
    .param p1, "isUnMute"    # Z

    .line 810
    if-eqz p1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 815
    :goto_0
    return-void
.end method

.method private setScreenBrightness(F)F
    .locals 3
    .param p1, "brightness"    # F

    .line 1744
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1745
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1746
    .local v1, "layout":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1747
    .local v2, "originalBrightness":F
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1748
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1749
    return v2
.end method

.method private showFirstTimeHelp(II)V
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .line 1600
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MenuHelp;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    .line 1601
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setForCamera2(Z)V

    .line 1602
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setVisibility(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setMargins(II)V

    .line 1604
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    new-instance v1, Lcom/android/camera/CaptureUI$28;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$28;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MenuHelp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1613
    return-void
.end method

.method private showSceneInstructionalDialog(I)V
    .locals 17
    .param p1, "orientation"    # I

    move-object/from16 v1, p0

    .line 834
    move/from16 v2, p1

    const v0, 0x7f040033

    .line 835
    .local v0, "layoutId":I
    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 838
    .end local v0    # "layoutId":I
    .local v3, "layoutId":I
    :cond_0
    :goto_0
    move v3, v0

    goto :goto_2

    .line 836
    .end local v3    # "layoutId":I
    .restart local v0    # "layoutId":I
    :cond_1
    :goto_1
    const v0, 0x7f040034

    goto :goto_0

    .line 838
    .end local v0    # "layoutId":I
    .restart local v3    # "layoutId":I
    :goto_2
    iget-object v0, v1, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "layout_inflater"

    .line 839
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/LayoutInflater;

    .line 840
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 842
    .local v5, "view":Landroid/view/View;
    iget-object v0, v1, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v6, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v6}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v6

    .line 843
    .local v6, "index":I
    const v0, 0x7f0d00d1

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 844
    .local v7, "name":Landroid/widget/TextView;
    iget-object v0, v1, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v8, "pref_camera2_scenemode_key"

    .line 845
    invoke-virtual {v0, v8}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 846
    .local v8, "sceneModeNameArray":[Ljava/lang/CharSequence;
    aget-object v0, v8, v6

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    const v0, 0x7f0d00d0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 849
    .local v9, "icon":Landroid/widget/ImageView;
    iget-object v0, v1, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v10, "pref_camera2_scenemode_instructional"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/android/camera/SettingsManager;->getResource(Ljava/lang/String;I)[I

    move-result-object v10

    .line 851
    .local v10, "resId":[I
    aget v0, v10, v6

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 853
    const v0, 0x7f0d00d2

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 854
    .local v11, "instructional":Landroid/widget/TextView;
    iget-object v0, v1, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v12, "pref_camera2_scenemode_instructional"

    .line 855
    invoke-virtual {v0, v12}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 856
    .local v12, "instructionalArray":[Ljava/lang/CharSequence;
    aget-object v0, v12, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 858
    return-void

    .line 860
    :cond_2
    aget-object v0, v12, v6

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    const v0, 0x7f0d00d3

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/CheckBox;

    .line 863
    .local v13, "remember":Landroid/widget/CheckBox;
    const v0, 0x7f0d00d5

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 864
    .local v14, "ok":Landroid/widget/Button;
    new-instance v0, Lcom/android/camera/CaptureUI$23;

    invoke-direct {v0, v1, v13, v6}, Lcom/android/camera/CaptureUI$23;-><init>(Lcom/android/camera/CaptureUI;Landroid/widget/CheckBox;I)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v15, v1, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    move/from16 v16, v3

    const/4 v3, 0x3

    .end local v3    # "layoutId":I
    .local v16, "layoutId":I
    invoke-direct {v0, v15, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 884
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 886
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    nop

    .line 891
    if-eqz v2, :cond_3

    .line 892
    invoke-direct {v1, v5, v2}, Lcom/android/camera/CaptureUI;->rotationSceneModeInstructionalDialog(Landroid/view/View;I)V

    .line 894
    :cond_3
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 889
    return-void
.end method

.method private showSceneModeLabel()V
    .locals 5

    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsSceneModeLabelClose:Z

    .line 918
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v1

    .line 919
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 920
    .local v2, "sceneModeNameArray":[Ljava/lang/CharSequence;
    if-lez v1, :cond_0

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 921
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 923
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mExitBestMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    :goto_0
    return-void
.end method

.method private toggleMakeup()V
    .locals 5

    .line 539
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_makeup_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    if-nez v1, :cond_1

    .line 541
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_makeup_key"

    const-string v4, "50"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 543
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 544
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarBody:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSeekbarToggleButton:Landroid/widget/ImageView;

    const v2, 0x7f020171

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_makeup_key"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 550
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupSeekBarLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->setMakeupButtonIcon()V

    .line 553
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    .line 555
    :cond_1
    return-void
.end method


# virtual methods
.method public addFilterMode()V
    .locals 29

    .line 965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_coloreffect_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 966
    return-void

    .line 968
    :cond_0
    iget-object v1, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 969
    .local v1, "rotation":I
    iget-object v2, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->isDefaultToPortrait(Landroid/app/Activity;)Z

    move-result v2

    .line 970
    .local v2, "mIsDefaultToPortrait":Z
    if-nez v2, :cond_1

    .line 971
    add-int/lit8 v3, v1, 0x5a

    rem-int/lit16 v1, v3, 0x168

    .line 973
    :cond_1
    iget-object v3, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 974
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 975
    .local v4, "display":Landroid/view/Display;
    iget-object v5, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v6, "pref_camera2_coloreffect_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/SettingsManager;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 977
    .local v5, "entries":[Ljava/lang/CharSequence;
    iget-object v6, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 978
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x7f0c0086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 979
    const v8, 0x7f0c0088

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v7, v9

    float-to-int v7, v7

    .line 980
    .local v7, "height":I
    const v11, 0x7f0c0087

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 981
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    mul-float/2addr v10, v8

    add-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v8, v11

    .line 984
    .local v8, "width":I
    const/4 v9, 0x0

    if-eqz v1, :cond_3

    const/16 v10, 0xb4

    if-ne v1, v10, :cond_2

    goto :goto_0

    :cond_2
    move v10, v9

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v10, 0x1

    .line 985
    .local v10, "portrait":Z
    :goto_1
    move v11, v7

    .line 986
    .local v11, "size":I
    if-nez v10, :cond_4

    .line 987
    const v12, 0x7f040045

    .line 988
    .local v12, "gridRes":I
    move v11, v8

    goto :goto_2

    .line 990
    .end local v12    # "gridRes":I
    :cond_4
    const v12, 0x7f040012

    .line 993
    .restart local v12    # "gridRes":I
    :goto_2
    iget-object v13, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v14, "pref_camera2_coloreffect_key"

    invoke-virtual {v13, v14, v9}, Lcom/android/camera/SettingsManager;->getResource(Ljava/lang/String;I)[I

    move-result-object v13

    .line 995
    .local v13, "thumbnails":[I
    iget-object v14, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 997
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/FrameLayout;

    .line 999
    .local v15, "gridOuterLayout":Landroid/widget/FrameLayout;
    const v9, 0x106000d

    invoke-virtual {v15, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1000
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 1001
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    .line 1002
    new-instance v9, Landroid/widget/LinearLayout;

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v1    # "rotation":I
    .local v17, "rotation":I
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    .line 1004
    const/4 v1, 0x0

    .line 1005
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, -0x1

    if-nez v10, :cond_5

    .line 1006
    move-object/from16 v18, v1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v11, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1007
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    iget-object v9, v0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v19, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1010
    .end local v19    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v18, v1

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v1, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1011
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    iget-object v9, v0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1013
    iget-object v1, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v9

    const/16 v16, 0x2

    mul-int v16, v16, v11

    sub-int v9, v9, v16

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setY(F)V

    .line 1015
    move-object/from16 v19, v20

    .end local v20    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    const v1, 0x7f0d0062

    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1018
    .local v1, "gridLayout":Landroid/widget/LinearLayout;
    array-length v9, v5

    new-array v9, v9, [Landroid/view/View;

    .line 1020
    .local v9, "views":[Landroid/view/View;
    move/from16 v21, v2

    iget-object v2, v0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .end local v2    # "mIsDefaultToPortrait":Z
    .local v21, "mIsDefaultToPortrait":Z
    move-object/from16 v22, v3

    const-string v3, "pref_camera2_coloreffect_key"

    .end local v3    # "wm":Landroid/view/WindowManager;
    .local v22, "wm":Landroid/view/WindowManager;
    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v2

    .line 1021
    .local v2, "init":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    move-object/from16 v23, v4

    array-length v4, v5

    .end local v4    # "display":Landroid/view/Display;
    .local v23, "display":Landroid/view/Display;
    if-ge v3, v4, :cond_7

    .line 1022
    const v4, 0x7f040011

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v14, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "height":I
    .local v24, "r":Landroid/content/res/Resources;
    .local v25, "height":I
    check-cast v4, Lcom/android/camera/ui/RotateLayout;

    .line 1024
    .local v4, "filterBox":Lcom/android/camera/ui/RotateLayout;
    const v6, 0x7f0d0053

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1025
    .local v6, "imageView":Landroid/widget/ImageView;
    move/from16 v26, v3

    .line 1027
    .local v26, "j":I
    new-instance v7, Lcom/android/camera/CaptureUI$24;

    move/from16 v27, v8

    move/from16 v8, v26

    invoke-direct {v7, v0, v8, v9}, Lcom/android/camera/CaptureUI$24;-><init>(Lcom/android/camera/CaptureUI;I[Landroid/view/View;)V

    .end local v26    # "j":I
    .local v8, "j":I
    .local v27, "width":I
    invoke-virtual {v4, v7}, Lcom/android/camera/ui/RotateLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1049
    aput-object v6, v9, v8

    .line 1050
    if-ne v3, v2, :cond_6

    .line 1051
    const v7, -0xcc4a1b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1052
    :cond_6
    const v7, 0x7f0d0061

    invoke-virtual {v4, v7}, Lcom/android/camera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1054
    .local v7, "label":Landroid/widget/TextView;
    move/from16 v28, v2

    aget v2, v13, v3

    .end local v2    # "init":I
    .local v28, "init":I
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    aget-object v2, v5, v3

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1021
    .end local v4    # "filterBox":Lcom/android/camera/ui/RotateLayout;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "label":Landroid/widget/TextView;
    .end local v8    # "j":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v23

    move-object/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v27

    move/from16 v2, v28

    goto :goto_4

    .line 1058
    .end local v3    # "i":I
    .end local v24    # "r":Landroid/content/res/Resources;
    .end local v25    # "height":I
    .end local v27    # "width":I
    .end local v28    # "init":I
    .restart local v2    # "init":I
    .local v6, "r":Landroid/content/res/Resources;
    .local v7, "height":I
    .local v8, "width":I
    :cond_7
    move/from16 v28, v2

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v27, v8

    .end local v2    # "init":I
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "height":I
    .end local v8    # "width":I
    .restart local v24    # "r":Landroid/content/res/Resources;
    .restart local v25    # "height":I
    .restart local v27    # "width":I
    .restart local v28    # "init":I
    iget-object v2, v0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1059
    return-void
.end method

.method public adjustOrientation()V
    .locals 2

    .line 1522
    iget v0, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureUI;->setOrientation(IZ)V

    .line 1523
    return-void
.end method

.method public animateFadeIn(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1068
    .local v0, "vp":Landroid/view/ViewPropertyAnimator;
    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1069
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1070
    return-void
.end method

.method public animateSlideIn(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "forcePortrait"    # Z

    .line 1108
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->getOrientation()I

    move-result v0

    .line 1109
    .local v0, "orientation":I
    if-nez p3, :cond_0

    .line 1110
    const/4 v0, 0x0

    .line 1112
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1114
    .local v1, "vp":Landroid/view/ViewPropertyAnimator;
    const/4 v2, 0x1

    .line 1115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/16 v4, 0x10e

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    if-ne v2, v3, :cond_5

    .line 1116
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 1134
    .local v2, "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1135
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .end local v2    # "dest":F
    goto :goto_0

    .line 1128
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1129
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1130
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1131
    goto :goto_0

    .line 1123
    .end local v2    # "dest":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 1124
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1125
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1126
    goto :goto_0

    .line 1118
    .end local v2    # "dest":F
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1119
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    neg-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1120
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1121
    nop

    .line 1136
    .end local v2    # "dest":F
    :goto_0
    goto :goto_1

    .line 1139
    :cond_5
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_1

    .line 1156
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 1157
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1158
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .end local v2    # "dest":F
    goto :goto_1

    .line 1151
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1152
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1153
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1154
    goto :goto_1

    .line 1146
    .end local v2    # "dest":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    .line 1147
    .restart local v2    # "dest":F
    int-to-float v3, p2

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    .line 1148
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1149
    goto :goto_1

    .line 1141
    .end local v2    # "dest":F
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 1142
    .restart local v2    # "dest":F
    int-to-float v3, p2

    sub-float v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    .line 1143
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1144
    nop

    .line 1162
    .end local v2    # "dest":F
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1163
    return-void
.end method

.method public arePreviewControlsVisible()Z
    .locals 1

    .line 1252
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public cancelCountDown()V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    return-void

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1384
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showUIAfterCountDown()V

    .line 1385
    return-void
.end method

.method public cleanUpMenus()V
    .locals 2

    .line 1223
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showUI()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 1225
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1226
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1442
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 1446
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1447
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 1448
    :cond_0
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 3

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/OneUICameraControls;->showRefocusToast(Z)V

    .line 1417
    return v0
.end method

.method public doShutterAnimation()V
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1202
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1203
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1204
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 674
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 677
    :cond_0
    return-void
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1262
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1265
    :cond_0
    return-void
.end method

.method public enableVideo(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1271
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1274
    :cond_0
    return-void
.end method

.method public getBokehTipRct()Lcom/android/camera/ui/RotateLayout;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method public getBokehTipView()Landroid/widget/TextView;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCurrentProMode()I
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/OneUICameraControls;->getPromode()I

    move-result v0

    return v0
.end method

.method public getDisplaySize()Landroid/graphics/Point;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMonoDummySurface()Landroid/view/Surface;
    .locals 6

    .line 1327
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 1329
    .local v0, "rs":Landroid/renderscript/RenderScript;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1330
    .local v1, "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    iget v2, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1331
    iget v2, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1332
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1333
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    const/16 v3, 0x21

    invoke-static {v0, v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 1334
    invoke-static {v0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    .line 1335
    .local v2, "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 1337
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_mono_preview_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1338
    new-instance v3, Landroid/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1339
    .local v3, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget v4, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1340
    iget v4, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1341
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/16 v5, 0x41

    invoke-static {v0, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    .line 1342
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 1343
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v5, Lcom/android/camera/CaptureUI$27;

    invoke-direct {v5, p0}, Lcom/android/camera/CaptureUI$27;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1350
    .end local v3    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    new-instance v4, Lcom/android/camera/CaptureUI$MonoDummyListener;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/CaptureUI$MonoDummyListener;-><init>(Lcom/android/camera/CaptureUI;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V

    invoke-virtual {v3, v4}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 1352
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    .line 1354
    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local v1    # "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    .end local v2    # "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1585
    iget v0, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceViewSize()Landroid/graphics/Point;
    .locals 3

    .line 1516
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1517
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1518
    :cond_0
    return-object v0
.end method

.method public getTrackingFocusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    return-object v0
.end method

.method public getVideoButton()Landroid/widget/ImageView;
    .locals 1

    .line 1849
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasFaces()Z
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideCameraControls(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 1176
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1177
    .local v0, "status":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 1178
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1183
    :cond_6
    return-void
.end method

.method public hidePreviewCover()V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    :cond_0
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .line 1753
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1754
    return-void
.end method

.method public hideUI()V
    .locals 2

    .line 1215
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    if-eqz v0, :cond_0

    .line 1216
    return-void

    .line 1217
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    .line 1218
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/OneUICameraControls;->hideUI()V

    .line 1220
    return-void
.end method

.method public hideUIWhileCountDown()V
    .locals 2

    .line 1166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->hideCameraControls(Z)V

    .line 1167
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1168
    return-void
.end method

.method public hideUIwhileRecording()V
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setVideoMode(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_makeup_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 948
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 949
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 950
    return-void
.end method

.method public initFilterModeButton()V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const-string v2, "pref_camera2_coloreffect_key"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$22;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$22;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    return-void
.end method

.method public initFlashButton()V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashToggleButton;->init(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public initSceneModeButton()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$21;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$21;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    return-void
.end method

.method public initSwitchCamera()V
    .locals 5

    .line 707
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_id_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "value":Ljava/lang/String;
    const-string v1, "SnapCam_CaptureUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value of KEY_CAMERA_ID is null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    if-nez v0, :cond_1

    .line 711
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    new-instance v2, Lcom/android/camera/CaptureUI$20;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$20;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    return-void
.end method

.method public initializeBokehMode(Z)V
    .locals 5
    .param p1, "bokehmode"    # Z

    .line 611
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 613
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 614
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_camera2_bokeh_blur_key"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 615
    .local v2, "progress":I
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 616
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 617
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "progress":I
    goto :goto_0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mBokehSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 624
    :goto_0
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 2

    .line 1186
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    .line 1187
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/CaptureUI$26;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureUI$26;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setIntentMode(I)V

    .line 1198
    :cond_0
    return-void
.end method

.method public initializeFirstTime()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    .line 638
    .local v0, "intentMode":I
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 640
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 644
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 647
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 648
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v2, Lcom/android/camera/CaptureUI$18;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$18;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/CaptureUI$19;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureUI$19;-><init>(Lcom/android/camera/CaptureUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    return-void
.end method

.method public initializeProMode(Z)V
    .locals 2
    .param p1, "promode"    # Z

    .line 603
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/OneUICameraControls;->setProMode(Z)V

    .line 604
    if-eqz p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    :cond_1
    :goto_0
    return-void
.end method

.method public initializeZoom(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 664
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->getMaxZoom(Ljava/util/List;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 668
    .local v0, "zoomMax":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->setZoomMax(F)V

    .line 669
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->setZoom(F)V

    .line 670
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    new-instance v2, Lcom/android/camera/CaptureUI$ZoomChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/CaptureUI$ZoomChangeListener;-><init>(Lcom/android/camera/CaptureUI;Lcom/android/camera/CaptureUI$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    .line 671
    return-void

    .line 665
    .end local v0    # "zoomMax":Ljava/lang/Float;
    :cond_1
    :goto_0
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

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

.method public isOverControlRegion([I)Z
    .locals 3
    .param p1, "xy"    # [I

    .line 1621
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 1622
    .local v0, "x":I
    const/4 v1, 0x1

    aget v1, p1, v1

    .line 1623
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->isControlRegion(II)Z

    move-result v2

    return v2
.end method

.method public isOverSurfaceView([I)Z
    .locals 8
    .param p1, "xy"    # [I

    .line 1627
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1628
    .local v1, "x":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 1629
    .local v3, "y":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1630
    .local v4, "surfaceViewLocation":[I
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/AutoFitSurfaceView;->getLocationInWindow([I)V

    .line 1631
    aget v5, v4, v0

    .line 1632
    .local v5, "surfaceViewX":I
    aget v6, v4, v2

    .line 1633
    .local v6, "surfaceViewY":I
    sub-int v7, v1, v5

    aput v7, p1, v0

    .line 1634
    sub-int v7, v3, v6

    aput v7, p1, v2

    .line 1635
    if-le v1, v5, :cond_0

    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v7}, Lcom/android/camera/ui/AutoFitSurfaceView;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    if-ge v1, v7, :cond_0

    if-le v3, v6, :cond_0

    iget-object v7, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    .line 1636
    invoke-virtual {v7}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHeight()I

    move-result v7

    add-int/2addr v7, v6

    if-ge v3, v7, :cond_0

    .line 1635
    move v0, v2

    goto :goto_0

    .line 1636
    :cond_0
    nop

    .line 1635
    :goto_0
    return v0
.end method

.method public isPreviewMenuBeingShown()Z
    .locals 2

    .line 680
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1285
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->handleBackKeyOnMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->hide()V

    .line 1288
    return v1

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1293
    return v1

    .line 1295
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonContinue()V
    .locals 3

    .line 1697
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f0200a2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1699
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onButtonContinue()V

    .line 1700
    return-void
.end method

.method public onButtonPause()V
    .locals 3

    .line 1690
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f0200a1

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1692
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->onButtonPause()V

    .line 1693
    return-void
.end method

.method public onCameraOpened(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "cameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewGestures;->setCaptureUI(Lcom/android/camera/CaptureUI;)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PreviewGestures;->setZoomEnabled(Z)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureUI;->initializeZoom(Ljava/util/List;)V

    .line 576
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .line 1508
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "extendedFaces"    # [Lcom/android/camera/ExtendedFace;

    .line 1512
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/Camera2FaceView;->setFaces([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 1513
    return-void
.end method

.method public onFocusFailed(Z)V
    .locals 1
    .param p1, "timeOut"    # Z

    .line 1469
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1470
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    .line 1472
    :cond_0
    return-void
.end method

.method public onFocusStarted()V
    .locals 1

    .line 1457
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1458
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    .line 1459
    :cond_0
    return-void
.end method

.method public onFocusSucceeded(Z)V
    .locals 1
    .param p1, "timeout"    # Z

    .line 1463
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getFocusIndicator()Lcom/android/camera/ui/FocusIndicator;

    move-result-object v0

    .line 1464
    .local v0, "indicator":Lcom/android/camera/ui/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    .line 1465
    :cond_0
    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    .line 1256
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1394
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->cancelCountDown()V

    .line 1395
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->collapseCameraControls()Z

    .line 1397
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_2

    .line 1402
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 1403
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 1404
    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_3

    .line 1407
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 1408
    iput-object v1, p0, Lcom/android/camera/CaptureUI;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    .line 1410
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1411
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 2
    .param p1, "previewFocused"    # Z

    .line 1640
    if-eqz p1, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showUI()V

    goto :goto_0

    .line 1643
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->hideUI()V

    .line 1645
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setBlockDraw(Z)V

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/camera/PreviewGestures;->setEnabled(Z)V

    .line 1651
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz v0, :cond_4

    .line 1653
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRenderOverlay:Lcom/android/camera/ui/RenderOverlay;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1655
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v0, :cond_5

    .line 1656
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1658
    :cond_5
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 1659
    :cond_6
    return-void
.end method

.method public onSettingsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .line 1704
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SettingsManager$SettingState;

    .line 1705
    .local v1, "state":Lcom/android/camera/SettingsManager$SettingState;
    iget-object v2, v1, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v3, "pref_camera2_coloreffect_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1706
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    const-string v3, "pref_camera2_coloreffect_key"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    .line 1707
    :cond_0
    iget-object v2, v1, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1708
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1709
    .local v2, "value":Ljava/lang/String;
    const-string v3, "104"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1710
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_1

    .line 1712
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->needShowInstructional()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1713
    iget v3, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/android/camera/CaptureUI;->showSceneInstructionalDialog(I)V

    .line 1715
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->showSceneModeLabel()V

    .line 1717
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v3, "pref_camera2_flashmode_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1718
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    const-string v3, "pref_camera2_flashmode_key"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/CaptureUI;->enableView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    .line 1719
    :cond_4
    iget-object v2, v1, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    const-string v3, "pref_camera2_focus_distance_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1720
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    if-eqz v2, :cond_5

    .line 1721
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 1723
    .end local v1    # "state":Lcom/android/camera/SettingsManager$SettingState;
    :cond_5
    :goto_2
    goto :goto_0

    .line 1724
    :cond_6
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1617
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/CaptureModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 1618
    return-void
.end method

.method public onStartFaceDetection(IZLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraBound"    # Landroid/graphics/Rect;

    .line 1484
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setBlockDraw(Z)V

    .line 1485
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1486
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/Camera2FaceView;->setDisplayOrientation(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/Camera2FaceView;->setMirror(Z)V

    .line 1489
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/Camera2FaceView;->setCameraBound(Landroid/graphics/Rect;)V

    .line 1490
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setZoom(F)V

    .line 1491
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->resume()V

    .line 1492
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .line 1500
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setBlockDraw(Z)V

    .line 1502
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/Camera2FaceView;->clear()V

    .line 1504
    :cond_0
    return-void
.end method

.method public openSettingsMenu()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 698
    return-void

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 702
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v2, Lcom/android/camera/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 704
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 0

    .line 1477
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .line 1666
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    goto :goto_0

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 1671
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1672
    return-void
.end method

.method public reInitUI()V
    .locals 3

    .line 579
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initSceneModeButton()V

    .line 580
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFilterModeButton()V

    .line 581
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->initFlashButton()V

    .line 582
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->setMakeupButtonIcon()V

    .line 583
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->showSceneModeLabel()V

    .line 584
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 585
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_mono_preview_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_mono_preview_key"

    .line 594
    invoke-virtual {v0, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceViewMono:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 600
    :cond_2
    :goto_1
    return-void
.end method

.method public removeAndCleanUpFilterMenu()V
    .locals 1

    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->cleanUpMenus()V

    .line 1064
    return-void
.end method

.method public removeFilterMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 684
    if-eqz p1, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->animateSlideOut(Landroid/view/View;)V

    goto :goto_0

    .line 687
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    .line 688
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    .line 693
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->updateMenus()V

    .line 694
    return-void
.end method

.method public resetPauseButton()V
    .locals 3

    .line 1683
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f0200a2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1685
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/PauseButton;->setPaused(Z)V

    .line 1686
    return-void
.end method

.method public resetTrackingFocus()V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 934
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTrackingFocusRenderer:Lcom/android/camera/ui/TrackingFocusRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TrackingFocusRenderer;->setVisible(Z)V

    .line 936
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 0

    .line 1481
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1452
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setFocus(II)V

    .line 1453
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .line 1526
    iput p1, p0, Lcom/android/camera/CaptureUI;->mOrientation:I

    .line 1527
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/OneUICameraControls;->setOrientation(IZ)V

    .line 1528
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMenuHelp:Lcom/android/camera/ui/MenuHelp;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/MenuHelp;->setOrientation(IZ)V

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1532
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1533
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 1534
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    .line 1535
    :cond_1
    if-eqz v0, :cond_2

    .line 1536
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1537
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateLayout;

    .line 1538
    .local v3, "l":Lcom/android/camera/ui/RotateLayout;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1536
    .end local v3    # "l":Lcom/android/camera/ui/RotateLayout;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1542
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_3

    .line 1543
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 1545
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    if-eqz v0, :cond_4

    .line 1546
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/Camera2FaceView;->setDisplayRotation(I)V

    .line 1548
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_5

    .line 1549
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setOrientation(I)V

    .line 1550
    :cond_5
    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 1551
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_6

    .line 1552
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->setOrientation(I)V

    .line 1555
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    const/16 v2, 0xb4

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    if-eqz v0, :cond_8

    .line 1556
    if-ne p1, v2, :cond_7

    .line 1557
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1558
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1559
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    .line 1561
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setRotation(F)V

    .line 1562
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelCloseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1563
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeLabelRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1567
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_a

    .line 1568
    if-ne p1, v2, :cond_9

    .line 1569
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 1570
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_2

    .line 1572
    :cond_9
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setRotation(F)V

    .line 1573
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mBokehTipRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1577
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1578
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeInstructionalDialog:Landroid/app/AlertDialog;

    .line 1580
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureUI;->showSceneInstructionalDialog(I)V

    .line 1582
    :cond_b
    return-void
.end method

.method public setPreviewSize(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1765
    const-string v0, "SnapCam_CaptureUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget v0, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1767
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    .line 1768
    iput p2, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    .line 1769
    if-eqz v0, :cond_2

    .line 1770
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 1772
    :cond_2
    return v0
.end method

.method public setRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1675
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1676
    return-void
.end method

.method public setRecordingTimeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1679
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1680
    return-void
.end method

.method protected showCapturedImageForReview([BI)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I

    .line 509
    new-instance v0, Lcom/android/camera/CaptureUI$DecodeImageForReview;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/CaptureUI$DecodeImageForReview;-><init>(Lcom/android/camera/CaptureUI;[BI)V

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    .line 510
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mDecodeTaskForReview:Lcom/android/camera/CaptureUI$DecodeImageForReview;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/camera/CaptureUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 519
    :cond_1
    return-void
.end method

.method public showFirstTimeHelp()V
    .locals 5

    .line 1589
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1590
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "help_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1591
    .local v1, "isMenuShown":Z
    if-nez v1, :cond_0

    .line 1592
    iget v2, p0, Lcom/android/camera/CaptureUI;->mTopMargin:I

    iget v3, p0, Lcom/android/camera/CaptureUI;->mBottomMargin:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/CaptureUI;->showFirstTimeHelp(II)V

    .line 1593
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1594
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "help_menu"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1595
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1597
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public showPreviewCover()V
    .locals 2

    .line 1358
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    return-void
.end method

.method protected showRecordVideoForReview(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 522
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget v0, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 524
    invoke-virtual {p0, v2}, Lcom/android/camera/CaptureUI;->removeFilterMenu(Z)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewPlayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 532
    :cond_1
    return-void
.end method

.method public showRecordingUI(ZZ)V
    .locals 4
    .param p1, "recording"    # Z
    .param p2, "highspeed"    # Z

    .line 789
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 790
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 791
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FlashToggleButton;->init(Z)V

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const v3, 0x7f0201ae

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isAudioMute()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->setMuteButtonResource(Z)V

    goto :goto_1

    .line 801
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FlashToggleButton;->setVisibility(I)V

    .line 802
    iget-object v2, p0, Lcom/android/camera/CaptureUI;->mFlashButton:Lcom/android/camera/ui/FlashToggleButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FlashToggleButton;->init(Z)V

    .line 803
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mVideoButton:Landroid/widget/ImageView;

    const v2, 0x7f0201a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 804
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mRecordingTimeRect:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMuteButton:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 807
    :goto_1
    return-void
.end method

.method public showRefocusToast(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1421
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/OneUICameraControls;->showRefocusToast(Z)V

    .line 1422
    return-void
.end method

.method public showSurfaceView()V
    .locals 3

    .line 1757
    const-string v0, "SnapCam_CaptureUI"

    const-string v1, "showSurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1759
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    iget v1, p0, Lcom/android/camera/CaptureUI;->mPreviewHeight:I

    iget v2, p0, Lcom/android/camera/CaptureUI;->mPreviewWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AutoFitSurfaceView;->setAspectRatio(II)V

    .line 1760
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSurfaceView:Lcom/android/camera/ui/AutoFitSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoFitSurfaceView;->setVisibility(I)V

    .line 1761
    iput-boolean v1, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 1762
    return-void
.end method

.method public showTimeLapseUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 783
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    :cond_1
    return-void
.end method

.method public showUI()V
    .locals 2

    .line 1207
    iget-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    if-nez v0, :cond_0

    .line 1208
    return-void

    .line 1209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureUI;->mUIhidden:Z

    .line 1210
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1211
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    invoke-virtual {v0}, Lcom/android/camera/ui/OneUICameraControls;->showUI()V

    .line 1212
    return-void
.end method

.method public showUIAfterCountDown()V
    .locals 2

    .line 1171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureUI;->hideCameraControls(Z)V

    .line 1172
    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mGestures:Lcom/android/camera/PreviewGestures;

    invoke-virtual {v1, v0}, Lcom/android/camera/PreviewGestures;->setZoomOnly(Z)V

    .line 1173
    return-void
.end method

.method public showUIafterRecording()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCameraControls:Lcom/android/camera/ui/OneUICameraControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/OneUICameraControls;->setVideoMode(Z)V

    .line 954
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFrontBackSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    iput-boolean v1, p0, Lcom/android/camera/CaptureUI;->mIsVideoUI:Z

    .line 959
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mPauseButton:Lcom/android/camera/PauseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/PauseButton;->setVisibility(I)V

    .line 961
    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->showSceneModeLabel()V

    .line 962
    return-void
.end method

.method public startCountDown(IZ)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .line 1388
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CaptureUI;->initializeCountDown()V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mCountDownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CountDownView;->startCountDown(IZ)V

    .line 1390
    invoke-virtual {p0}, Lcom/android/camera/CaptureUI;->hideUIWhileCountDown()V

    .line 1391
    return-void
.end method

.method public startSelfieFlash()V
    .locals 2

    .line 1727
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->bringToFront()V

    .line 1730
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->open()V

    .line 1731
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->setScreenBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    .line 1732
    return-void
.end method

.method public stopSelfieFlash()V
    .locals 2

    .line 1735
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SelfieFlashView;

    iput-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mSelfieView:Lcom/android/camera/ui/SelfieFlashView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SelfieFlashView;->close()V

    .line 1738
    iget v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1739
    iget v0, p0, Lcom/android/camera/CaptureUI;->mScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureUI;->setScreenBrightness(F)F

    .line 1740
    :cond_1
    return-void
.end method

.method public updateFaceViewCameraBound(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cameraBound"    # Landroid/graphics/Rect;

    .line 1495
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/Camera2FaceView;->setCameraBound(Landroid/graphics/Rect;)V

    .line 1496
    iget-object v0, p0, Lcom/android/camera/CaptureUI;->mFaceView:Lcom/android/camera/ui/Camera2FaceView;

    iget-object v1, p0, Lcom/android/camera/CaptureUI;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/Camera2FaceView;->setZoom(F)V

    .line 1497
    return-void
.end method

.method public updateMenus()V
    .locals 8

    .line 1229
    const/4 v0, 0x1

    .line 1230
    .local v0, "enableMakeupMenu":Z
    const/4 v1, 0x1

    .line 1231
    .local v1, "enableFilterMenu":Z
    const/4 v2, 0x1

    .line 1232
    .local v2, "enableSceneMenu":Z
    iget-object v3, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_makeup_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1233
    .local v3, "makeupValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_coloreffect_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValueIndex(Ljava/lang/String;)I

    move-result v4

    .line 1234
    .local v4, "colorEffect":I
    iget-object v5, p0, Lcom/android/camera/CaptureUI;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v6, "pref_camera2_scenemode_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1235
    .local v5, "sceneMode":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1236
    const/4 v2, 0x0

    .line 1237
    const/4 v1, 0x0

    goto :goto_1

    .line 1238
    :cond_0
    if-nez v4, :cond_2

    iget v6, p0, Lcom/android/camera/CaptureUI;->mFilterMenuStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    goto :goto_0

    .line 1241
    :cond_1
    if-eqz v5, :cond_3

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1242
    const/4 v0, 0x0

    .line 1243
    const/4 v1, 0x0

    goto :goto_1

    .line 1239
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 1240
    const/4 v0, 0x0

    .line 1246
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mMakeupButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1247
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mFilterModeSwitcher:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1248
    iget-object v6, p0, Lcom/android/camera/CaptureUI;->mSceneModeSwitcher:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1249
    return-void
.end method
