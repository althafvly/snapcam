.class public Lcom/android/camera/WideAnglePanoramaModule;
.super Ljava/lang/Object;
.source "WideAnglePanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/WideAnglePanoramaController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;,
        Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    }
.end annotation


# static fields
.field public static final CAPTURE_STATE_MOSAIC:I = 0x1

.field public static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x4

.field private static final MSG_END_DIALOG_RESET_TO_PREVIEW:I = 0x3

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x2

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x5

.field private static final PANNING_SPEED_THRESHOLD:F = 2.5f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "CAM_WidePanoModule"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraPreviewHeight:I

.field private mCameraPreviewWidth:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mDirectionChanged:Z

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mHorizontalViewAngle:F

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewConfigured:Z

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;

.field private mOrientationLocked:Z

.field private mOrientationManager:Lcom/android/camera/app/OrientationManager;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewFocused:Z

.field private mPreviewLayoutChanged:Z

.field private mPreviewUIHeight:I

.field private mPreviewUIWidth:I

.field private mRendererLock:Ljava/lang/Object;

.field private mRootView:Landroid/view/View;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mUI:Lcom/android/camera/WideAnglePanoramaUI;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 129
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewFocused:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewLayoutChanged:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDirectionChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/WideAnglePanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/WideAnglePanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/WideAnglePanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/WideAnglePanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/WideAnglePanoramaModule;->saveFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->resetToPreviewIfPossible()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/WideAnglePanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/WideAnglePanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/WideAnglePanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/WideAnglePanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/WideAnglePanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/WideAnglePanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/WideAnglePanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewLayoutChanged:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/WideAnglePanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewLayoutChanged:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/WideAnglePanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/WideAnglePanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/WideAnglePanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .line 67
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->configMosaicPreview()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/WideAnglePanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationLocked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/WideAnglePanoramaUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/WideAnglePanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDirectionChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/WideAnglePanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDirectionChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/WideAnglePanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/WideAnglePanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/WideAnglePanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/WideAnglePanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    return v0
.end method

.method private cancelHighResComputation()V
    .locals 2

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCancelComputation:Z

    .line 790
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 792
    monitor-exit v0

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .line 871
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessorInitialized:Z

    .line 878
    :cond_1
    return-void

    .line 871
    :cond_2
    :goto_0
    return-void
.end method

.method private configMosaicPreview()V
    .locals 10

    .line 499
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    .line 500
    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->stopCameraPreview()V

    .line 505
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 509
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v6, v0

    .line 512
    .local v6, "isLandscape":Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 513
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 514
    .local v9, "enableWarpedPanoPreview":Z
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->flipPreviewIfNeeded()V

    .line 515
    new-instance v0, Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    .line 516
    invoke-virtual {v2}, Lcom/android/camera/WideAnglePanoramaUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    iget v5, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    iget v7, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientation:I

    move-object v2, v0

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZIZ)V

    .line 518
    .local v2, "renderer":Lcom/android/camera/MosaicPreviewRenderer;
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    :try_start_1
    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 520
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 522
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 523
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    iput-boolean v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewConfigured:Z

    .line 525
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->resetToPreviewIfPossible()V

    .line 526
    return-void

    .line 523
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 510
    .end local v2    # "renderer":Lcom/android/camera/MosaicPreviewRenderer;
    .end local v6    # "isLandscape":Z
    .end local v9    # "enableWarpedPanoPreview":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 501
    :cond_3
    :goto_1
    return-void
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 490
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 491
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .param p2, "need4To3"    # Z
    .param p3, "needSmaller"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 423
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v0, 0xa8c00

    .line 424
    .local v0, "pixelsDiff":I
    const/4 v1, 0x0

    .line 425
    .local v1, "hasFound":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 426
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    .line 427
    .local v4, "h":I
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    .line 429
    .local v5, "w":I
    const v6, 0xa8c00

    mul-int v7, v4, v5

    sub-int/2addr v6, v7

    .line 430
    .local v6, "d":I
    if-eqz p3, :cond_0

    if-gez v6, :cond_0

    .line 431
    goto :goto_0

    .line 433
    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 v7, v4, 0x4

    mul-int/lit8 v8, v5, 0x3

    if-eq v7, v8, :cond_1

    .line 434
    goto :goto_0

    .line 436
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 437
    if-ge v6, v0, :cond_2

    .line 438
    iput v5, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewWidth:I

    .line 439
    iput v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewHeight:I

    .line 440
    move v0, v6

    .line 441
    const/4 v1, 0x1

    .line 443
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    .end local v4    # "h":I
    .end local v5    # "w":I
    .end local v6    # "d":I
    :cond_2
    goto :goto_0

    .line 444
    :cond_3
    return v1
.end method

.method private getCaptureOrientation()I
    .locals 2

    .line 725
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUsingFrontCamera:Z

    if-eqz v0, :cond_0

    .line 728
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientationAtCapture:I

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x168

    rem-int/lit16 v0, v0, 0x168

    .local v0, "orientation":I
    goto :goto_0

    .line 730
    .end local v0    # "orientation":I
    :cond_0
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientationAtCapture:I

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 732
    .restart local v0    # "orientation":I
    :goto_0
    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .line 219
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 220
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 223
    return v0

    .line 225
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    return v1
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 6

    .line 881
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    const/16 v0, 0x64

    .line 886
    .local v0, "perct":I
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "activity"

    .line 887
    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 888
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 892
    :cond_1
    iget v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewWidth:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x64

    .line 893
    .local v2, "width":I
    iget v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewHeight:I

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x64

    .line 894
    .local v3, "height":I
    if-lez v2, :cond_2

    if-lez v3, :cond_2

    .line 895
    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaModule;->getPreviewBufSize()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 896
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessorInitialized:Z

    .line 900
    return-void

    .line 898
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid preview dimension"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 882
    .end local v0    # "perct":I
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_3
    :goto_0
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1184
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .line 1176
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1179
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    .line 785
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->dismissAllDialogs()V

    .line 786
    return-void
.end method

.method private openCamera()Z
    .locals 4

    .line 401
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 406
    .local v0, "cameraId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 411
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v3

    .line 410
    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 412
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 413
    const/4 v1, 0x0

    return v1

    .line 416
    :cond_1
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraOrientation:I

    .line 417
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUsingFrontCamera:Z

    .line 418
    :cond_2
    return v2
.end method

.method private releaseCamera()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    goto :goto_0

    .line 386
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 389
    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraState:I

    .line 392
    :cond_1
    return-void
.end method

.method private reset()V
    .locals 3

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    .line 798
    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDirectionChanged:Z

    .line 800
    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationLocked:Z

    .line 801
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/WideAnglePanoramaUI;->setOrientation(IZ)V

    .line 802
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->reset()V

    .line 803
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 806
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewFocused:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->showPreviewUI()V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 810
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1173
    return-void
.end method

.method private resetToPreviewIfPossible()V
    .locals 1

    .line 813
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->reset()V

    .line 814
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    .line 815
    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewConfigured:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    if-nez v0, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->startCameraPreview()V

    .line 822
    :cond_1
    return-void

    .line 817
    :cond_2
    :goto_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    .line 780
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 781
    return-void
.end method

.method private saveFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 825
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->getCaptureOrientation()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/WideAnglePanoramaUI;->saveFinalMosaic(Landroid/graphics/Bitmap;I)V

    .line 826
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 19
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 829
    if-eqz v2, :cond_0

    .line 830
    iget-object v0, v1, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 831
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e03c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/camera/WideAnglePanoramaModule;->mTimeTaken:J

    .line 830
    invoke-static {v0, v3, v4}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, "filename":Ljava/lang/String;
    const-string v0, "jpeg"

    invoke-static {v3, v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "filepath":Ljava/lang/String;
    const-string v5, "Panorama"

    const-string v6, "CaptureDone"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".jpg"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 835
    invoke-static/range {v5 .. v10}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 839
    iget-object v0, v1, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v15

    .line 840
    .local v15, "loc":Landroid/location/Location;
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    move-object v14, v0

    .line 842
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v14, v2}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 843
    invoke-virtual {v14}, Lcom/android/camera/exif/ExifInterface;->addMakeAndModelTag()Z

    .line 844
    iget-wide v5, v1, Lcom/android/camera/WideAnglePanoramaModule;->mTimeTaken:J

    invoke-virtual {v14, v5, v6}, Lcom/android/camera/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 845
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    iget-wide v5, v1, Lcom/android/camera/WideAnglePanoramaModule;->mTimeTaken:J

    .line 846
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 845
    invoke-virtual {v14, v0, v5, v6, v7}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 847
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 848
    invoke-static/range {p4 .. p4}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 847
    invoke-virtual {v14, v0, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 849
    invoke-static {v15, v14}, Lcom/android/camera/WideAnglePanoramaModule;->writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V

    .line 850
    invoke-virtual {v14, v2, v4}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "CAM_WidePanoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot set exif for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    invoke-static {v4, v2}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    .line 855
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    .line 856
    .local v0, "jpegLength":I
    iget-object v5, v1, Lcom/android/camera/WideAnglePanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v7, v1, Lcom/android/camera/WideAnglePanoramaModule;->mTimeTaken:J

    const-string v16, "image/jpeg"

    move-object v6, v3

    move-object v9, v15

    move/from16 v10, p4

    move v11, v0

    move-object v12, v4

    move/from16 v13, p2

    move-object/from16 v17, v14

    move/from16 v14, p3

    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v17, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v18, v15

    move-object/from16 v15, v16

    .end local v15    # "loc":Landroid/location/Location;
    .local v18, "loc":Landroid/location/Location;
    invoke-static/range {v5 .. v15}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 859
    .end local v0    # "jpegLength":I
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v17    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v18    # "loc":Landroid/location/Location;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setupCamera()Z
    .locals 2

    .line 372
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->openCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 376
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/WideAnglePanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 377
    invoke-direct {p0, v0}, Lcom/android/camera/WideAnglePanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 378
    const/4 v1, 0x1

    return v1
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 448
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 449
    .local v0, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/WideAnglePanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 450
    const-string v2, "CAM_WidePanoModule"

    const-string v4, "No 4:3 ratio preview size supported."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/WideAnglePanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    const-string v2, "CAM_WidePanoModule"

    const-string v4, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, v0, v3, v3}, Lcom/android/camera/WideAnglePanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 456
    :cond_0
    const-string v2, "CAM_WidePanoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera preview h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , w = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewWidth:I

    iget v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewHeight:I

    invoke-virtual {p1, v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 460
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 461
    .local v2, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 462
    .local v4, "last":I
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v3, v5, v3

    .line 463
    .local v3, "minFps":I
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v1, v5, v1

    .line 464
    .local v1, "maxFps":I
    invoke-virtual {p1, v3, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 465
    const-string v5, "CAM_WidePanoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preview fps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 468
    .local v5, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/WideAnglePanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 469
    iget-object v6, p0, Lcom/android/camera/WideAnglePanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    const-string v6, "CAM_WidePanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/WideAnglePanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    const-string v6, "recording-hint"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/WideAnglePanoramaModule;->mHorizontalViewAngle:F

    .line 479
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/WideAnglePanoramaModule;->mVerticalViewAngle:F

    .line 480
    return-void
.end method

.method private startCameraPreview()V
    .locals 3

    .line 1106
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1108
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1113
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 1116
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 1128
    :cond_2
    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraState:I

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->stopCameraPreview()V

    .line 1136
    :cond_3
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1138
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_4

    .line 1139
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1140
    :cond_4
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1143
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraState:I

    .line 1144
    return-void

    .line 1141
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private stopCameraPreview()V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1150
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraState:I

    .line 1151
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .param p1, "aborted"    # Z

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDirectionChanged:Z

    .line 622
    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    .line 623
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->onStopCapture()V

    .line 624
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 625
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 626
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 627
    invoke-direct {p0, v1}, Lcom/android/camera/WideAnglePanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 630
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->stopCameraPreview()V

    .line 632
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 634
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/camera/WideAnglePanoramaUI;->showWaitingDialog(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->hideUI()V

    .line 639
    new-instance v0, Lcom/android/camera/WideAnglePanoramaModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/WideAnglePanoramaModule$6;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/WideAnglePanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->keepScreenOnAwhile()V

    .line 657
    return-void
.end method

.method private static writeLocation(Landroid/location/Location;Lcom/android/camera/exif/ExifInterface;)V
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .line 863
    if-nez p0, :cond_0

    .line 864
    return-void

    .line 866
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsTags(DD)Z

    .line 867
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 868
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public cancelHighResStitching()V
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->cancelHighResComputation()V

    .line 1221
    return-void

    .line 1219
    :cond_1
    :goto_0
    return-void
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 909
    if-eqz p1, :cond_0

    const-string v0, "on"

    goto :goto_0

    .line 910
    :cond_0
    const-string v0, "off"

    .line 911
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_recordlocation_key"

    .line 913
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 914
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 917
    :cond_1
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 918
    return-void
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    .locals 12
    .param p1, "highRes"    # Z

    .line 1066
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1067
    .local v0, "mosaicReturnCode":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1068
    const/4 v1, 0x0

    return-object v1

    .line 1069
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1070
    new-instance v1, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    invoke-direct {v1, p0}, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    return-object v1

    .line 1073
    :cond_1
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1074
    .local v1, "imageData":[B
    if-nez v1, :cond_2

    .line 1075
    const-string v2, "CAM_WidePanoModule"

    const-string v3, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    new-instance v2, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    return-object v2

    .line 1079
    :cond_2
    array-length v2, v1

    add-int/lit8 v8, v2, -0x8

    .line 1080
    .local v8, "len":I
    add-int/lit8 v2, v8, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v8, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v8, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v8, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v9, v2, v3

    .line 1082
    .local v9, "width":I
    add-int/lit8 v2, v8, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v8, 0x5

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v8, 0x6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v8, 0x7

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v10, v2, v3

    .line 1084
    .local v10, "height":I
    const-string v2, "CAM_WidePanoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", W = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", H = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    if-lez v9, :cond_4

    if-gtz v10, :cond_3

    goto :goto_0

    .line 1093
    :cond_3
    new-instance v11, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v1

    move v5, v9

    move v6, v10

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1094
    .local v2, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1095
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1097
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    nop

    .line 1102
    new-instance v4, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, p0, v5, v9, v10}, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/WideAnglePanoramaModule;[BII)V

    return-object v4

    .line 1098
    :catch_0
    move-exception v4

    .line 1099
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CAM_WidePanoModule"

    const-string v6, "Exception in storing final mosaic"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    new-instance v5, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    return-object v5

    .line 1088
    .end local v2    # "yuvimage":Landroid/graphics/YuvImage;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    const-string v2, "CAM_WidePanoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width|height <= 0!!, len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", W = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", H = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v2, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    return-object v2
.end method

.method public getCameraOrientation()I
    .locals 1

    .line 739
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraOrientation:I

    return v0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .line 483
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 484
    .local v0, "pixelInfo":Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 486
    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewWidth:I

    iget v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .line 231
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 232
    iput-object p2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRootView:Landroid/view/View;

    .line 234
    new-instance v0, Lcom/android/camera/app/OrientationManager;

    invoke-direct {v0, p1}, Lcom/android/camera/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    .line 236
    new-instance v0, Lcom/android/camera/WideAnglePanoramaUI;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/WideAnglePanoramaUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/WideAnglePanoramaController;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    .line 237
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    new-instance v1, Lcom/android/camera/WideAnglePanoramaModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/WideAnglePanoramaModule$1;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/WideAnglePanoramaUI;->setCaptureProgressOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 256
    new-instance v0, Lcom/android/camera/WideAnglePanoramaModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/WideAnglePanoramaModule$2;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 290
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 291
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "Panorama"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 293
    new-instance v1, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;-><init>(Lcom/android/camera/WideAnglePanoramaModule;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationEventListener:Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;

    .line 295
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 297
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 298
    .local v1, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0e03c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 299
    const v2, 0x7f0e03ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 300
    const v2, 0x7f0e03c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 301
    const v2, 0x7f0e03c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 302
    const v2, 0x7f0e03cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 305
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v2, :cond_0

    .line 306
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v4}, Lcom/android/camera/WideAnglePanoramaModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 310
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 311
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 313
    new-instance v2, Lcom/android/camera/WideAnglePanoramaModule$3;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaModule$3;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 353
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .line 1232
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1236
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1162
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->hideSwitcherPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    return v1

    .line 1167
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .line 1259
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 973
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    iget-boolean v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/WideAnglePanoramaUI;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V

    .line 974
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1228
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 565
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1241
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1246
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .line 1273
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 978
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationEventListener:Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->disable()V

    .line 935
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 937
    return-void

    .line 940
    :cond_0
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 941
    invoke-direct {p0, v1}, Lcom/android/camera/WideAnglePanoramaModule;->stopCapture(Z)V

    .line 942
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->reset()V

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->showPreviewCover()V

    .line 945
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->releaseCamera()V

    .line 946
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 951
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v3, :cond_2

    .line 952
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v3}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 953
    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 955
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    .line 958
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    .line 959
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 960
    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 962
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->resetScreenOn()V

    .line 963
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->removeDisplayChangeListener()V

    .line 964
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v0, :cond_4

    .line 965
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 966
    iput-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 968
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 969
    return-void

    .line 955
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    .line 928
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager;->pause()V

    .line 930
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .line 357
    iput-boolean p1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewFocused:Z

    .line 358
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/WideAnglePanoramaUI;->onPreviewFocusChanged(Z)V

    .line 359
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .line 1255
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .line 166
    return-void
.end method

.method public onPreviewUILayoutChange(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 534
    const-string v0, "CAM_WidePanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "capturePending":Z
    iget v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 537
    const/4 v0, 0x1

    .line 539
    :cond_0
    sub-int v1, p3, p1

    .line 540
    .local v1, "width":I
    sub-int v3, p4, p2

    .line 541
    .local v3, "height":I
    iget v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    if-ne v4, v1, :cond_1

    iget v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    if-ne v4, v3, :cond_1

    iget v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraState:I

    if-eq v4, v2, :cond_2

    .line 543
    :cond_1
    sub-int v4, p3, p1

    iput v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    .line 544
    sub-int v4, p4, p2

    iput v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    .line 545
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->configMosaicPreview()V

    .line 547
    :cond_2
    if-ne v0, v2, :cond_3

    .line 548
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/WideAnglePanoramaModule$4;

    invoke-direct {v4, p0}, Lcom/android/camera/WideAnglePanoramaModule$4;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    :cond_3
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->configMosaicPreview()V

    .line 161
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationEventListener:Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaModule$PanoOrientationEventListener;->enable()V

    .line 1008
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    .line 1010
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->setupCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0338

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 1012
    const-string v0, "CAM_WidePanoModule"

    const-string v1, "Failed to open camera, aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1020
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->dismissAllDialogs()V

    .line 1021
    iget-boolean v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/WideAnglePanoramaUI;->showWaitingDialog(Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->hideUI()V

    .line 1026
    new-instance v1, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/WideAnglePanoramaModule;Lcom/android/camera/WideAnglePanoramaModule$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/camera/WideAnglePanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 1030
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-nez v0, :cond_2

    .line 1031
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->getPreviewAreaSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1034
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIWidth:I

    .line 1035
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreviewUIHeight:I

    .line 1036
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->configMosaicPreview()V

    .line 1037
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/WideAnglePanoramaModule$9;

    invoke-direct {v2, p0}, Lcom/android/camera/WideAnglePanoramaModule$9;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1044
    .end local v0    # "size":Landroid/graphics/Point;
    :goto_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->setSwitcherIndex()V

    .line 1045
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->keepScreenOnAwhile()V

    .line 1047
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager;->resume()V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1051
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1052
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->initDisplayChangeListener()V

    .line 1053
    const-string v1, "Camera"

    const-string v2, "PanoramaModule"

    invoke-static {v1, v2}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 3

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    .line 994
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 995
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 1000
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/WideAnglePanoramaModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1001
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1002
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .line 1268
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .line 663
    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    .line 683
    const-string v0, "CAM_WidePanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown capture state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/WideAnglePanoramaModule;->stopCapture(Z)V

    .line 681
    goto :goto_0

    .line 670
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    .line 671
    .local v0, "storageSpaceBytes":J
    const-wide/32 v2, 0x3c00000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 672
    const-string v2, "CAM_WidePanoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Low storage warning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 676
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaModule;->startCapture()V

    .line 677
    nop

    .line 686
    .end local v0    # "storageSpaceBytes":J
    :goto_0
    return-void

    .line 664
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1251
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1225
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 987
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 989
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1155
    iget v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->keepScreenOnAwhile()V

    .line 1156
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/WideAnglePanoramaUI;->resetSavingProgress()V

    .line 690
    new-instance v0, Lcom/android/camera/WideAnglePanoramaModule$7;

    invoke-direct {v0, p0}, Lcom/android/camera/WideAnglePanoramaModule$7;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    .line 714
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 715
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 0

    .line 982
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .line 743
    new-instance v0, Lcom/android/camera/WideAnglePanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/WideAnglePanoramaModule$8;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/WideAnglePanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/camera/WideAnglePanoramaModule;->reportProgress()V

    .line 776
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 923
    return-void
.end method

.method public startCapture()V
    .locals 5

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCancelComputation:Z

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mTimeTaken:J

    .line 572
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 573
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCaptureState:I

    .line 574
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/WideAnglePanoramaUI;->onStartCapture()V

    .line 575
    iget-object v1, p0, Lcom/android/camera/WideAnglePanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 576
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 577
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 578
    invoke-direct {p0, v1}, Lcom/android/camera/WideAnglePanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 580
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v3, Lcom/android/camera/WideAnglePanoramaModule$5;

    invoke-direct {v3, p0}, Lcom/android/camera/WideAnglePanoramaModule$5;-><init>(Lcom/android/camera/WideAnglePanoramaModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 606
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v2}, Lcom/android/camera/WideAnglePanoramaUI;->resetCaptureProgress()V

    .line 609
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/WideAnglePanoramaUI;->setMaxCaptureProgress(I)V

    .line 610
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v2}, Lcom/android/camera/WideAnglePanoramaUI;->showCaptureProgress()V

    .line 611
    iget v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientation:I

    iput v2, p0, Lcom/android/camera/WideAnglePanoramaModule;->mDeviceOrientationAtCapture:I

    .line 612
    invoke-direct {p0}, Lcom/android/camera/WideAnglePanoramaModule;->keepScreenOn()V

    .line 613
    iput-boolean v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mOrientationLocked:Z

    .line 614
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 615
    .local v0, "degrees":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    .line 616
    .local v2, "cameraId":I
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v3

    .line 617
    .local v3, "orientation":I
    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule;->mUI:Lcom/android/camera/WideAnglePanoramaUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/WideAnglePanoramaUI;->setProgressOrientation(I)V

    .line 618
    return-void
.end method

.method public switchInternalStorage()V
    .locals 3

    .line 1278
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 1279
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1281
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 1282
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1283
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .line 904
    iget-object v0, p0, Lcom/android/camera/WideAnglePanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 905
    return-void
.end method
