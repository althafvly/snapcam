.class public Lcom/android/camera/CaptureModule;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/MediaSaveService$Listener;
.implements Lcom/android/camera/PhotoController;
.implements Lcom/android/camera/SettingsManager$Listener;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;
.implements Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CaptureModule$MainHandler;,
        Lcom/android/camera/CaptureModule$MpoSaveHandler;,
        Lcom/android/camera/CaptureModule$MyCameraHandler;,
        Lcom/android/camera/CaptureModule$CameraCaptureCallback;,
        Lcom/android/camera/CaptureModule$ImageAvailableListener;,
        Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;,
        Lcom/android/camera/CaptureModule$SelfieThread;
    }
.end annotation


# static fields
.field private static final BACK_MODE:I = 0x0

.field public static final BAYER_ID:I = 0x0

.field public static final BAYER_MODE:I = 0x1

.field private static final CANCEL_TOUCH_FOCUS:I = 0x1

.field private static final CANCEL_TOUCH_FOCUS_DELAY:I

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field public static final DEBUG:Z

.field private static final DEPTH_EFFECT_SUCCESS:I = 0x1

.field public static final DUAL_MODE:I = 0x0

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field public static FRONT_ID:I = 0x0

.field private static final FRONT_MODE:I = 0x1

.field public static final INSTANT_AEC_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTENT_MODE_CAPTURE:I = 0x1

.field public static final INTENT_MODE_CAPTURE_SECURE:I = 0x3

.field public static final INTENT_MODE_NORMAL:I = 0x0

.field public static final INTENT_MODE_VIDEO:I = 0x2

.field public static IS_SUPPORT_QCFA_SENSOR:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static InstantAecAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final LONGSHOT_CANCEL_THRESHOLD:I = 0x2800000

.field private static final LOW_LIGHT:I = 0x4

.field private static final MAX_NUM_CAM:I = 0x4

.field public static MONO_ID:I = 0x0

.field public static final MONO_MODE:I = 0x2

.field public static MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORMAL_SESSION_MAX_FPS:I = 0x1e

.field private static final NO_DEPTH_EFFECT:I = 0x0

.field private static final OPEN_CAMERA:I = 0x0

.field public static QCFA_SUPPORT_DIMENSION:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final REQUEST_CROP:I = 0x3e8

.field public static final SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SDCARD_SIZE_LIMIT:I = -0x6000000

.field private static final SELFIE_FLASH_DURATION:I = 0x2a8

.field private static final STATE_AF_AE_LOCKED:I = 0x6

.field private static final STATE_PICTURE_TAKEN:I = 0x4

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_AE_LOCK:I = 0x3

.field private static final STATE_WAITING_AF_LOCK:I = 0x1

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final STATE_WAITING_TOUCH_FOCUS:I = 0x5

.field private static final SUBJECT_NOT_FOUND:I = 0x5

.field public static SWITCH_ID:I = 0x0

.field public static final SWITCH_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SnapCam_CaptureModule"

.field private static final TOO_FAR:I = 0x3

.field private static final TOO_NEAR:I = 0x2

.field private static final TOUCH_TO_FOCUS:I = 0x6

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public static blinkDegree:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static blinkDetected:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final bokeh_enable:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static bsgcAvailable:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static buckets:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static gazeAngle:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static gazeDegree:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static gazeDirection:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final hfrSizeList:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final histMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static histogramStats:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static isHdrScene:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static maxCount:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"

.field public static smileConfidence:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static smileDegree:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field public static statsdata:[I


# instance fields
.field BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private SECONDARY_SERVER_MEM:J

.field mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

.field mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAutoExposureRegionSupported:Z

.field private mAutoFocusRegionSupported:Z

.field private mBayerCameraRegion:Landroid/graphics/Rect;

.field private mBokehEnabled:Z

.field private mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:[Ljava/lang/String;

.field private mCameraIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOpened:[Z

.field private mCameraThread:Landroid/os/HandlerThread;

.field private mCamerasOpened:Z

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureCallbackHandler:Landroid/os/Handler;

.field private mCaptureCallbackThread:Landroid/os/HandlerThread;

.field private mCaptureHDRTestEnable:Z

.field private mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureStartTime:J

.field private mCaptureTimeLapse:Z

.field private mChosenImageFormat:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlAFMode:I

.field private mCropRegion:[Landroid/graphics/Rect;

.field private mCropValue:Ljava/lang/String;

.field private mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mExFaces:[Lcom/android/camera/ExtendedFace;

.field private mFirstPreviewLoaded:Z

.field private mFirstTimeInitialized:Z

.field private mFocusStateListener:Lcom/android/camera/FocusStateListener;

.field private mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

.field private mGraphViewB:Lcom/android/camera/Camera2GraphView;

.field private mGraphViewGB:Lcom/android/camera/Camera2GraphView;

.field private mGraphViewGR:Lcom/android/camera/Camera2GraphView;

.field private mGraphViewR:Lcom/android/camera/Camera2GraphView;

.field private final mHandler:Landroid/os/Handler;

.field private mHighSpeedCapture:Z

.field private mHighSpeedCaptureRate:I

.field private mHighSpeedFPSRange:Landroid/util/Range;

.field private mHighSpeedRecordingMode:Z

.field mHiston:Z

.field private mImageAvailableHandler:Landroid/os/Handler;

.field private mImageAvailableThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mIntentMode:I

.field private mIsLinked:Z

.field private mIsMute:Z

.field private mIsRecordingVideo:Z

.field private mIsRefocus:Z

.field private mIsSupportedQcfa:Z

.field private mIsoExposureTime:J

.field private mIsoSensitivity:I

.field private mJpegFileSizeEstimation:I

.field private mJpegImageData:[B

.field private mLastJpegData:[B

.field private mLastResultAFState:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mLockRequestHashCode:[I

.field private mLongshotActive:Z

.field private mMainCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPausing:Z

.field private mMpoSaveHandler:Landroid/os/Handler;

.field private mMpoSaveThread:Landroid/os/HandlerThread;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private final mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOrientation:I

.field private mPaused:Z

.field private mPictureSize:Landroid/util/Size;

.field private mPictureThumbSize:Landroid/util/Size;

.field private mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

.field private mPrecaptureRequestHashCode:[I

.field private mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mPreviewFaces:[Landroid/hardware/camera2/params/Face;

.field private mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mRawImageReader:[Landroid/media/ImageReader;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTotalTime:J

.field private mRootView:Landroid/view/View;

.field private mSaveRaw:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSettingsManager:Lcom/android/camera/SettingsManager;

.field private mSound:Landroid/media/MediaActionSound;

.field private mStartRecPending:Z

.field private mState:[I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mStickyExFaces:[Lcom/android/camera/ExtendedFace;

.field private mStickyFaces:[Landroid/hardware/camera2/params/Face;

.field private mStopRecPending:Z

.field private mSupportedMaxPictureSize:Landroid/util/Size;

.field private mSupportedRawPictureSize:Landroid/util/Size;

.field private mSurfaceReady:Z

.field private mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

.field private mTakingPicture:[Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mToast:Landroid/widget/Toast;

.field private mUI:Lcom/android/camera/CaptureUI;

.field mUnsupportedResolution:Z

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoPreviewSize:Landroid/util/Size;

.field private mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mVideoSize:Landroid/util/Size;

.field private mVideoSnapshotImageReader:Landroid/media/ImageReader;

.field private mVideoSnapshotSize:Landroid/util/Size;

.field private mVideoSnapshotThumbSize:Landroid/util/Size;

.field private mZoomValue:F

.field private mediaSaveNotifyThread:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

.field private selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 147
    sput v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    .line 148
    sput v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 149
    sput v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 156
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCancelTouchFocusDelay()I

    move-result v0

    sput v0, Lcom/android/camera/CaptureModule;->CANCEL_TOUCH_FOCUS_DELAY:I

    .line 160
    new-array v7, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v7, v1

    sput-object v7, Lcom/android/camera/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 213
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 214
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v6

    :cond_1
    sput-boolean v1, Lcom/android/camera/CaptureModule;->DEBUG:Z

    .line 227
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.sensor_meta_data.is_mono_only"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 230
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.instant_aec.instant_aec_available_modes"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->InstantAecAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 232
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.instant_aec.instant_aec_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->INSTANT_AEC_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 234
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.saturation.use_saturation"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 236
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.enable"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->histMode:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 238
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.buckets"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->buckets:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 240
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.max_count"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->maxCount:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 242
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.stats"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->histogramStats:Landroid/hardware/camera2/CaptureResult$Key;

    .line 244
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.is_hdr_scene"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->isHdrScene:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 246
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.quadra_cfa.is_qcfa_sensor"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->IS_SUPPORT_QCFA_SENSOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 248
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.quadra_cfa.qcfa_dimension"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->QCFA_SUPPORT_DIMENSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 250
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.bsgc_available"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bsgcAvailable:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 252
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.blink_detected"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->blinkDetected:Landroid/hardware/camera2/CaptureResult$Key;

    .line 254
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.blink_degree"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->blinkDegree:Landroid/hardware/camera2/CaptureResult$Key;

    .line 256
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.smile_degree"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->smileDegree:Landroid/hardware/camera2/CaptureResult$Key;

    .line 258
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.smile_confidence"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->smileConfidence:Landroid/hardware/camera2/CaptureResult$Key;

    .line 260
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.gaze_angle"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->gazeAngle:Landroid/hardware/camera2/CaptureResult$Key;

    .line 262
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.gaze_direction"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->gazeDirection:Landroid/hardware/camera2/CaptureResult$Key;

    .line 265
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.gaze_degree"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->gazeDegree:Landroid/hardware/camera2/CaptureResult$Key;

    .line 268
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.hfr.sizes"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->hfrSizeList:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 270
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.bokeh.enable"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bokeh_enable:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 272
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.bokeh.blurLevel"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 274
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.bokeh.status"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;

    .line 411
    const/16 v0, 0x400

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CaptureModule;->statsdata:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-array v0, v4, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 217
    new-array v0, v4, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 218
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.enable"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 221
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.is_main"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 224
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.related_camera_id"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 277
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    .line 278
    iput v4, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 279
    iput v7, p0, Lcom/android/camera/CaptureModule;->mLastResultAFState:I

    .line 280
    new-array v0, v4, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    .line 284
    iput v7, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 288
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    .line 289
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsLinked:Z

    .line 294
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 295
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 296
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    .line 297
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    .line 298
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    .line 299
    new-array v0, v4, [Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    .line 300
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    .line 305
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 310
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 314
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    .line 318
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 319
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    .line 321
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    .line 326
    iput v3, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    .line 333
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    .line 338
    new-array v0, v4, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    .line 353
    iput-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewFaces:[Landroid/hardware/camera2/params/Face;

    .line 354
    iput-object v6, p0, Lcom/android/camera/CaptureModule;->mStickyFaces:[Landroid/hardware/camera2/params/Face;

    .line 355
    iput-object v6, p0, Lcom/android/camera/CaptureModule;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 356
    iput-object v6, p0, Lcom/android/camera/CaptureModule;->mStickyExFaces:[Lcom/android/camera/ExtendedFace;

    .line 366
    new-array v0, v4, [Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    .line 367
    new-array v0, v4, [Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    .line 373
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    .line 374
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    .line 375
    new-instance v0, Lcom/android/camera/CaptureModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$MainHandler;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    .line 389
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsMute:Z

    .line 391
    iput v3, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 392
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    .line 398
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 401
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mRecordingTimeCountsDown:Z

    .line 404
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    .line 405
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    .line 407
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    .line 474
    new-instance v0, Lcom/android/camera/CaptureModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$1;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 485
    new-instance v0, Lcom/android/camera/CaptureModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$2;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 526
    new-array v0, v4, [Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 532
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    .line 537
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 559
    new-instance v0, Lcom/android/camera/CaptureModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$3;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 682
    new-instance v0, Lcom/android/camera/CaptureModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$5;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePicture()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->updateCaptureStateMachine(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isBsgcDetecionOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "x2"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->getBsgcInfo(Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "x2"    # [Lcom/android/camera/ExtendedFace;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->updateFaceView([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateGraghView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->showBokehStatusMessage(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$SelfieThread;)Lcom/android/camera/CaptureModule$SelfieThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/CaptureModule$SelfieThread;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CaptureModule;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/CaptureModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createSessions()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->initializePreviewConfiguration(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateFaceDetection()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mIsLinked:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/CaptureModule;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isMpoOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/android/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$4500(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/camera/CaptureModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # [B

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/CaptureModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/CaptureModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # [B

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/CaptureModule;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    return-wide p1
.end method

.method static synthetic access$5602(Lcom/android/camera/CaptureModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$5700(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOn()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "x2"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->setUpVideoCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mediaSaveNotifyThread:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mediaSaveNotifyThread:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/camera/CaptureModule;)Lcom/android/camera/FocusStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusStateListener:Lcom/android/camera/FocusStateListener;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->openCamera(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/CaptureModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    return-object v0
.end method

.method private addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4462
    .local p2, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p3, v2, :cond_2

    .line 4463
    if-eqz p2, :cond_0

    .line 4464
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4466
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4476
    :cond_1
    return-void

    .line 4469
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->getInputSurfaces()Ljava/util/List;

    move-result-object v1

    .line 4470
    .local v1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 4471
    .local v0, "surface":Landroid/view/Surface;
    if-eqz p2, :cond_3

    .line 4472
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4474
    :cond_3
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "multiple"    # F
    .param p6, "cropRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 4538
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    mul-float v7, v7, p5

    float-to-int v6, v7

    .line 4539
    .local v6, "side":I
    new-instance v5, Landroid/graphics/RectF;

    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    sub-float v7, p1, v7

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float v8, p2, v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    add-float/2addr v9, p1

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    add-float/2addr v10, p2

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4543
    .local v5, "meteringRegionF":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 4544
    .local v1, "matrix1":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iget v8, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    invoke-static {v1, v7, v8, p3, p4}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 4545
    invoke-virtual {v1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4548
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 4549
    .local v2, "matrix2":Landroid/graphics/Matrix;
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4550
    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x44fa0000    # 2000.0f

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4551
    invoke-virtual {v2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4553
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4554
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4556
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4559
    .local v4, "meteringRegion":Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 4561
    iget v7, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 4563
    iget v7, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 4565
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 4568
    const/4 v7, 0x1

    new-array v3, v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4569
    .local v3, "meteringRectangle":[Landroid/hardware/camera2/params/MeteringRectangle;
    const/4 v7, 0x0

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v3, v7

    .line 4570
    return-object v3

    .line 4544
    .end local v2    # "matrix2":Landroid/graphics/Matrix;
    .end local v3    # "meteringRectangle":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v4    # "meteringRegion":Landroid/graphics/Rect;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 4328
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4329
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4333
    :goto_0
    return-void

    .line 4331
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 4320
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4321
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4325
    :goto_0
    return-void

    .line 4323
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyAntiBandingLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4158
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_anti_banding_level_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4159
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4160
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4161
    .local v0, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4163
    .end local v0    # "intValue":I
    :cond_0
    return-void
.end method

.method private applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4397
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_coloreffect_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4398
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4401
    :goto_0
    return-void

    .line 4399
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4400
    .local v0, "mode":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2247
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2248
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2249
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2250
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2251
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2252
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2253
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2254
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2255
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2256
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyInstantAEC(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2257
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applySaturationLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2258
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyAntiBandingLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2259
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyHistogram(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2260
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->enableBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2261
    return-void
.end method

.method private applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4363
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_exposure_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4364
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4367
    :goto_0
    return-void

    .line 4365
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4366
    .local v0, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4445
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_facedetection_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4446
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4447
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 4448
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4447
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4450
    :cond_0
    return-void
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 4453
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p2}, Lcom/android/camera/SettingsManager;->isFlashSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4454
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_flashmode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4455
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    .line 4459
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 4457
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4411
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_redeyereduction_key"

    invoke-virtual {v1, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4412
    .local v0, "redeye":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-nez v1, :cond_0

    .line 4413
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 4414
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4413
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4442
    :goto_0
    return-void

    .line 4416
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4418
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v1, :cond_2

    .line 4419
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4420
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4416
    :sswitch_0
    const-string v5, "on"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v5, "auto"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v5, "off"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    goto :goto_1

    .line 4422
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4423
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4427
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v1, :cond_3

    .line 4429
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4430
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4432
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4433
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4437
    :pswitch_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4438
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4416
    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_0
        0x1ad6f -> :sswitch_2
        0x2dddaf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1043
    if-nez p2, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1044
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1045
    .local v0, "valueF":F
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1046
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyHistogram(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4166
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_histogram_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4167
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4168
    const-string v2, "enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4169
    const/4 v0, 0x1

    .line 4170
    .local v0, "enable":B
    sget-object v2, Lcom/android/camera/CaptureModule;->histMode:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4171
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    .line 4172
    invoke-direct {p0, v4}, Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V

    .line 4173
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateGraghView()V

    .line 4179
    .end local v0    # "enable":B
    :goto_0
    return-void

    .line 4177
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    .line 4178
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V

    goto :goto_0
.end method

.method private applyInstantAEC(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4142
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_instant_aec_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4143
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4147
    :cond_0
    :goto_0
    return-void

    .line 4145
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4146
    .local v0, "intValue":I
    sget-object v2, Lcom/android/camera/CaptureModule;->INSTANT_AEC_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4370
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_iso_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4371
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 4394
    :cond_0
    :goto_0
    return-void

    .line 4372
    :cond_1
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPrioritySelectPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 4374
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V

    .line 4375
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4376
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v4, p0, Lcom/android/camera/CaptureModule;->mIsoExposureTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4378
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4379
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/android/camera/CaptureModule;->mIsoSensitivity:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4382
    :cond_3
    sget-object v3, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    .line 4383
    .local v0, "intValue":J
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPrioritySelectPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 4384
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V

    .line 4385
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4386
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/CaptureModule;->mIsoExposureTime:J

    .line 4388
    :cond_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 4389
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CaptureModule;->mIsoSensitivity:I

    .line 4391
    :cond_5
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4392
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4314
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_jpegquality_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4315
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/CaptureModule;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    .line 4316
    .local v0, "jpegQuality":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v3, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4317
    return-void
.end method

.method private applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 3512
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_noise_reduction_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3513
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3516
    :goto_0
    return-void

    .line 3514
    :cond_0
    invoke-static {v1}, Lcom/android/camera/util/SettingTranslation;->getNoiseReduction(Ljava/lang/String;)I

    move-result v0

    .line 3515
    .local v0, "noiseReduction":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4250
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 4283
    :goto_0
    return v0

    .line 4253
    :cond_0
    const/4 v0, 0x0

    .line 4254
    .local v0, "updatePreview":Z
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4256
    :pswitch_0
    const/4 v0, 0x1

    .line 4257
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4254
    :sswitch_0
    const-string v3, "pref_camera2_whitebalance_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "pref_camera2_coloreffect_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "pref_camera2_exposure_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "pref_camera2_iso_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "pref_camera2_facedetection_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "pref_camera2_focus_distance_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    .line 4260
    :pswitch_1
    const/4 v0, 0x1

    .line 4261
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4264
    :pswitch_2
    const/4 v0, 0x1

    .line 4265
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4268
    :pswitch_3
    const/4 v0, 0x1

    .line 4269
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4272
    :pswitch_4
    const/4 v0, 0x1

    .line 4273
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4276
    :pswitch_5
    const/4 v0, 0x1

    .line 4277
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto/16 :goto_0

    .line 4280
    :pswitch_6
    const/4 v0, 0x1

    .line 4281
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p3}, Lcom/android/camera/CaptureModule;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4254
    nop

    :sswitch_data_0
    .sparse-switch
        -0x149eb976 -> :sswitch_6
        -0x1218225f -> :sswitch_0
        0x15da11a6 -> :sswitch_1
        0x1b5c38f7 -> :sswitch_4
        0x47a92221 -> :sswitch_2
        0x5c7c5515 -> :sswitch_3
        0x6048953a -> :sswitch_5
    .end sparse-switch

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

.method private applySaturationLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4150
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_saturation_level_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4151
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4152
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4153
    .local v0, "intValue":I
    sget-object v2, Lcom/android/camera/CaptureModule;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4155
    .end local v0    # "intValue":I
    :cond_0
    return-void
.end method

.method private applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4336
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4337
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_auto_hdr_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4338
    .local v0, "autoHdr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 4360
    :cond_0
    :goto_0
    return-void

    .line 4339
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4340
    .local v1, "mode":I
    if-eqz v0, :cond_2

    const-string v3, "enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4341
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->isHdrScene(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4342
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4343
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4347
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->getPostProcFilterId(I)I

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    if-eqz v3, :cond_4

    .line 4348
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4351
    :cond_4
    if-eqz v1, :cond_5

    const/16 v3, 0x64

    if-eq v1, v3, :cond_5

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_5

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_5

    .line 4355
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4356
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4358
    :cond_5
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2216
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2218
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2219
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2220
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2221
    return-void
.end method

.method private applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2185
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2186
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2187
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2188
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2189
    return-void
.end method

.method private applySettingsForJpegInformation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2224
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2225
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 2227
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2229
    .end local v0    # "location":Landroid/location/Location;
    .local v1, "location":Landroid/location/Location;
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 2230
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2231
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2235
    .end local v1    # "location":Landroid/location/Location;
    .restart local v0    # "location":Landroid/location/Location;
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {p2, v3}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2236
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPictureThumbSize:Landroid/util/Size;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2237
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2238
    return-void

    .line 2233
    :cond_0
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no location - getRecordLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getRecordLocation()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2202
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2203
    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2178
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2179
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2180
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2181
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2182
    return-void
.end method

.method private applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2192
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 2193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2192
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2194
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2197
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-nez v0, :cond_0

    .line 2198
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2199
    :cond_0
    return-void
.end method

.method private applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2206
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2207
    return-void
.end method

.method private applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2210
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 2211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2210
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2212
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2213
    return-void
.end method

.method private applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 3500
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_video_flashmode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3501
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3509
    :goto_0
    return-void

    .line 3502
    :cond_0
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3504
    .local v0, "flashOn":Z
    if-eqz v0, :cond_1

    .line 3505
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3507
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyVideoSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 2241
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2242
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2243
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2244
    return-void
.end method

.method private applyVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 3519
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_dis_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3520
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3528
    :goto_0
    return-void

    .line 3521
    :cond_0
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3522
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3525
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4404
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_whitebalance_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4405
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4408
    :goto_0
    return-void

    .line 4406
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4407
    .local v0, "mode":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .prologue
    .line 4138
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p2}, Lcom/android/camera/CaptureModule;->cropRegionForZoom(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4139
    return-void
.end method

.method private applyZoomAndUpdate(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 4287
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4311
    :goto_0
    return-void

    .line 4290
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    invoke-direct {p0, v3, p1}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4292
    :try_start_0
    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4293
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    .line 4294
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4293
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4308
    :catch_0
    move-exception v0

    .line 4309
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4296
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v3, p1

    .line 4297
    .local v2, "session":Landroid/hardware/camera2/CameraCaptureSession;
    instance-of v3, v2, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v3, :cond_2

    .line 4298
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    .line 4299
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/util/CameraUtil;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;I)Ljava/util/List;

    move-result-object v1

    .line 4300
    .local v1, "list":Ljava/util/List;
    check-cast v2, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .end local v2    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 4308
    .end local v1    # "list":Ljava/util/List;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 4303
    .restart local v2    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    .line 4304
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4303
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private autoFocusTrigger(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 1535
    sget-boolean v3, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1536
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoFocusTrigger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    .line 1539
    invoke-virtual {p0, v3, v4}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1540
    :cond_1
    const-string v3, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1558
    :goto_0
    return-void

    .line 1544
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1545
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1546
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1548
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 1549
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1550
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v4, 0x5

    aput v4, v3, p1

    .line 1551
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1552
    iget v3, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    .line 1553
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1554
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    sget v4, Lcom/android/camera/CaptureModule;->CANCEL_TOUCH_FOCUS_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1555
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1555
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private canStartMonoPreview()Z
    .locals 2

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isMonoPreviewOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTouchFocus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 2402
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2403
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 2404
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    .line 2413
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 2406
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    goto :goto_0

    .line 2409
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 2410
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    goto :goto_0
.end method

.method private cancelTouchFocus(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 4525
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4534
    :goto_0
    return-void

    .line 4528
    :cond_0
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4529
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTouchFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 4532
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 4533
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    goto :goto_0
.end method

.method private captureStillPicture(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1587
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureStillPicture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iput-object v6, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 1589
    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    .line 1591
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 1592
    :cond_0
    const-string v2, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1634
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    .line 1597
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1599
    .local v0, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v2}, Lcom/android/camera/SettingsManager;->isZSLInHALEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1600
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1605
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForJpegInformation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1606
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    if-nez v2, :cond_2

    .line 1607
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1609
    :cond_2
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/util/VendorTagUtil;->setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 1610
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1612
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1613
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForClearSight(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1630
    .end local v0    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v1

    .line 1631
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Capture still picture has failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 1602
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_3
    :try_start_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1614
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->isFilterOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1615
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForFilter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 1617
    :cond_5
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1618
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v2, :cond_6

    .line 1619
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1621
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    if-nez v2, :cond_7

    .line 1622
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1624
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v2, :cond_8

    .line 1625
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForLongshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_0

    .line 1627
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForCommon(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private captureStillPictureForClearSight(I)V
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1638
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1640
    .local v0, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v3}, Lcom/android/camera/SettingsManager;->isZSLInHALEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1641
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1646
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForJpegInformation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1647
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1648
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/util/VendorTagUtil;->setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 1649
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1650
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1651
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1652
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v3

    if-nez p1, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2, v0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V

    .line 1654
    return-void

    .line 1643
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1652
    goto :goto_1
.end method

.method private captureStillPictureForCommon(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 4
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 1730
    invoke-virtual {p0, p2}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1731
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isMpoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    .line 1733
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    .line 1734
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1733
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1734
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1736
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->onStartCapturing()V

    .line 1738
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1764
    :goto_0
    return-void

    .line 1740
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CaptureModule$11;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/CaptureModule$11;-><init>(Lcom/android/camera/CaptureModule;I)V

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0
.end method

.method private captureStillPictureForFilter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 4
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1658
    invoke-virtual {p0, p2}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1659
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1660
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1661
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v1, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1664
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->onStartCapturing()V

    .line 1665
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isManualMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1666
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V

    .line 1671
    :goto_0
    return-void

    .line 1668
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    .line 1669
    .local v0, "captureList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0
.end method

.method private captureStillPictureForHDRTest(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "scene":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->isCamera2HDRSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "18"

    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    .line 870
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 872
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    .line 873
    return-void
.end method

.method private captureStillPictureForLongshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 5
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 1674
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureStillPictureForLongshot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    .local v0, "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1677
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1679
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p2

    new-instance v3, Lcom/android/camera/CaptureModule$9;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/CaptureModule$9;-><init>(Lcom/android/camera/CaptureModule;I)V

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1721
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CaptureModule$10;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$10;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1727
    return-void
.end method

.method private captureVideoSnapshot(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1767
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureVideoSnapshot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_1

    .line 1770
    :cond_0
    const-string v2, "Camera is not ready yet to take a video snapshot."

    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1812
    :goto_0
    return-void

    .line 1773
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1774
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    const/4 v3, 0x4

    .line 1775
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1777
    .local v0, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {p1, v3}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1778
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotThumbSize:Landroid/util/Size;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1779
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1780
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyVideoSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1781
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1783
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1785
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    new-instance v4, Lcom/android/camera/CaptureModule$12;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/CaptureModule$12;-><init>(Lcom/android/camera/CaptureModule;I)V

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1808
    .end local v0    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v1

    .line 1809
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "captureVideoSnapshot failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAfAeStatesAndCapture(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 840
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v5, v1, p1

    .line 844
    :try_start_0
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v1, v1, v3

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 853
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v4, v1, v3

    .line 854
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aput v4, v1, v2

    .line 855
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 856
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 863
    :cond_1
    :goto_1
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 859
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v4, v1, p1

    .line 860
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 861
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForHDRTest(I)V

    goto :goto_1
.end method

.method private checkSelfieFlashAndTakePicture()V
    .locals 2

    .prologue
    .line 3010
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isSelfieFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3011
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->startSelfieFlash()V

    .line 3012
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    if-nez v0, :cond_0

    .line 3013
    new-instance v0, Lcom/android/camera/CaptureModule$SelfieThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureModule$SelfieThread;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$1;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    .line 3014
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule$SelfieThread;->start()V

    .line 3019
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePicture()V

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 5096
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5097
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5098
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5099
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    .line 5103
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    .line 2109
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "closeCamera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeProcessors()V

    .line 2121
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2122
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 2123
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2124
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Time out waiting to lock camera closing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to lock camera closing"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    :catch_0
    move-exception v0

    .line 2152
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2153
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while trying to lock camera closing."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2155
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    throw v2

    .line 2127
    :cond_0
    :try_start_2
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2129
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 2130
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 2131
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 2134
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 2135
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 2136
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 2121
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 2140
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsLinked:Z

    .line 2142
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_4

    .line 2143
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 2144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2147
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_5

    .line 2148
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 2149
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2155
    :cond_5
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2157
    return-void
.end method

.method private closePreviewSession()V
    .locals 2

    .prologue
    .line 3678
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "closePreviewSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 3680
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 3681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3683
    :cond_0
    return-void
.end method

.method private closeProcessors()V
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->onClose()V

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v0, :cond_1

    .line 2068
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->onClose()V

    .line 2070
    :cond_1
    return-void
.end method

.method private closeSessions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2082
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2083
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 2084
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-eqz v2, :cond_0

    .line 2086
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2094
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 2095
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v6, v2, v1

    .line 2098
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 2099
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 2100
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aput-object v6, v2, v1

    .line 2082
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 2090
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 2103
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 5040
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 5042
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5046
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5048
    :cond_0
    return-void

    .line 5043
    :catch_0
    move-exception v0

    .line 5044
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .param p1, "dateTaken"    # J

    .prologue
    .line 3686
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3687
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03e4

    .line 3688
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3690
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createSession(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 1115
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aget-boolean v5, v5, p1

    if-nez v5, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSession "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1120
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1121
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1123
    new-instance v0, Lcom/android/camera/CaptureModule$6;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CaptureModule$6;-><init>(Lcom/android/camera/CaptureModule;I)V

    .line 1194
    .local v0, "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->waitForPreviewSurfaceReady()V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceForSession(I)Landroid/view/Surface;

    move-result-object v2

    .line 1197
    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 1198
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v5, v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->setOutputSurface(Landroid/view/Surface;)V

    .line 1201
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1202
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1203
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v6

    if-nez p1, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    invoke-virtual {v6, v5, v7, v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto :goto_0

    .line 1245
    .end local v0    # "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local v2    # "surface":Landroid/view/Surface;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1204
    .restart local v0    # "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .restart local v2    # "surface":Landroid/view/Surface;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1206
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    if-ne p1, v5, :cond_c

    .line 1207
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1208
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v6, Lcom/android/camera/CaptureModule$7;

    invoke-direct {v6, p0}, Lcom/android/camera/CaptureModule$7;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1214
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->getInputSurfaces()Ljava/util/List;

    move-result-object v3

    .line 1215
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 1216
    .local v4, "surs":Landroid/view/Surface;
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, p1

    invoke-virtual {v6, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1217
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1219
    .end local v4    # "surs":Landroid/view/Surface;
    :cond_6
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v5, :cond_7

    .line 1221
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    :cond_7
    iget v5, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v6, 0x23

    if-eq v5, v6, :cond_8

    iget v5, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v6, 0x22

    if-ne v5, v6, :cond_b

    .line 1224
    :cond_8
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1225
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1226
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->getZSLReprocessImageReader()Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v5, :cond_9

    .line 1228
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1230
    :cond_9
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    new-instance v6, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/media/ImageReader;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v8, v8, p1

    .line 1231
    invoke-virtual {v8}, Landroid/media/ImageReader;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    const/4 v7, 0x0

    .line 1230
    invoke-virtual {v5, v6, v1, v0, v7}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1233
    :cond_a
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v0, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1236
    :cond_b
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v0, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1239
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_c
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1240
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v0, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private createSessions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1050
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-nez v1, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1054
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->createSession(I)V

    .line 1055
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 1058
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 1061
    :pswitch_2
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 1064
    :pswitch_3
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 1068
    :cond_2
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 1069
    .local v0, "cameraId":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 1068
    .end local v0    # "cameraId":I
    :cond_3
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_1

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createVideoSnapshotImageReader()V
    .locals 4

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    .line 1979
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x2

    .line 1978
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 1980
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/android/camera/CaptureModule$14;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$14;-><init>(Lcom/android/camera/CaptureModule;)V

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2006
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 5077
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5079
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5080
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    :cond_0
    return-void
.end method

.method private enableBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 4182
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v3, :cond_0

    .line 4183
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4185
    :try_start_0
    sget-object v3, Lcom/android/camera/CaptureModule;->bokeh_enable:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4186
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4187
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4188
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_camera2_bokeh_blur_key"

    const/16 v4, 0x32

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4189
    .local v2, "progress":I
    sget-object v3, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4194
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "progress":I
    :cond_0
    :goto_0
    return-void

    .line 4190
    :catch_0
    move-exception v0

    .line 4191
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SnapCam_CaptureModule"

    const-string v4, "can not find vendor tag : org.codeaurora.qcamera3.bokeh"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private estimateJpegFileSize()V
    .locals 10

    .prologue
    .line 4033
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v8, "pref_camera2_jpegquality_key"

    invoke-virtual {v7, v8}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4035
    .local v3, "quality":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 4036
    .local v5, "ratios":[I
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4038
    .local v2, "qualities":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 4039
    .local v4, "ratio":I
    array-length v7, v5

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4040
    aget-object v7, v2, v0

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4041
    aget v4, v5, v0

    .line 4045
    :cond_0
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v8, "pref_camera2_picturesize_key"

    invoke-virtual {v7, v8}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4048
    .local v1, "pictureSize":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->parsePictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    .line 4049
    .local v6, "size":Landroid/util/Size;
    if-nez v4, :cond_2

    .line 4050
    const-string v7, "SnapCam_CaptureModule"

    const-string v8, "mJpegFileSizeEstimation 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :goto_1
    return-void

    .line 4039
    .end local v1    # "pictureSize":Ljava/lang/String;
    .end local v6    # "size":Landroid/util/Size;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4052
    .restart local v1    # "pictureSize":Ljava/lang/String;
    .restart local v6    # "size":Landroid/util/Size;
    :cond_2
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v4

    iput v7, p0, Lcom/android/camera/CaptureModule;->mJpegFileSizeEstimation:I

    .line 4053
    const-string v7, "SnapCam_CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mJpegFileSizeEstimation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/CaptureModule;->mJpegFileSizeEstimation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private generateVideoFilename(I)Ljava/lang/String;
    .locals 12
    .param p1, "outputFileFormat"    # I

    .prologue
    const/16 v9, 0x2f

    .line 3694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3695
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/CaptureModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 3696
    .local v6, "title":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3697
    .local v2, "filename":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 3699
    .local v4, "mime":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3700
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3704
    .local v5, "path":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3705
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3708
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3709
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3710
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_data"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "resolution"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    .line 3712
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3711
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 3714
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 3715
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3716
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3718
    :cond_0
    iput-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    .line 3719
    return-object v5

    .line 3702
    .end local v3    # "loc":Landroid/location/Location;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "path":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getBsgcInfo(Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;
    .locals 12
    .param p1, "captureResult"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "size"    # I

    .prologue
    .line 2967
    new-array v2, p2, [Lcom/android/camera/ExtendedFace;

    .line 2968
    .local v2, "extendedFaces":[Lcom/android/camera/ExtendedFace;
    sget-object v9, Lcom/android/camera/CaptureModule;->blinkDetected:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2969
    .local v1, "blinkDetectedArray":[B
    sget-object v9, Lcom/android/camera/CaptureModule;->blinkDegree:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2970
    .local v0, "blinkDegreesArray":[B
    sget-object v9, Lcom/android/camera/CaptureModule;->gazeDirection:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 2971
    .local v4, "gazeDirectionArray":[I
    sget-object v9, Lcom/android/camera/CaptureModule;->gazeAngle:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 2972
    .local v3, "gazeAngleArray":[B
    sget-object v9, Lcom/android/camera/CaptureModule;->smileDegree:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2973
    .local v7, "smileDegreeArray":[B
    sget-object v9, Lcom/android/camera/CaptureModule;->smileConfidence:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 2974
    .local v6, "smileConfidenceArray":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_0

    .line 2975
    new-instance v8, Lcom/android/camera/ExtendedFace;

    invoke-direct {v8, v5}, Lcom/android/camera/ExtendedFace;-><init>(I)V

    .line 2976
    .local v8, "tmp":Lcom/android/camera/ExtendedFace;
    aget-byte v9, v1, v5

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setBlinkDetected(I)V

    .line 2977
    mul-int/lit8 v9, v5, 0x2

    aget-byte v9, v0, v9

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v0, v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ExtendedFace;->setBlinkDegree(BB)V

    .line 2978
    mul-int/lit8 v9, v5, 0x3

    aget v9, v4, v9

    mul-int/lit8 v10, v5, 0x3

    add-int/lit8 v10, v10, 0x1

    aget v10, v4, v10

    mul-int/lit8 v11, v5, 0x3

    add-int/lit8 v11, v11, 0x2

    aget v11, v4, v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/camera/ExtendedFace;->setGazeDirection(III)V

    .line 2979
    aget-byte v9, v3, v5

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setGazeAngle(B)V

    .line 2980
    aget-byte v9, v7, v5

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setSmileDegree(B)V

    .line 2981
    aget-byte v9, v6, v5

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setSmileConfidence(I)V

    .line 2982
    aput-object v8, v2, v5

    .line 2974
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2984
    .end local v8    # "tmp":Lcom/android/camera/ExtendedFace;
    :cond_0
    return-object v2
.end method

.method private getFrameProcFilterId()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_makeup_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2419
    .local v1, "scene":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2420
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2423
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    :cond_1
    return-object v0
.end method

.method private getJpegData(Landroid/media/Image;)[B
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 5016
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5017
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    .line 5018
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5019
    return-object v1
.end method

.method private getMaxPictureSizeLessThan4k()Landroid/util/Size;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 4807
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v7

    const/16 v8, 0x100

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(II)[Landroid/util/Size;

    move-result-object v4

    .line 4808
    .local v4, "sizes":[Landroid/util/Size;
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 4809
    .local v2, "ratio":F
    const/4 v0, 0x0

    .line 4810
    .local v0, "optimalSize":Landroid/util/Size;
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v3, v4, v6

    .line 4811
    .local v3, "size":Landroid/util/Size;
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4810
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4812
    :cond_1
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 4813
    .local v1, "pictureRatio":F
    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 4814
    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 4815
    :cond_2
    move-object v0, v3

    goto :goto_1

    .line 4821
    .end local v1    # "pictureRatio":F
    .end local v3    # "size":Landroid/util/Size;
    :cond_3
    if-nez v0, :cond_7

    .line 4822
    const-string v6, "SnapCam_CaptureModule"

    const-string v7, "No picture size match the aspect ratio"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    array-length v6, v4

    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v3, v4, v5

    .line 4824
    .restart local v3    # "size":Landroid/util/Size;
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4823
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4825
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 4826
    :cond_6
    move-object v0, v3

    goto :goto_3

    .line 4830
    .end local v3    # "size":Landroid/util/Size;
    :cond_7
    return-object v0
.end method

.method private getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 12
    .param p1, "pictureSize"    # Landroid/util/Size;
    .param p2, "prevSizes"    # [Landroid/util/Size;

    .prologue
    .line 4794
    array-length v5, p2

    new-array v3, v5, [Landroid/graphics/Point;

    .line 4796
    .local v3, "points":[Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-double v8, v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v10, v5

    div-double v6, v8, v10

    .line 4797
    .local v6, "targetRatio":D
    const/4 v0, 0x0

    .line 4798
    .local v0, "index":I
    array-length v8, p2

    const/4 v5, 0x0

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v4, p2, v5

    .line 4799
    .local v4, "s":Landroid/util/Size;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v3, v1

    .line 4798
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 4802
    .end local v4    # "s":Landroid/util/Size;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v5, v3, v6, v7}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;[Landroid/graphics/Point;D)I

    move-result v2

    .line 4803
    .local v2, "optimalPickIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_1
    aget-object v5, p2, v2

    goto :goto_1
.end method

.method private getPostProcFilterId(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x5

    .line 2451
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 2452
    const/4 v0, 0x1

    .line 2466
    :cond_0
    :goto_0
    return v0

    .line 2453
    :cond_1
    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2454
    const/4 v0, 0x4

    goto :goto_0

    .line 2455
    :cond_2
    const/16 v1, 0x69

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2456
    const/4 v0, 0x6

    goto :goto_0

    .line 2457
    :cond_3
    const/16 v1, 0x6a

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2458
    const/4 v0, 0x7

    goto :goto_0

    .line 2459
    :cond_4
    const/16 v1, 0x66

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2460
    const/4 v0, 0x3

    goto :goto_0

    .line 2461
    :cond_5
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_6

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2462
    const/4 v0, 0x2

    goto :goto_0

    .line 2463
    :cond_6
    const/16 v1, 0x67

    if-eq p1, v1, :cond_0

    .line 2466
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQualityNumber(Ljava/lang/String;)I
    .locals 5
    .param p0, "jpegQuality"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x55

    .line 946
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 947
    .local v0, "qualityPercentile":I
    if-ltz v0, :cond_0

    const/16 v3, 0x64

    if-gt v0, v3, :cond_0

    .line 968
    .end local v0    # "qualityPercentile":I
    :goto_0
    return v0

    .restart local v0    # "qualityPercentile":I
    :cond_0
    move v0, v2

    .line 950
    goto :goto_0

    .line 951
    .end local v0    # "qualityPercentile":I
    :catch_0
    move-exception v3

    .line 954
    const/4 v1, 0x0

    .line 955
    .local v1, "value":I
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 966
    goto :goto_0

    .line 955
    :sswitch_0
    const-string v4, "superfine"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "fine"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "normal"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    .line 957
    :pswitch_0
    const/4 v1, 0x2

    .line 968
    :goto_2
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    goto :goto_0

    .line 960
    :pswitch_1
    const/4 v1, 0x1

    .line 961
    goto :goto_2

    .line 963
    :pswitch_2
    const/4 v1, 0x0

    .line 964
    goto :goto_2

    .line 955
    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_2
        -0x13ced04b -> :sswitch_0
        0x2ff5ba -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v1, v1, p1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1080
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-object v0

    .line 1078
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 7
    .param p1, "deltaMs"    # J

    .prologue
    .line 3533
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 3534
    .local v0, "numberOfFrames":D
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 5051
    const/4 v0, 0x0

    .line 5052
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 5053
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 5054
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 5053
    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5066
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 5069
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    .line 5070
    .local v2, "info":[Landroid/hardware/Camera$CameraInfo;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v4}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v3

    .line 5071
    .local v3, "mirror":Z
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5073
    .end local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    :cond_1
    return-object v0

    .line 5055
    :cond_2
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 5057
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5058
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5059
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 5058
    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 5060
    :catch_0
    move-exception v1

    .line 5062
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v4, "SnapCam_CaptureModule"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initModeByIntent()V
    .locals 5

    .prologue
    .line 1356
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1358
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    .line 1364
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.quickCapture"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mQuickCapture:Z

    .line 1365
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1366
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1367
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    .line 1368
    const-string v2, "crop"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mCropValue:Ljava/lang/String;

    .line 1370
    :cond_1
    return-void

    .line 1359
    .end local v1    # "myExtras":Landroid/os/Bundle;
    :cond_2
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1360
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    goto :goto_0

    .line 1361
    :cond_3
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1362
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 7

    .prologue
    const/16 v6, 0x300

    const/16 v5, 0x200

    const/16 v4, 0x100

    .line 976
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getRecordLocation()Z

    move-result v0

    .line 983
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 985
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->initializeFirstTime()V

    .line 986
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 989
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_2

    .line 990
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 991
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 992
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaveService(Lcom/android/camera/MediaSaveService;)V

    .line 996
    :cond_2
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 997
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    .line 998
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    .line 999
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    .line 1000
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    .line 1001
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1002
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1003
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1004
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    const/16 v3, 0x400

    invoke-virtual {v2, v6, v3}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1005
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_3

    .line 1006
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1008
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_4

    .line 1009
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1011
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_5

    .line 1012
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1014
    :cond_5
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_6

    .line 1015
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1017
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    goto/16 :goto_0
.end method

.method private initializePreviewConfiguration(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 4111
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4113
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4114
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4115
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getRecordLocation()Z

    move-result v0

    .line 1023
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1024
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1025
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1027
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaveService(Lcom/android/camera/MediaSaveService;)V

    .line 1031
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1032
    return-void
.end method

.method private initializeValues()V
    .locals 0

    .prologue
    .line 2470
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePictureSize()V

    .line 2471
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoSize()V

    .line 2472
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoSnapshotSize()V

    .line 2473
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateTimeLapseSetting()V

    .line 2474
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->estimateJpegFileSize()V

    .line 2475
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateMaxVideoDuration()V

    .line 2476
    return-void
.end method

.method private is4kSize(Landroid/util/Size;)Z
    .locals 2
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 3257
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v1, 0x870

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0xf00

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBsgcDetecionOn()Z
    .locals 3

    .prologue
    .line 927
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_bsgc_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 929
    :goto_0
    return v1

    :cond_0
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private isClearSightOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_clearsight_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFlashOff(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 4101
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isFlashOn(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isInMode(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2737
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2738
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 2753
    :cond_0
    :goto_0
    return v1

    .line 2740
    :pswitch_0
    if-eqz p1, :cond_1

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    goto :goto_0

    .line 2742
    :pswitch_1
    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 2744
    :pswitch_2
    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-eq p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 2746
    :pswitch_3
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    if-eq p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 2748
    :cond_3
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 2749
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    if-eq p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 2751
    :cond_4
    sget v2, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-eq p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 2738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isLongshotNeedCancel()Z
    .locals 20

    .prologue
    .line 4059
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getSkipMemoryCheck()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 4060
    const/4 v14, 0x0

    .line 4097
    :goto_0
    return v14

    .line 4063
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v14

    const-wide/32 v16, 0x3c00000

    cmp-long v14, v14, v16

    if-gtz v14, :cond_1

    .line 4064
    const-string v14, "SnapCam_CaptureModule"

    const-string v15, "current storage is full"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    const/4 v14, 0x1

    goto :goto_0

    .line 4067
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 4068
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 4070
    .local v2, "am":Landroid/app/ActivityManager;
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4071
    .local v8, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4072
    iget-wide v14, v8, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    .line 4075
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v8    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    .line 4076
    .local v12, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 4077
    .local v6, "maxMemory":J
    sub-long v10, v6, v12

    .line 4079
    .local v10, "remainMemory":J
    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4080
    .local v9, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 4081
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v3

    .line 4082
    .local v3, "info":[J
    const/4 v14, 0x1

    aget-wide v14, v3, v14

    const/16 v16, 0x3

    aget-wide v16, v3, v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    mul-long v4, v14, v16

    .line 4084
    .local v4, "availMem":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    cmp-long v14, v4, v14

    if-lez v14, :cond_3

    const-wide/32 v14, 0x2800000

    cmp-long v14, v10, v14

    if-gtz v14, :cond_4

    .line 4085
    :cond_3
    const-string v14, "SnapCam_CaptureModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cancel longshot: free="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-wide v16, v3, v16

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cached="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-wide v16, v3, v16

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " threshold="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0202

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v14

    .line 4089
    invoke-virtual {v14}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 4090
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 4093
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v14, :cond_5

    .line 4094
    const-string v14, "SnapCam_CaptureModule"

    const-string v15, " cancel longshot:not supported when recording"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 4097
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private isMonoPreviewOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 887
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_mono_preview_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v1

    .line 889
    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMpoOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_mpo_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPanoSetting(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4730
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4731
    .local v0, "mode":I
    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 4732
    const/4 v1, 0x1

    .line 4736
    .end local v0    # "mode":I
    :goto_0
    return v1

    .line 4734
    :catch_0
    move-exception v1

    .line 4736
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRawCaptureOn()Z
    .locals 3

    .prologue
    .line 933
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_saveraw_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 935
    :goto_0
    return v1

    :cond_0
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private isRecorderReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5115
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    if-ne v1, v0, :cond_1

    .line 5116
    :cond_0
    const/4 v0, 0x0

    .line 5118
    :cond_1
    return v0
.end method

.method private isTouchAfEnabledSceneMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2957
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2958
    .local v1, "scene":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2963
    :cond_0
    :goto_0
    return v2

    .line 2959
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2960
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    .line 2962
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isTouchToFocusAllowed()Z
    .locals 1

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isTouchAfEnabledSceneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2953
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 5145
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5162
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5163
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 5155
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5156
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5157
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5158
    return-void
.end method

.method private lockExposure(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 2163
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2175
    :goto_0
    return-void

    .line 2166
    :cond_0
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockExposure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2169
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v2, 0x3

    aput v2, v1, p1

    .line 2170
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2172
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private lockFocus(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    .line 1481
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    .line 1482
    invoke-virtual {p0, v3, v4}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1483
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1484
    const-string v3, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1532
    :cond_1
    :goto_0
    return-void

    .line 1487
    :cond_2
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockFocus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :try_start_0
    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v3, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1493
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    .line 1494
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1493
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v7, v3, p1

    .line 1509
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v3, v3, p1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 1510
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v7, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1511
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v7, v3, p1

    .line 1512
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    goto :goto_0

    .line 1497
    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOn(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1498
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1499
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    invoke-direct {p0, v3, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1500
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    .line 1501
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1500
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1504
    :catch_0
    move-exception v1

    .line 1505
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 1517
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_5
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1518
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1519
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1521
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1522
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1523
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    .line 1524
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v4, 0x1

    aput v4, v3, p1

    .line 1525
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1526
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    if-eqz v3, :cond_1

    .line 1527
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1529
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_1
    move-exception v1

    .line 1530
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1529
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private openCamera(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 2322
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2340
    :goto_0
    return-void

    .line 2325
    :cond_0
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 2329
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    aput-object v3, v2, p1

    .line 2330
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2331
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Time out waiting to lock camera opening."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to lock camera opening"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2335
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v0

    .line 2336
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 2334
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2337
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    :catch_1
    move-exception v0

    .line 2338
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private openProcessors()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 2502
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2503
    .local v11, "scene":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->getQcfaPrefEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 2504
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getIsSupportedQcfa(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 2505
    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 2506
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v6

    .line 2505
    invoke-virtual {v3, v6}, Lcom/android/camera/SettingsManager;->getSupportedQcfaDimension(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 2507
    const/4 v2, 0x0

    .line 2508
    .local v2, "isFlashOn":Z
    const/4 v4, 0x0

    .line 2509
    .local v4, "isMakeupOn":Z
    const/4 v5, 0x0

    .line 2510
    .local v5, "isSelfieMirrorOn":Z
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    if-eqz v0, :cond_3

    .line 2511
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_selfiemirror_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2512
    .local v12, "selfieMirror":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v0, "on"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    const/4 v5, 0x1

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_makeup_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2516
    .local v9, "makeup":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2517
    const/4 v4, 0x1

    .line 2519
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_flashmode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2520
    .local v8, "flashMode":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v0, "on"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2521
    const/4 v2, 0x1

    .line 2524
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isRawCaptureOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    .line 2525
    if-eqz v11, :cond_6

    .line 2526
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2527
    .local v10, "mode":I
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chosen postproc filter id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v10}, Lcom/android/camera/CaptureModule;->getPostProcFilterId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0, v10}, Lcom/android/camera/CaptureModule;->getPostProcFilterId(I)I

    move-result v1

    .line 2529
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v3

    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    iget-boolean v7, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 2528
    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/imageprocessor/PostProcessor;->onOpen(IZZZZZZ)V

    .line 2537
    .end local v8    # "flashMode":Ljava/lang/String;
    .end local v9    # "makeup":Ljava/lang/String;
    .end local v10    # "mode":I
    .end local v12    # "selfieMirror":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v0, :cond_4

    .line 2538
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V

    .line 2541
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2542
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    .line 2548
    :goto_2
    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->setUpCameraOutputs(I)V

    .line 2550
    return-void

    .end local v2    # "isFlashOn":Z
    .end local v4    # "isMakeupOn":Z
    .end local v5    # "isSelfieMirrorOn":Z
    :cond_5
    move v0, v1

    .line 2505
    goto/16 :goto_0

    .line 2532
    .restart local v2    # "isFlashOn":Z
    .restart local v4    # "isMakeupOn":Z
    .restart local v5    # "isSelfieMirrorOn":Z
    .restart local v8    # "flashMode":Ljava/lang/String;
    .restart local v9    # "makeup":Ljava/lang/String;
    .restart local v12    # "selfieMirror":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 2533
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v3

    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    iget-boolean v7, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 2532
    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/imageprocessor/PostProcessor;->onOpen(IZZZZZZ)V

    goto :goto_1

    .line 2543
    .end local v8    # "flashMode":Ljava/lang/String;
    .end local v9    # "makeup":Ljava/lang/String;
    .end local v12    # "selfieMirror":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isFilterOn()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getFrameFilters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2544
    :cond_8
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    goto :goto_2

    .line 2546
    :cond_9
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    goto :goto_2
.end method

.method private parsePictureSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2056
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2057
    .local v1, "indexX":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2058
    .local v2, "width":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2059
    .local v0, "height":I
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method private pauseVideoRecording()V
    .locals 6

    .prologue
    .line 3591
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 3593
    iget-wide v0, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    .line 3594
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 3595
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    .prologue
    .line 5137
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5138
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 5139
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 5140
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Audio focus release failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5142
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5085
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 5087
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cleanupEmptyFile()V

    .line 5088
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 5089
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 5090
    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 5092
    :cond_0
    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    .line 5093
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    .line 5126
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5129
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 5131
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 5132
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Audio focus request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5151
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5152
    return-void
.end method

.method private resetStateMachine()V
    .locals 3

    .prologue
    .line 4787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4788
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 4787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4790
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 4791
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3598
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "resumeVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 3600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    .line 3601
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateRecordingTime()V

    .line 3602
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_RESUME_SUPPORTED:Z

    if-nez v2, :cond_0

    .line 3603
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 3612
    :goto_0
    return-void

    .line 3606
    :cond_0
    :try_start_0
    const-string v2, "android.media.MediaRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "resume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3607
    .local v1, "resumeRec":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3608
    .end local v1    # "resumeRec":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 3609
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "resume method not implemented"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runPrecaptureSequence(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1819
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runPrecaptureSequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v4, v4, p1

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1824
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1825
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1826
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1827
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1828
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1829
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    .line 1831
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v4, 0x2

    aput v4, v3, p1

    .line 1832
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1833
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_0
    move-exception v1

    .line 1834
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1833
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private saveVideo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3723
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 3724
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3725
    .local v8, "origFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 3726
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Invalid file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    iput-object v10, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3748
    .end local v8    # "origFile":Ljava/io/File;
    :goto_0
    return-void

    .line 3731
    .restart local v8    # "origFile":Ljava/io/File;
    :cond_1
    const-wide/16 v2, 0x0

    .line 3732
    .local v2, "duration":J
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3735
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3736
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3741
    :goto_1
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 3743
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/MediaSaveService;->addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 3747
    .end local v2    # "duration":J
    .end local v8    # "origFile":Ljava/io/File;
    .end local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    iput-object v10, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 3738
    .restart local v2    # "duration":J
    .restart local v8    # "origFile":Ljava/io/File;
    .restart local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v7

    .line 3739
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "cannot access the file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setBokehModeVisible()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5179
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5180
    .local v1, "scene":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5181
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5182
    .local v0, "mode":I
    const/16 v2, 0x6e

    if-ne v0, v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    .line 5184
    .end local v0    # "mode":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureUI;->initializeBokehMode(Z)V

    .line 5185
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-nez v2, :cond_2

    .line 5186
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5188
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v2, :cond_5

    .line 5189
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOn()V

    .line 5193
    :goto_2
    return-void

    .restart local v0    # "mode":I
    :cond_3
    move v2, v4

    .line 5182
    goto :goto_0

    .end local v0    # "mode":I
    :cond_4
    move v3, v4

    .line 5184
    goto :goto_1

    .line 5191
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOnAwhile()V

    goto :goto_2
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 4590
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    .line 4591
    iget v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    .line 4592
    return-void
.end method

.method private setProModeVisible()V
    .locals 5

    .prologue
    .line 5167
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5168
    .local v2, "scene":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5169
    .local v1, "promode":Z
    if-eqz v2, :cond_0

    .line 5170
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5171
    .local v0, "mode":I
    const/16 v3, 0x6d

    if-ne v0, v3, :cond_0

    .line 5172
    const/4 v1, 0x1

    .line 5175
    .end local v0    # "mode":I
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/camera/CaptureUI;->initializeProMode(Z)V

    .line 5176
    return-void

    .line 5175
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setUpCameraOutputs(I)V
    .locals 13
    .param p1, "imageFormat"    # I

    .prologue
    .line 1849
    const-string v8, "SnapCam_CaptureModule"

    const-string v9, "setUpCameraOutputs"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v9, "camera"

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    .line 1852
    .local v6, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, "cameraIdList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_9

    .line 1854
    aget-object v0, v1, v4

    .line 1856
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 1857
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-direct {p0, v4}, Lcom/android/camera/CaptureModule;->isInMode(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1858
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1859
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v8

    if-ne v4, v8, :cond_1

    .line 1860
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/camera/CaptureModule;->mBayerCameraRegion:Landroid/graphics/Rect;

    .line 1862
    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mMainCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1864
    :cond_1
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1866
    .local v7, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-nez v7, :cond_3

    .line 1853
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1869
    :cond_3
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aput-object v0, v8, v4

    .line 1871
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1872
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 1875
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-virtual {v8, v7, v9, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V

    .line 1877
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v8

    invoke-virtual {v8, p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1969
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIdList":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "i":I
    .end local v7    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :catch_0
    move-exception v3

    .line 1970
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1972
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void

    .line 1880
    .restart local v0    # "cameraId":Ljava/lang/String;
    .restart local v1    # "cameraIdList":[Ljava/lang/String;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v4    # "i":I
    .restart local v7    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_4
    const/16 v8, 0x23

    if-eq p1, v8, :cond_5

    const/16 v8, 0x22

    if-ne p1, v8, :cond_8

    .line 1881
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v8

    if-ne v4, v8, :cond_8

    .line 1882
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v8}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1883
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    .line 1884
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v11}, Lcom/android/camera/imageprocessor/PostProcessor;->getMaxRequiredImageNum()I

    move-result v11

    .line 1883
    invoke-static {v9, v10, p1, v11}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    aput-object v9, v8, v4

    .line 1889
    :goto_3
    iget-boolean v8, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v8, :cond_6

    .line 1890
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    .line 1891
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v11, 0x25

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v12}, Lcom/android/camera/imageprocessor/PostProcessor;->getMaxRequiredImageNum()I

    move-result v12

    .line 1890
    invoke-static {v9, v10, v11, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    aput-object v9, v8, v4

    .line 1892
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/camera/imageprocessor/PostProcessor;->setRawImageReader(Landroid/media/ImageReader;)V

    .line 1894
    :cond_6
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->getImageHandler()Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1895
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/camera/imageprocessor/PostProcessor;->onImageReaderReady(Landroid/media/ImageReader;Landroid/util/Size;Landroid/util/Size;)V

    goto/16 :goto_1

    .line 1886
    :cond_7
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 1887
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v11}, Lcom/android/camera/imageprocessor/PostProcessor;->getMaxRequiredImageNum()I

    move-result v11

    .line 1886
    invoke-static {v9, v10, p1, v11}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    aput-object v9, v8, v4

    goto :goto_3

    .line 1896
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 1897
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 1898
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v11

    .line 1897
    invoke-static {v9, v10, p1, v11}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    aput-object v9, v8, v4

    .line 1900
    new-instance v5, Lcom/android/camera/CaptureModule$13;

    invoke-direct {v5, p0, v4}, Lcom/android/camera/CaptureModule$13;-><init>(Lcom/android/camera/CaptureModule;I)V

    .line 1956
    .local v5, "listener":Lcom/android/camera/CaptureModule$ImageAvailableListener;
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1958
    iget-boolean v8, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v8, :cond_2

    .line 1959
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    .line 1960
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v11, 0x25

    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v12

    .line 1959
    invoke-static {v9, v10, v11, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    aput-object v9, v8, v4

    .line 1961
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 1966
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v5    # "listener":Lcom/android/camera/CaptureModule$ImageAvailableListener;
    .end local v7    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_9
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1967
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/android/camera/SettingsManager;->isAutoFocusRegionSupported(Ljava/util/List;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mAutoFocusRegionSupported:Z

    .line 1968
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/android/camera/SettingsManager;->isAutoExposureRegionSupported(Ljava/util/List;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mAutoExposureRegionSupported:Z
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private setUpMediaRecorder(I)V
    .locals 36
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3751
    const-string v31, "SnapCam_CaptureModule"

    const-string v32, "setUpMediaRecorder"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v31, v0

    const-string v32, "pref_camera2_video_quality_key"

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3753
    .local v29, "videoSize":Ljava/lang/String;
    sget-object v31, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 3754
    .local v22, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 3755
    .local v12, "intent":Landroid/content/Intent;
    const-string v31, "android.intent.extra.videoQuality"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 3756
    const-string v31, "android.intent.extra.videoQuality"

    const/16 v32, 0x0

    .line 3757
    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 3758
    .local v7, "extraVideoQuality":I
    if-lez v7, :cond_a

    .line 3759
    const/16 v22, 0x1

    .line 3764
    .end local v7    # "extraVideoQuality":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 3765
    invoke-static/range {v22 .. v22}, Lcom/android/camera/CameraSettings;->getTimeLapseQualityFor(I)I

    move-result v22

    .line 3768
    :cond_1
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 3770
    .local v16, "myExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    if-nez v31, :cond_2

    new-instance v31, Landroid/media/MediaRecorder;

    invoke-direct/range {v31 .. v31}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 3772
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->updateHFRSetting()V

    .line 3773
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    move/from16 v31, v0

    if-nez v31, :cond_b

    const/4 v9, 0x1

    .line 3775
    .local v9, "hfr":Z
    :goto_1
    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 3776
    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 3787
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v30, v0

    .line 3788
    .local v30, "videoWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v27, v0

    .line 3789
    .local v27, "videoHeight":I
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    .line 3791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v31, v0

    const-string v32, "pref_camera2_videoencoder_key"

    .line 3792
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/camera/util/SettingTranslation;->getVideoEncoder(Ljava/lang/String;)I

    move-result v25

    .line 3793
    .local v25, "videoEncoder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v31, v0

    const-string v32, "pref_camera2_audioencoder_key"

    .line 3794
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/camera/util/SettingTranslation;->getAudioEncoder(Ljava/lang/String;)I

    move-result v4

    .line 3796
    .local v4, "audioEncoder":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    move/from16 v0, v25

    move-object/from16 v1, v31

    iput v0, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 3797
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    move/from16 v31, v0

    if-nez v31, :cond_3

    if-nez v9, :cond_3

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput v4, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 3804
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3807
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->closeVideoFileDescriptor()V

    .line 3808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    if-eqz v16, :cond_e

    .line 3809
    const-string v31, "output"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 3810
    .local v20, "saveUri":Landroid/net/Uri;
    if-eqz v20, :cond_4

    .line 3812
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 3813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    const-string v32, "rw"

    .line 3814
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3815
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3821
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 3827
    .end local v20    # "saveUri":Landroid/net/Uri;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 3830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3834
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    if-nez v9, :cond_5

    .line 3836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3841
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 3843
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Profile video bitrate: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Profile video frame rate: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 3846
    const-wide v32, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v10, v32, v34

    .line 3847
    .local v10, "fps":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 3860
    .end local v10    # "fps":D
    :cond_6
    :goto_6
    const-wide/16 v18, 0x0

    .line 3861
    .local v18, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->isVideoCaptureIntent()Z

    move-result v31

    if-eqz v31, :cond_7

    if-eqz v16, :cond_7

    .line 3862
    const-string v31, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 3865
    :cond_7
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v26

    .line 3866
    .local v26, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_12

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 3867
    .local v24, "videoEnc":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 3868
    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_9

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_9

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v31, v0

    move/from16 v0, v27

    move/from16 v1, v31

    if-gt v0, v1, :cond_9

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    move/from16 v31, v0

    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_12

    .line 3872
    :cond_9
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Selected codec "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " does not support "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " resolution"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Codec capabilities: mMinFrameWidth = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " , "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "mMinFrameHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " , "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "mMaxFrameWidth = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " , "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "mMaxFrameHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    .line 3881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e00b8

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v31

    .line 3882
    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3934
    .end local v4    # "audioEncoder":I
    .end local v18    # "requestedSizeLimit":J
    .end local v24    # "videoEnc":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    .end local v25    # "videoEncoder":I
    .end local v26    # "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    .end local v27    # "videoHeight":I
    .end local v30    # "videoWidth":I
    :goto_7
    return-void

    .line 3761
    .end local v9    # "hfr":Z
    .end local v16    # "myExtras":Landroid/os/Bundle;
    .restart local v7    # "extraVideoQuality":I
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 3773
    .end local v7    # "extraVideoQuality":I
    .restart local v16    # "myExtras":Landroid/os/Bundle;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 3778
    .restart local v9    # "hfr":Z
    :cond_c
    const-string v31, "-1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v32, v0

    const-string v33, "pref_camera2_switch_camera_key"

    invoke-virtual/range {v32 .. v33}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_d

    .line 3779
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    goto/16 :goto_2

    .line 3781
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e00b9

    const/16 v33, 0x1

    invoke-static/range {v31 .. v33}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v31

    .line 3782
    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_7

    .line 3816
    .restart local v4    # "audioEncoder":I
    .restart local v20    # "saveUri":Landroid/net/Uri;
    .restart local v25    # "videoEncoder":I
    .restart local v27    # "videoHeight":I
    .restart local v30    # "videoWidth":I
    :catch_0
    move-exception v6

    .line 3818
    .local v6, "ex":Ljava/io/FileNotFoundException;
    const-string v31, "SnapCam_CaptureModule"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3823
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    .end local v20    # "saveUri":Landroid/net/Uri;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/camera/CaptureModule;->generateVideoFilename(I)Ljava/lang/String;

    move-result-object v8

    .line 3824
    .local v8, "fileName":Ljava/lang/String;
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "New video filename: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3832
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_5

    .line 3848
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 3849
    new-instance v31, Landroid/util/Range;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-direct/range {v31 .. v33}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3851
    .local v10, "fps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    int-to-double v0, v10

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 3852
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    move/from16 v23, v10

    .line 3853
    .local v23, "targetRate":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3854
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Capture rate: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", Target rate: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SettingsManager;->getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v21

    .line 3856
    .local v21, "scaledBitrate":I
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Scaled video bitrate : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_6

    .line 3852
    .end local v21    # "scaledBitrate":I
    .end local v23    # "targetRate":I
    :cond_11
    const/16 v23, 0x1e

    goto :goto_8

    .line 3890
    .end local v10    # "fps":I
    .restart local v18    # "requestedSizeLimit":J
    .restart local v26    # "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v32

    const-wide/32 v34, 0x3c00000

    sub-long v14, v32, v34

    .line 3891
    .local v14, "maxFileSize":J
    const-wide/16 v32, 0x0

    cmp-long v31, v18, v32

    if-lez v31, :cond_13

    cmp-long v31, v18, v14

    if-gez v31, :cond_13

    .line 3892
    move-wide/from16 v14, v18

    .line 3895
    :cond_13
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v31

    if-eqz v31, :cond_14

    const-wide/32 v32, -0x6000000

    cmp-long v31, v14, v32

    if-lez v31, :cond_14

    .line 3896
    const-wide/32 v14, -0x6000000

    .line 3898
    :cond_14
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "MediaRecorder setMaxFileSize: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3908
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v13

    .line 3909
    .local v13, "loc":Landroid/location/Location;
    if-eqz v13, :cond_15

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    .line 3911
    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v33, v0

    .line 3910
    invoke-virtual/range {v31 .. v33}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 3913
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureModule;->mOrientation:I

    move/from16 v31, v0

    move/from16 v0, p1

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v17

    .line 3914
    .local v17, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    move-object/from16 v31, v0

    const-string v32, "pref_camera2_video_rotation_key"

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3915
    .local v28, "videoRotation":Ljava/lang/String;
    if-eqz v28, :cond_16

    .line 3916
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    add-int v17, v17, v31

    .line 3917
    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x168

    move/from16 v17, v0

    .line 3919
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 3920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 3925
    :goto_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_7

    .line 3922
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_a

    .line 3926
    :catch_1
    move-exception v5

    .line 3927
    .local v5, "e":Ljava/io/IOException;
    const-string v31, "SnapCam_CaptureModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "prepare failed for "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 3929
    new-instance v31, Ljava/lang/RuntimeException;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v31

    .line 3901
    .end local v5    # "e":Ljava/io/IOException;
    .end local v13    # "loc":Landroid/location/Location;
    .end local v17    # "rotation":I
    .end local v28    # "videoRotation":Ljava/lang/String;
    :catch_2
    move-exception v31

    goto/16 :goto_9
.end method

.method private setUpVideoCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    .line 3477
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3478
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3480
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3481
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3482
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3483
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3484
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3485
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3486
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3487
    return-void
.end method

.method private showBokehStatusMessage(ILandroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v2, 0x1

    .line 628
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 633
    .local v3, "status":Ljava/lang/Integer;
    :try_start_0
    sget-object v5, Lcom/android/camera/CaptureModule;->bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    if-eqz v3, :cond_0

    .line 641
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message type ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "tip":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 665
    .local v2, "mDepthSuccess":Z
    :goto_3
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v6, Lcom/android/camera/CaptureModule$4;

    invoke-direct {v6, p0, v2, v4}, Lcom/android/camera/CaptureModule$4;-><init>(Lcom/android/camera/CaptureModule;ZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 637
    .end local v2    # "mDepthSuccess":Z
    .end local v4    # "tip":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find vendor tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CaptureModule;->bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 643
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_0
    const-string v4, "Too far"

    .line 644
    .restart local v4    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 646
    .end local v4    # "tip":Ljava/lang/String;
    :pswitch_1
    const-string v4, "Too near"

    .line 647
    .restart local v4    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 649
    .end local v4    # "tip":Ljava/lang/String;
    :pswitch_2
    const-string v4, "Low light"

    .line 650
    .restart local v4    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 652
    .end local v4    # "tip":Ljava/lang/String;
    :pswitch_3
    const-string v4, "Object not found"

    .line 653
    .restart local v4    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 655
    .end local v4    # "tip":Ljava/lang/String;
    :pswitch_4
    const-string v4, "Depth effect success"

    .line 656
    .restart local v4    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 658
    .end local v4    # "tip":Ljava/lang/String;
    :pswitch_5
    const-string v4, "NO depth effect"

    .line 659
    .restart local v4    # "tip":Ljava/lang/String;
    goto :goto_2

    .line 664
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5106
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 5107
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    .line 5108
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5110
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 5111
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5112
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 2267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 2268
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2269
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraImageAvailable"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    .line 2270
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2271
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraCaptureCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    .line 2272
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2273
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MpoSaveHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    .line 2274
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2276
    new-instance v0, Lcom/android/camera/CaptureModule$MyCameraHandler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureModule$MyCameraHandler;-><init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2277
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    .line 2278
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 2279
    new-instance v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureModule$MpoSaveHandler;-><init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    .line 2280
    return-void
.end method

.method private startRecordingVideo(I)Z
    .locals 12
    .param p1, "cameraId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3283
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    if-nez v5, :cond_0

    move v5, v6

    .line 3450
    :goto_0
    return v5

    .line 3286
    :cond_0
    const-string v5, "SnapCam_CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartRecordingVideo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    iput-boolean v7, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3288
    iput-boolean v7, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3289
    iput-boolean v6, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 3291
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3292
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v8

    const-wide/32 v10, 0x3c00000

    cmp-long v5, v8, v10

    if-gtz v5, :cond_1

    .line 3293
    const-string v5, "SnapCam_CaptureModule"

    const-string v7, "Storage issue, ignore the start request"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    iput-boolean v6, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3295
    iput-boolean v6, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    move v5, v6

    .line 3296
    goto :goto_0

    .line 3300
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setUpMediaRecorder(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3302
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3312
    :try_start_2
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    if-ne v5, v7, :cond_2

    .line 3313
    const-string v5, "SnapCam_CaptureModule"

    const-string v8, "Unsupported Resolution according to target"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3315
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    move v5, v6

    .line 3316
    goto :goto_0

    .line 3303
    :catch_0
    move-exception v1

    .line 3304
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v8, "Could not start media recorder.\n Can\'t start video recording."

    const/4 v9, 0x1

    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 3305
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3306
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 3307
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseAudioFocus()V

    .line 3308
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3309
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    move v5, v6

    .line 3310
    goto :goto_0

    .line 3318
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v5, :cond_3

    .line 3319
    const-string v5, "SnapCam_CaptureModule"

    const-string v8, "Fail to initialize media recorder"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3321
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    move v5, v6

    .line 3322
    goto/16 :goto_0

    .line 3325
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->requestAudioFocus()V

    .line 3326
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v5}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 3327
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v5}, Lcom/android/camera/CaptureUI;->hideUIwhileRecording()V

    .line 3328
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v5, v8, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3329
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v8, 0x0

    aput v8, v5, p1

    .line 3330
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 3331
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closePreviewSession()V

    .line 3332
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->onClose()V

    .line 3334
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3335
    .local v2, "preview":Landroid/util/Size;
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v5, :cond_4

    .line 3336
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    .line 3338
    :cond_4
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 3339
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 3338
    invoke-virtual {v5, v8, v9}, Lcom/android/camera/CaptureUI;->setPreviewSize(II)Z

    move-result v0

    .line 3340
    .local v0, "changed":Z
    if-eqz v0, :cond_5

    .line 3341
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v5}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 3342
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v5}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 3344
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v5}, Lcom/android/camera/CaptureUI;->resetTrackingFocus()V

    .line 3346
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createVideoSnapshotImageReader()V

    .line 3347
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3348
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 3349
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    aput-object v8, v5, p1

    .line 3350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3352
    .local v4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceForSession(I)Landroid/view/Surface;

    move-result-object v3

    .line 3353
    .local v3, "surface":Landroid/view/Surface;
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/imageprocessor/FrameProcessor;->onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V

    .line 3354
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3355
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v8, Lcom/android/camera/CaptureModule$20;

    invoke-direct {v8, p0}, Lcom/android/camera/CaptureModule$20;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v5, v8}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3361
    :cond_6
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v5, v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->setOutputSurface(Landroid/view/Surface;)V

    .line 3362
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3363
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v5, v4, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 3365
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v5, :cond_7

    .line 3366
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    invoke-virtual {v5, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3368
    :cond_7
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x1e

    if-le v5, v8, :cond_8

    .line 3369
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    new-instance v8, Lcom/android/camera/CaptureModule$21;

    invoke-direct {v8, p0, p1}, Lcom/android/camera/CaptureModule$21;-><init>(Lcom/android/camera/CaptureModule;I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v8, v9}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3449
    .end local v0    # "changed":Z
    .end local v2    # "preview":Landroid/util/Size;
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_1
    iput-boolean v6, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    move v5, v7

    .line 3450
    goto/16 :goto_0

    .line 3411
    .restart local v0    # "changed":Z
    .restart local v2    # "preview":Landroid/util/Size;
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_8
    :try_start_3
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3412
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    new-instance v8, Lcom/android/camera/CaptureModule$22;

    invoke-direct {v8, p0, p1}, Lcom/android/camera/CaptureModule$22;-><init>(Lcom/android/camera/CaptureModule;I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v8, v9}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3444
    .end local v0    # "changed":Z
    .end local v2    # "preview":Landroid/util/Size;
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :catch_1
    move-exception v1

    .line 3445
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 3446
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v1

    .line 3447
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    .line 2286
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2287
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2288
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2289
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2292
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 2294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2299
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    .line 2301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2306
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    .line 2308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2313
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    .line 2315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2319
    :goto_3
    return-void

    .line 2295
    :catch_0
    move-exception v0

    .line 2296
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2302
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 2303
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2309
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 2310
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2316
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 2317
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method private stopRecordingVideo(I)V
    .locals 10
    .param p1, "cameraId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3623
    const-string v4, "SnapCam_CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopRecordingVideo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iput-boolean v8, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    .line 3626
    const/4 v2, 0x0

    .line 3628
    .local v2, "shouldAddToMediaStoreNow":Z
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v4, v9}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3629
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->onClose()V

    .line 3630
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closePreviewSession()V

    .line 3632
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3633
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3634
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    .line 3635
    const/4 v2, 0x1

    .line 3636
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->getVideoButton()Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e03fe

    .line 3637
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3636
    invoke-static {v4, v5}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3642
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 3643
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->saveVideo()V

    .line 3645
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOnAwhile()V

    .line 3647
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 3648
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseAudioFocus()V

    .line 3650
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4, v7, v7}, Lcom/android/camera/CaptureUI;->showRecordingUI(ZZ)V

    .line 3651
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4, v8}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 3653
    iput-boolean v7, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3654
    iget v4, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3655
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isQuickCapture()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3656
    invoke-virtual {p0, v8}, Lcom/android/camera/CaptureModule;->onRecordingDone(Z)V

    .line 3663
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v4, :cond_3

    .line 3664
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V

    .line 3666
    :cond_3
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/CaptureUI;->setPreviewSize(II)Z

    move-result v0

    .line 3667
    .local v0, "changed":Z
    if-eqz v0, :cond_4

    .line 3668
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 3669
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 3671
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createSessions()V

    .line 3672
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 3673
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->resetTrackingFocus()V

    .line 3674
    iput-boolean v7, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    .line 3675
    return-void

    .line 3638
    .end local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 3639
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "SnapCam_CaptureModule"

    const-string v5, "MediaRecoder stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3640
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/camera/CaptureModule;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_0

    .line 3658
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3659
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/CaptureUI;->showRecordVideoForReview(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private takePicture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1402
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "takePicture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1404
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->isZSLInHALEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takeZSLPictureInHAL()V

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1408
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1410
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    .line 1411
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    goto :goto_0

    .line 1414
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->takeZSLPicture(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    goto :goto_0

    .line 1420
    :pswitch_2
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    goto :goto_0

    .line 1423
    :pswitch_3
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->takeZSLPicture(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1426
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    goto :goto_0

    .line 1430
    :cond_2
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 1431
    .local v0, "cameraId":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->takeZSLPicture(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1434
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    goto :goto_0

    .line 1430
    .end local v0    # "cameraId":I
    :cond_3
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_1

    .line 1408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private takeZSLPicture(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 1440
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->takeZSLPicture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1442
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private takeZSLPictureInHAL()V
    .locals 3

    .prologue
    .line 1449
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "takeHALZSLPicture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v0, 0x0

    .line 1451
    .local v0, "cameraId":I
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1470
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 1471
    :goto_1
    return-void

    .line 1454
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 1455
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    goto :goto_1

    .line 1458
    :pswitch_1
    const/4 v0, 0x0

    .line 1459
    goto :goto_0

    .line 1461
    :pswitch_2
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    .line 1462
    goto :goto_0

    .line 1464
    :pswitch_3
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_0

    .line 1468
    :cond_0
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    :goto_2
    goto :goto_0

    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_2

    .line 1452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateCaptureStateMachine(ILandroid/hardware/camera2/CaptureResult;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 751
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 836
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 756
    :pswitch_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 757
    .local v1, "afState":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 758
    .local v0, "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_WAITING_AF_LOCK id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v8, v2, :cond_1

    .line 762
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v9, v2, :cond_1

    .line 763
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v5, v2, :cond_1

    const/4 v2, 0x6

    .line 764
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v2, v2, p1

    .line 765
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 766
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    .line 767
    :cond_1
    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 771
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->checkAfAeStatesAndCapture(I)V

    goto/16 :goto_0

    .line 773
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v6, v2, p1

    goto/16 :goto_0

    .line 775
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v2, v2, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v2, v2, p1

    if-nez v2, :cond_0

    .line 778
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 779
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOff(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 780
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->lockExposure(I)V

    goto/16 :goto_0

    .line 782
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->runPrecaptureSequence(I)V

    goto/16 :goto_0

    .line 786
    :cond_7
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v2, v2, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 787
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "AF lock request result received, but not focused"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aput v7, v2, p1

    goto/16 :goto_0

    .line 794
    .end local v0    # "aeState":Ljava/lang/Integer;
    .end local v1    # "afState":Ljava/lang/Integer;
    :pswitch_2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 795
    .restart local v1    # "afState":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 796
    .restart local v0    # "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_WAITING_PRECAPTURE id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " afState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    if-eqz v0, :cond_8

    .line 798
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v9, :cond_8

    .line 799
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v8, :cond_8

    .line 800
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_b

    .line 801
    :cond_8
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aget v2, v2, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aget v2, v2, p1

    if-nez v2, :cond_0

    .line 802
    :cond_9
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v2, :cond_a

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOn(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 803
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->checkAfAeStatesAndCapture(I)V

    goto/16 :goto_0

    .line 805
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->lockExposure(I)V

    goto/16 :goto_0

    .line 808
    :cond_b
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aget v2, v2, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 809
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "AE trigger request result received, but not converged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aput v7, v2, p1

    goto/16 :goto_0

    .line 816
    .end local v0    # "aeState":Ljava/lang/Integer;
    .end local v1    # "afState":Ljava/lang/Integer;
    :pswitch_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 817
    .restart local v1    # "afState":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 818
    .restart local v0    # "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_WAITING_AE_LOCK id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " afState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 820
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->checkAfAeStatesAndCapture(I)V

    goto/16 :goto_0

    .line 825
    .end local v0    # "aeState":Ljava/lang/Integer;
    .end local v1    # "afState":Ljava/lang/Integer;
    :pswitch_4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 826
    .restart local v1    # "afState":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 827
    .restart local v0    # "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_AF_AE_LOCKED id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 831
    .end local v0    # "aeState":Ljava/lang/Integer;
    .end local v1    # "afState":Ljava/lang/Integer;
    :pswitch_5
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 832
    .restart local v1    # "afState":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 833
    .restart local v0    # "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_WAITING_TOUCH_FOCUS id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private updateFaceDetection()V
    .locals 3

    .prologue
    .line 4740
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_facedetection_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4741
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureModule$28;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CaptureModule$28;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4752
    return-void
.end method

.method private updateFaceView([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "extendedFaces"    # [Lcom/android/camera/ExtendedFace;

    .prologue
    .line 2988
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewFaces:[Landroid/hardware/camera2/params/Face;

    .line 2989
    iput-object p2, p0, Lcom/android/camera/CaptureModule;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 2990
    if-eqz p1, :cond_1

    .line 2991
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2992
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mStickyFaces:[Landroid/hardware/camera2/params/Face;

    .line 2993
    iput-object p2, p0, Lcom/android/camera/CaptureModule;->mStickyExFaces:[Lcom/android/camera/ExtendedFace;

    .line 2995
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/CaptureModule$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/CaptureModule$19;-><init>(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3002
    :cond_1
    return-void
.end method

.method private updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 4574
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4575
    .local v0, "resultAFState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4587
    :goto_0
    return-void

    .line 4578
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/CaptureModule;->mLastResultAFState:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mFocusStateListener:Lcom/android/camera/FocusStateListener;

    if-eqz v1, :cond_1

    .line 4579
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureModule$27;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CaptureModule$27;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4586
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mLastResultAFState:I

    goto :goto_0
.end method

.method private updateGraghView()V
    .locals 2

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$25;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$25;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4247
    return-void
.end method

.method private updateGraghViewVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 4212
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$24;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$24;-><init>(Lcom/android/camera/CaptureModule;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4228
    return-void
.end method

.method private updateHFRSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 3464
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_hfr_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3465
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3474
    :goto_0
    return-void

    .line 3466
    :cond_0
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3467
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    goto :goto_0

    .line 3469
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    .line 3470
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3471
    .local v0, "mode":Ljava/lang/String;
    const-string v2, "hsr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    .line 3472
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    goto :goto_0
.end method

.method private updateMaxVideoDuration()V
    .locals 4

    .prologue
    .line 3261
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_video_duration_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3262
    .local v1, "minutesStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3263
    .local v0, "minutes":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3265
    const/16 v2, 0x7530

    iput v2, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    .line 3270
    :goto_0
    return-void

    .line 3268
    :cond_0
    const v2, 0xea60

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    goto :goto_0
.end method

.method private updatePictureSize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3198
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3199
    .local v0, "pictureSize":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->parsePictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 3200
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    const-class v6, Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(ILjava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 3202
    .local v1, "prevSizes":[Landroid/util/Size;
    aget-object v4, v1, v7

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    .line 3203
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    const/16 v6, 0x25

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(II)[Landroid/util/Size;

    move-result-object v2

    .line 3205
    .local v2, "rawSize":[Landroid/util/Size;
    aget-object v4, v2, v7

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    .line 3206
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-direct {p0, v4, v1}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    .line 3207
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getSupportedThumbnailSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 3208
    .local v3, "thumbSizes":[Landroid/util/Size;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-direct {p0, v4, v3}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureThumbSize:Landroid/util/Size;

    .line 3209
    return-void
.end method

.method private updatePreviewSize()V
    .locals 8

    .prologue
    .line 2479
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 2480
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 2482
    .local v0, "height":I
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v6, "pref_camera2_makeup_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2483
    .local v1, "makeup":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 2484
    .local v2, "makeupOn":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 2485
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 2486
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 2489
    :cond_0
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v3

    .line 2490
    .local v3, "previewSize":Landroid/graphics/Point;
    if-eqz v3, :cond_1

    .line 2491
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 2492
    iget v0, v3, Landroid/graphics/Point;->y:I

    .line 2495
    :cond_1
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreviewSize final preview size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    .line 2498
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CaptureUI;->setPreviewSize(II)Z

    .line 2499
    return-void

    .line 2483
    .end local v2    # "makeupOn":Z
    .end local v3    # "previewSize":Landroid/graphics/Point;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updatePreviewSurfaceReadyState(Z)V
    .locals 3
    .param p1, "rdy"    # Z

    .prologue
    .line 1098
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    if-eq p1, v1, :cond_0

    .line 1099
    if-eqz p1, :cond_1

    .line 1100
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Preview Surface is ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    :try_start_0
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Preview Surface is not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    .line 1107
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 20

    .prologue
    .line 3538
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-nez v15, :cond_1

    .line 3588
    :cond_0
    :goto_0
    return-void

    .line 3541
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    if-nez v15, :cond_0

    .line 3545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3546
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    .line 3550
    .local v6, "delta":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v6, v16

    if-ltz v15, :cond_4

    const/4 v5, 0x1

    .line 3553
    .local v5, "countdownRemainingTime":Z
    :goto_1
    move-wide v8, v6

    .line 3554
    .local v8, "deltaAdjusted":J
    if-eqz v5, :cond_2

    .line 3555
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x3e7

    add-long v8, v16, v18

    .line 3560
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    if-nez v15, :cond_5

    .line 3561
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/android/camera/util/CameraUtil;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 3562
    .local v14, "text":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 3571
    .local v12, "targetNextUpdateDelay":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v15, v14}, Lcom/android/camera/CaptureUI;->setRecordingTime(Ljava/lang/String;)V

    .line 3573
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/CaptureModule;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_3

    .line 3576
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/camera/CaptureModule;->mRecordingTimeCountsDown:Z

    .line 3578
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v5, :cond_6

    const v15, 0x7f0a0012

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 3582
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v15, v4}, Lcom/android/camera/CaptureUI;->setRecordingTimeTextColor(I)V

    .line 3585
    .end local v4    # "color":I
    :cond_3
    rem-long v16, v6, v12

    sub-long v2, v12, v16

    .line 3586
    .local v2, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3550
    .end local v2    # "actualNextUpdateDelay":J
    .end local v5    # "countdownRemainingTime":Z
    .end local v8    # "deltaAdjusted":J
    .end local v12    # "targetNextUpdateDelay":J
    .end local v14    # "text":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 3567
    .restart local v5    # "countdownRemainingTime":Z
    .restart local v8    # "deltaAdjusted":J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/CaptureModule;->getTimeLapseVideoLength(J)J

    move-result-wide v16

    const/4 v15, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Lcom/android/camera/util/CameraUtil;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 3568
    .restart local v14    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v12, v15

    .restart local v12    # "targetNextUpdateDelay":J
    goto :goto_2

    .line 3578
    :cond_6
    const v15, 0x7f0a0011

    goto :goto_3
.end method

.method private updateSaveStorageState()V
    .locals 2

    .prologue
    .line 5023
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_savepath_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 5024
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5023
    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 5025
    return-void
.end method

.method private updateTimeLapseSetting()V
    .locals 4

    .prologue
    .line 3454
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_video_time_lapse_frame_interval_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3456
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3461
    :goto_0
    return-void

    .line 3457
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3458
    .local v0, "time":I
    iput v0, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 3459
    iget v2, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    .line 3460
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureUI;->showTimeLapseUI(Z)V

    goto :goto_0

    .line 3459
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateVideoFlash()V
    .locals 5

    .prologue
    .line 3490
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v1, :cond_1

    .line 3497
    :cond_0
    :goto_0
    return-void

    .line 3491
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3493
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3494
    :catch_0
    move-exception v0

    .line 3495
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateVideoSize()V
    .locals 6

    .prologue
    .line 3232
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_video_quality_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3233
    .local v2, "videoSize":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3245
    :goto_0
    return-void

    .line 3234
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->parsePictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    .line 3235
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    const-class v5, Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(ILjava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 3237
    .local v0, "prevSizes":[Landroid/util/Size;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-direct {p0, v3, v0}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3239
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v1

    .line 3240
    .local v1, "previewSize":Landroid/graphics/Point;
    if-eqz v1, :cond_1

    .line 3241
    new-instance v3, Landroid/util/Size;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3243
    :cond_1
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreviewSize final preview size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3244
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3243
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVideoSnapshotSize()V
    .locals 3

    .prologue
    .line 3248
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    .line 3249
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3250
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getMaxPictureSizeLessThan4k()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    .line 3252
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getSupportedThumbnailSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 3253
    .local v0, "thumbSizes":[Landroid/util/Size;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotThumbSize:Landroid/util/Size;

    .line 3254
    return-void
.end method

.method private updateZoom()V
    .locals 4

    .prologue
    .line 3273
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_zoom_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3274
    .local v1, "zoomStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3275
    .local v0, "zoom":I
    if-eqz v0, :cond_0

    .line 3276
    int-to-float v2, v0

    iput v2, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 3280
    :goto_0
    return-void

    .line 3278
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    goto :goto_0
.end method

.method private waitForPreviewSurfaceReady()V
    .locals 5

    .prologue
    .line 1085
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    if-nez v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1087
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Time out waiting for surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Time out waiting for surface."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1095
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private warningToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$23;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$23;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3990
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 3173
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 2876
    return-void
.end method

.method public cancelCapture()V
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1396
    return-void
.end method

.method public checkAndPlayShutterSound(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 4481
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 4482
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_shutter_sound_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4483
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_0

    .line 4484
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 4487
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 5196
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cropRegionForZoom(I)Landroid/graphics/Rect;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 4122
    sget-boolean v6, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 4123
    const-string v6, "SnapCam_CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropRegionForZoom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    :cond_0
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v6, p1}, Lcom/android/camera/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 4126
    .local v0, "activeRegion":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4128
    .local v1, "cropRegion":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 4129
    .local v2, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 4130
    .local v4, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    mul-float/2addr v7, v9

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 4131
    .local v3, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    mul-float/2addr v7, v9

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 4132
    .local v5, "yDelta":I
    sub-int v6, v2, v3

    sub-int v7, v4, v5

    add-int v8, v2, v3

    add-int v9, v4, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 4133
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aput-object v1, v6, p1

    .line 4134
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    return-object v6
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 3051
    if-eqz p1, :cond_0

    const-string v0, "on"

    .line 3053
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_recordlocation_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3054
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3055
    return-void

    .line 3051
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public getCameraMode()I
    .locals 4

    .prologue
    .line 909
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_switch_camera_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "switchValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 911
    const/4 v2, 0x3

    .line 917
    :goto_0
    return v2

    .line 913
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 915
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_mono_only_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    if-eqz v1, :cond_2

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 917
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getCameraRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBayerCameraRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 2885
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIntentMode()I
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 3153
    iget v0, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    return v0
.end method

.method public getFrameFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getFrameFilters()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocationManager()Lcom/android/camera/LocationManager;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method public getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMainCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getMainCameraId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2927
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2928
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2940
    :goto_0
    :pswitch_0
    return v0

    .line 2933
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    goto :goto_0

    .line 2935
    :pswitch_2
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_0

    .line 2939
    :cond_0
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 2940
    .local v0, "cameraId":I
    :goto_1
    goto :goto_0

    .line 2939
    .end local v0    # "cameraId":I
    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_1

    .line 2928
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method public getPostProcessor()Lcom/android/camera/imageprocessor/PostProcessor;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    return-object v0
.end method

.method public getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getPreviewFaces()[Landroid/hardware/camera2/params/Face;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewFaces:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method public getPreviewSurfaceForSession(I)Landroid/view/Surface;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 4490
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4491
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 4492
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v0

    .line 4497
    :goto_0
    return-object v0

    .line 4494
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 4497
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecordLocation()Z
    .locals 3

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_recordlocation_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "none"

    .line 1323
    :cond_0
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getStickyFaces()[Landroid/hardware/camera2/params/Face;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mStickyFaces:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method public getThumbSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPictureThumbSize:Landroid/util/Size;

    return-object v0
.end method

.method public getTrackingForcusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;
    .locals 1

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getTrackingFocusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getZoomValue()F
    .locals 1

    .prologue
    .line 4118
    iget v0, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    return v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1328
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1329
    iput-object p2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    .line 1330
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 1331
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1, p0}, Lcom/android/camera/SettingsManager;->registerListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 1332
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->init()V

    .line 1333
    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    .line 1334
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aput-boolean v3, v1, v0

    .line 1337
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v3, v1, v0

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 1340
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v3, v1, v0

    .line 1339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1343
    :cond_1
    new-instance v1, Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/imageprocessor/PostProcessor;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1344
    new-instance v1, Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/imageprocessor/FrameProcessor;-><init>(Landroid/app/Activity;Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 1346
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 1347
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initModeByIntent()V

    .line 1348
    new-instance v1, Lcom/android/camera/CaptureUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/CaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    .line 1349
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->initializeControlByIntent()V

    .line 1351
    new-instance v1, Lcom/android/camera/FocusStateListener;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-direct {v1, v2}, Lcom/android/camera/FocusStateListener;-><init>(Lcom/android/camera/CaptureUI;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mFocusStateListener:Lcom/android/camera/FocusStateListener;

    .line 1352
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 1353
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 2647
    return-void
.end method

.method public isAllSessionClosed()Z
    .locals 2

    .prologue
    .line 2073
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2074
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2075
    const/4 v1, 0x0

    .line 2078
    :goto_1
    return v1

    .line 2073
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2078
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isAudioMute()Z
    .locals 1

    .prologue
    .line 3228
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsMute:Z

    return v0
.end method

.method public isBackCamera()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 894
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_switch_camera_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "switchValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, "-1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 896
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_switch_camera_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 897
    .local v1, "value":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "front"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 905
    .end local v1    # "value":[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "value":[Ljava/lang/CharSequence;
    :cond_1
    move v2, v3

    .line 900
    goto :goto_0

    .line 902
    .end local v1    # "value":[Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_id_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_3

    move v2, v3

    goto :goto_0

    .line 904
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isCameraIdle()Z
    .locals 1

    .prologue
    .line 2763
    const/4 v0, 0x1

    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 2758
    const/4 v0, 0x0

    return v0
.end method

.method public isLongShotActive()Z
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    return v0
.end method

.method public isLongShotSettingEnabled()Z
    .locals 3

    .prologue
    .line 3993
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_longshot_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3994
    .local v0, "longshot":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3995
    const/4 v1, 0x1

    .line 3997
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isQuickCapture()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mQuickCapture:Z

    return v0
.end method

.method public isRecordingVideo()Z
    .locals 1

    .prologue
    .line 3216
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    return v0
.end method

.method public isRefocus()Z
    .locals 1

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    return v0
.end method

.method public isSelfieFlash()Z
    .locals 3

    .prologue
    .line 3005
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_selfie_flash_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3006
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    sget v2, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTakingPicture()Z
    .locals 2

    .prologue
    .line 2945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2946
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2948
    :goto_1
    return v1

    .line 2945
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2948
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isTrackingFocusSettingOn()Z
    .locals 4

    .prologue
    .line 2430
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2432
    .local v1, "scene":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2433
    .local v0, "mode":I
    const/16 v2, 0x6c

    if-ne v0, v2, :cond_0

    .line 2434
    const/4 v2, 0x1

    .line 2438
    .end local v0    # "mode":I
    :goto_0
    return v2

    .line 2436
    :catch_0
    move-exception v2

    .line 2438
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public linkBayerMono(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1561
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkBayerMono "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    if-nez p1, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1564
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1565
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1568
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1569
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2652
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onButtonContinue()V
    .locals 0

    .prologue
    .line 3619
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resumeVideoRecording()V

    .line 3620
    return-void
.end method

.method public onButtonPause()V
    .locals 0

    .prologue
    .line 3615
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->pauseVideoRecording()V

    .line 3616
    return-void
.end method

.method public onCaptureCancelled()V
    .locals 0

    .prologue
    .line 2866
    return-void
.end method

.method public onCaptureDone()V
    .locals 17

    .prologue
    .line 2768
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v13, :cond_0

    .line 2847
    :goto_0
    return-void

    .line 2772
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 2774
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mCropValue:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 2779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_1

    .line 2780
    const/4 v9, 0x0

    .line 2782
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 2783
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 2784
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 2786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 2787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2791
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2788
    :catch_0
    move-exception v13

    .line 2791
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v13

    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 2794
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 2795
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v8

    .line 2796
    .local v8, "orientation":I
    const v13, 0xc800

    invoke-static {v4, v13}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2797
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    .line 2799
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    .line 2798
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 2804
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "orientation":I
    :cond_2
    const/4 v12, 0x0

    .line 2805
    .local v12, "tempUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2807
    .local v11, "tempStream":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 2808
    .local v10, "path":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2809
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 2810
    invoke-virtual {v11, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2811
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 2812
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 2822
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2825
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2826
    .local v7, "newExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2827
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_5

    .line 2830
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2834
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2835
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2839
    :cond_4
    const-string v1, "com.android.camera.action.CROP"

    .line 2840
    .local v1, "CROP_ACTION":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2842
    .local v3, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2843
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v3, v14}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2813
    .end local v1    # "CROP_ACTION":Ljava/lang/String;
    .end local v3    # "cropIntent":Landroid/content/Intent;
    .end local v7    # "newExtras":Landroid/os/Bundle;
    .end local v10    # "path":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 2814
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2822
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2817
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 2818
    .local v5, "ex":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 2819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2822
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 2832
    .restart local v7    # "newExtras":Landroid/os/Bundle;
    .restart local v10    # "path":Ljava/io/File;
    :cond_5
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onCaptureRetake()V
    .locals 0

    .prologue
    .line 2871
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 3084
    return-void
.end method

.method public onClearSightFailure([B)V
    .locals 2
    .param p1, "thumbnailBytes"    # [B

    .prologue
    .line 4944
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onClearSightFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 4946
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$30;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$30;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4954
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onReleaseShutterLock()V

    .line 4955
    return-void
.end method

.method public onClearSightSuccess([B)V
    .locals 2
    .param p1, "thumbnailBytes"    # [B

    .prologue
    .line 4930
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onClearSightSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onReleaseShutterLock()V

    .line 4932
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 4933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$29;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$29;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4940
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2626
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    .line 2628
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 3023
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->checkSelfieFlashAndTakePicture()V

    .line 3024
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIAfterCountDown()V

    .line 3025
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->onDestory()V

    .line 2640
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/SettingsManager;->unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 2641
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 2642
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 4989
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 4991
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 4992
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4994
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 4996
    :cond_0
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 4983
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->enableRecordingLocation(Z)V

    .line 4984
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 5001
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 5002
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_0

    .line 5003
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 5013
    :cond_0
    :goto_0
    return-void

    .line 5005
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 5006
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_2

    .line 5007
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 5010
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e03e6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 5011
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2661
    sparse-switch p1, :sswitch_data_0

    .line 2681
    :cond_0
    :goto_0
    return v0

    .line 2664
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2668
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 2669
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2670
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureModule;->onShutterButtonFocus(Z)V

    :cond_1
    move v0, v1

    .line 2672
    goto :goto_0

    .line 2676
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2677
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    :cond_2
    move v0, v1

    .line 2679
    goto :goto_0

    .line 2661
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2686
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2701
    :cond_0
    :goto_0
    return v0

    .line 2689
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2690
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2691
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2694
    goto :goto_0

    .line 2696
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 2697
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 2686
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 3163
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 3164
    invoke-virtual {p1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 3165
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3166
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaveService(Lcom/android/camera/MediaSaveService;)V

    .line 3169
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/16 v7, 0x300

    const/16 v6, 0x200

    const/16 v5, 0x100

    const/high16 v4, 0x3f400000    # 0.75f

    .line 3101
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 3102
    :cond_1
    iget v0, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 3103
    .local v0, "oldOrientation":I
    iget v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 3104
    iget v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    if-eq v0, v1, :cond_5

    .line 3105
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->onOrientationChanged()V

    .line 3106
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CaptureUI;->setOrientation(IZ)V

    .line 3107
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_2

    .line 3108
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3110
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_3

    .line 3111
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3113
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_4

    .line 3114
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3116
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_5

    .line 3117
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3122
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    .line 3123
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    .line 3124
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    .line 3125
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    .line 3126
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3127
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3128
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v6, v7}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3129
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    const/16 v2, 0x400

    invoke-virtual {v1, v7, v2}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3130
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_6

    .line 3131
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3132
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3133
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3135
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_7

    .line 3136
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3137
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3138
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3140
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_8

    .line 3141
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3142
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3143
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3145
    :cond_8
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_0

    .line 3146
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3147
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3148
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    goto/16 :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2369
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2371
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2372
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->close()V

    .line 2374
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeCamera()V

    .line 2375
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showPreviewCover()V

    .line 2376
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 2377
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    .line 2378
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBackgroundThread()V

    .line 2379
    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    .line 2380
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setProModeVisible()V

    .line 2381
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setBokehModeVisible()V

    .line 2382
    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 2383
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeVideoFileDescriptor()V

    .line 2384
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2349
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cancelTouchFocus()V

    .line 2350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 2351
    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    .line 2352
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->onPause()V

    .line 2353
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_0

    .line 2354
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 2357
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 2358
    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    if-eqz v0, :cond_2

    .line 2361
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule$SelfieThread;->interrupt()V

    .line 2363
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resetScreenOn()V

    .line 2364
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->stopSelfieFlash()V

    .line 2365
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureUI;->onPreviewFocusChanged(Z)V

    .line 2345
    return-void
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3035
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 3079
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .prologue
    .line 3073
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->updatePreviewSurfaceReadyState(Z)V

    .line 3074
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 1

    .prologue
    .line 3064
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->updatePreviewSurfaceReadyState(Z)V

    .line 3066
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_0

    .line 3069
    :cond_0
    return-void
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 4503
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$26;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$26;-><init>(Lcom/android/camera/CaptureModule;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4509
    return-void
.end method

.method public onRecordingDone(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 2850
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2852
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2853
    const/4 v0, -0x1

    .line 2854
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2855
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2859
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2860
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2861
    return-void

    .line 2857
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method public onReleaseShutterLock()V
    .locals 2

    .prologue
    .line 4923
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onReleaseShutterLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 4925
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 4926
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2554
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->reinit()V

    .line 2556
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeValues()V

    .line 2557
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewSize()V

    .line 2558
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    .line 2560
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-nez v3, :cond_0

    .line 2561
    new-instance v3, Landroid/media/MediaActionSound;

    invoke-direct {v3}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    .line 2564
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateSaveStorageState()V

    .line 2565
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    .line 2566
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->startBackgroundThread()V

    .line 2567
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->openProcessors()V

    .line 2568
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2569
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 2570
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2571
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2591
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 2592
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v3, :cond_5

    .line 2593
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeFirstTime()V

    .line 2597
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->reInitUI()V

    .line 2598
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/CaptureModule$18;

    invoke-direct {v4, p0}, Lcom/android/camera/CaptureModule$18;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2604
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 2605
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/CaptureUI;->enableVideo(Z)V

    .line 2606
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setProModeVisible()V

    .line 2607
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setBokehModeVisible()V

    .line 2609
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2610
    .local v2, "scene":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_1

    .line 2611
    invoke-virtual {p0, v6}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    .line 2613
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->isPanoSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2614
    iget v3, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    if-eqz v3, :cond_6

    .line 2615
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_scenemode_key"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2617
    const-string v3, "Pano Capture is not supported in this mode"

    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->showToast(Ljava/lang/String;)V

    .line 2622
    :cond_2
    :goto_2
    return-void

    .line 2574
    .end local v2    # "scene":Ljava/lang/String;
    :pswitch_0
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 2575
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2578
    :pswitch_1
    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 2579
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2582
    :pswitch_2
    sget v3, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 2583
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2587
    :cond_3
    sget v3, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 2588
    .local v0, "cameraId":I
    :goto_3
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2589
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2587
    .end local v0    # "cameraId":I
    :cond_4
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_3

    .line 2595
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeSecondTime()V

    goto :goto_1

    .line 2619
    .restart local v2    # "scene":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->onModuleSelected(I)V

    goto :goto_2

    .line 2571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResumeBeforeSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2388
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 2389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2390
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aput-boolean v2, v1, v0

    .line 2391
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v2, v1, v0

    .line 2389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2393
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 2394
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v2, v1, v0

    .line 2393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2396
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 2397
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateZoom()V

    .line 2398
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->updatePreviewSurfaceReadyState(Z)V

    .line 2399
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3030
    return-void
.end method

.method public onSettingsChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 4596
    iget-boolean v10, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v10, :cond_1

    .line 4726
    :cond_0
    :goto_0
    return-void

    .line 4597
    :cond_1
    const/4 v4, 0x0

    .line 4598
    .local v4, "updatePreviewBayer":Z
    const/4 v7, 0x0

    .line 4599
    .local v7, "updatePreviewMono":Z
    const/4 v5, 0x0

    .line 4600
    .local v5, "updatePreviewFront":Z
    const/4 v6, 0x0

    .line 4601
    .local v6, "updatePreviewLogical":Z
    const/4 v0, 0x0

    .line 4602
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SettingsManager$SettingState;

    .line 4603
    .local v3, "settingState":Lcom/android/camera/SettingsManager$SettingState;
    iget-object v2, v3, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    .line 4604
    .local v2, "key":Ljava/lang/String;
    iget-object v9, v3, Lcom/android/camera/SettingsManager$SettingState;->values:Lcom/android/camera/SettingsManager$Values;

    .line 4606
    .local v9, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v10, v9, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 4607
    iget-object v8, v9, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    .line 4611
    .local v8, "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_2
    move v10, v12

    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 4653
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4654
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 4674
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 4675
    goto :goto_1

    .line 4609
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    iget-object v8, v9, Lcom/android/camera/SettingsManager$Values;->value:Ljava/lang/String;

    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_2

    .line 4611
    :sswitch_0
    const-string v10, "pref_camera2_savepath_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v11

    goto :goto_3

    :sswitch_1
    const-string v10, "pref_camera2_jpegquality_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_2
    const-string v10, "pref_camera2_video_duration_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    goto :goto_3

    :sswitch_3
    const-string v10, "pref_camera2_video_quality_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x3

    goto :goto_3

    :sswitch_4
    const-string v10, "pref_camera2_video_time_lapse_frame_interval_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x4

    goto :goto_3

    :sswitch_5
    const-string v10, "pref_camera2_facedetection_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    goto :goto_3

    :sswitch_6
    const-string v10, "pref_camera2_id_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x6

    goto :goto_3

    :sswitch_7
    const-string v10, "pref_camera2_mono_only_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x7

    goto :goto_3

    :sswitch_8
    const-string v10, "pref_camera2_clearsight_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x8

    goto :goto_3

    :sswitch_9
    const-string v10, "pref_camera2_switch_camera_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x9

    goto :goto_3

    :sswitch_a
    const-string v10, "pref_camera2_mono_preview_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xa

    goto/16 :goto_3

    :sswitch_b
    const-string v10, "pref_camera2_video_flashmode_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xb

    goto/16 :goto_3

    :sswitch_c
    const-string v10, "pref_camera2_flashmode_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xc

    goto/16 :goto_3

    :sswitch_d
    const-string v10, "pref_camera2_zsl_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xd

    goto/16 :goto_3

    :sswitch_e
    const-string v10, "pref_camera2_auto_hdr_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xe

    goto/16 :goto_3

    :sswitch_f
    const-string v10, "pref_camera2_saveraw_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xf

    goto/16 :goto_3

    :sswitch_10
    const-string v10, "pref_camera2_hdr_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x10

    goto/16 :goto_3

    :sswitch_11
    const-string v10, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x11

    goto/16 :goto_3

    .line 4613
    :pswitch_0
    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 4614
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto/16 :goto_1

    .line 4617
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->estimateJpegFileSize()V

    goto/16 :goto_1

    .line 4620
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateMaxVideoDuration()V

    goto/16 :goto_1

    .line 4623
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoSize()V

    goto/16 :goto_1

    .line 4626
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateTimeLapseSetting()V

    goto/16 :goto_1

    .line 4629
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateFaceDetection()V

    goto/16 :goto_4

    .line 4636
    :pswitch_6
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->restartAll()V

    goto/16 :goto_0

    .line 4639
    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoFlash()V

    goto/16 :goto_0

    .line 4646
    :pswitch_8
    if-nez v0, :cond_0

    invoke-virtual {p0, v11}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    goto/16 :goto_0

    .line 4649
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->restartAll()V

    goto/16 :goto_0

    .line 4656
    :pswitch_a
    invoke-direct {p0, v11, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 4657
    goto/16 :goto_5

    .line 4659
    :pswitch_b
    sget v10, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 4660
    goto/16 :goto_5

    .line 4662
    :pswitch_c
    invoke-direct {p0, v11, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 4663
    sget v10, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 4664
    goto/16 :goto_5

    .line 4666
    :pswitch_d
    sget v10, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    goto/16 :goto_5

    .line 4669
    :cond_4
    sget v10, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    if-eq v10, v12, :cond_5

    .line 4670
    sget v10, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_5

    .line 4672
    :cond_5
    sget v10, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v5, v10

    goto/16 :goto_5

    .line 4676
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "settingState":Lcom/android/camera/SettingsManager$SettingState;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "values":Lcom/android/camera/SettingsManager$Values;
    :cond_6
    if-eqz v4, :cond_7

    .line 4678
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4680
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    .line 4681
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4680
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4687
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 4689
    :try_start_1
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4691
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4692
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    .line 4693
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4692
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    .line 4703
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 4705
    :try_start_2
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v11, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4707
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v11, v11, v12

    .line 4708
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4707
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4715
    :cond_9
    :goto_8
    if-eqz v6, :cond_0

    .line 4717
    :try_start_3
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v11, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4719
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v11, v11, v12

    .line 4720
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4719
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 4722
    :catch_0
    move-exception v1

    .line 4723
    .local v1, "e":Ljava/lang/Exception;
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4683
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 4684
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 4695
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_4
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    .line 4696
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4695
    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    .line 4699
    :catch_2
    move-exception v1

    .line 4700
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 4710
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 4711
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 4722
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_9

    .line 4710
    :catch_5
    move-exception v1

    goto :goto_c

    .line 4699
    :catch_6
    move-exception v1

    goto :goto_b

    .line 4683
    :catch_7
    move-exception v1

    goto :goto_a

    .line 4611
    nop

    :sswitch_data_0
    .sparse-switch
        -0x61841e3b -> :sswitch_d
        -0x6115aa7b -> :sswitch_c
        -0x43732203 -> :sswitch_f
        -0x32f86d18 -> :sswitch_10
        -0x2be58ef7 -> :sswitch_1
        -0x2b8cde1a -> :sswitch_2
        -0x18beba57 -> :sswitch_6
        -0x94ad706 -> :sswitch_a
        0xa771b0 -> :sswitch_0
        0x4c87c89 -> :sswitch_4
        0xa42282d -> :sswitch_3
        0x3740a341 -> :sswitch_b
        0x47a92221 -> :sswitch_11
        0x6048953a -> :sswitch_5
        0x6bb840f4 -> :sswitch_e
        0x6ceeeb02 -> :sswitch_9
        0x6d4094fa -> :sswitch_7
        0x799ec37e -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 4654
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 3159
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 3953
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x3c00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 3954
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough space or storage not ready. remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3955
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3954
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    :goto_0
    return-void

    .line 3959
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v2, :cond_1

    .line 3960
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->captureVideoSnapshot(I)V

    goto :goto_0

    .line 3962
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_timer_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3964
    .local v1, "timer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3967
    .local v0, "seconds":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->isCountingDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3968
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->cancelCountDown()V

    .line 3970
    :cond_2
    if-lez v0, :cond_3

    .line 3971
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CaptureUI;->startCountDown(IZ)V

    goto :goto_0

    .line 3973
    :cond_3
    iget v2, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->isItBusy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3974
    const-string v2, "It\'s still busy processing previous scene mode request."

    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    goto :goto_0

    .line 3977
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->checkSelfieFlashAndTakePicture()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 3190
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v0, :cond_0

    .line 3191
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Longshot button up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 3193
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->stopLongShot()V

    .line 3195
    :cond_0
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 8

    .prologue
    .line 4002
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 4030
    :cond_0
    :goto_0
    return-void

    .line 4004
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isLongShotSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4006
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4007
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->cancelCountDown()V

    .line 4010
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 4012
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    .line 4013
    .local v2, "storageSpace":J
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v0

    .line 4015
    .local v0, "mLongShotCaptureCountLimit":I
    const-wide/32 v4, 0x3c00000

    iget v1, p0, Lcom/android/camera/CaptureModule;->mJpegFileSizeEstimation:I

    mul-int/2addr v1, v0

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 4017
    const-string v1, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4021
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isLongshotNeedCancel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4022
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    goto :goto_0

    .line 4026
    :cond_4
    const-string v1, "SnapCam_CaptureModule"

    const-string v4, "Start Longshot"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 4028
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePicture()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2890
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mAutoFocusRegionSupported:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mAutoExposureRegionSupported:Z

    if-eqz v2, :cond_0

    .line 2891
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isTouchToFocusAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2924
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    sget-boolean v2, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2895
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleTapUp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [I

    aput p2, v1, v5

    aput p3, v1, v6

    .line 2898
    .local v1, "newXY":[I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/CaptureUI;->isOverControlRegion([I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2899
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/CaptureUI;->isOverSurfaceView([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2900
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2, p2, p3}, Lcom/android/camera/CaptureUI;->setFocusPosition(II)V

    .line 2901
    aget p2, v1, v5

    .line 2902
    aget p3, v1, v6

    .line 2903
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->onFocusStarted()V

    .line 2904
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2905
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2907
    :pswitch_0
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 2908
    int-to-float v2, p2

    int-to-float v3, p3

    sget v4, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2911
    :pswitch_1
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2914
    :pswitch_2
    int-to-float v2, p2

    int-to-float v3, p3

    sget v4, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2917
    :pswitch_3
    int-to-float v2, p2

    int-to-float v3, p3

    sget v4, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 2921
    :cond_3
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 2922
    .local v0, "cameraId":I
    :goto_1
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto/16 :goto_0

    .line 2921
    .end local v0    # "cameraId":I
    :cond_4
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_1

    .line 2905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 2633
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3184
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e020a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 3185
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3186
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3089
    return-void
.end method

.method public onVideoButtonClick()V
    .locals 1

    .prologue
    .line 3937
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isRecorderReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3949
    :cond_0
    :goto_0
    return-void

    .line 3939
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3940
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_2

    .line 3941
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    goto :goto_0

    .line 3943
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->startRecordingVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3945
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 3946
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method public onZoomChanged(I)I
    .locals 1
    .param p1, "requestedZoom"    # I

    .prologue
    .line 2706
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomChanged(F)V
    .locals 4
    .param p1, "requestedZoom"    # F

    .prologue
    const/4 v2, 0x0

    .line 2711
    iput p1, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 2713
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2714
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2733
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureUI;->updateFaceViewCameraBound(Landroid/graphics/Rect;)V

    .line 2734
    return-void

    .line 2716
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2717
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2720
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2723
    :pswitch_2
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2726
    :pswitch_3
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2730
    :cond_0
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 2731
    .local v0, "cameraId":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2730
    .end local v0    # "cameraId":I
    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_1

    .line 2714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reinit()V
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->init()V

    .line 1314
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 0

    .prologue
    .line 3179
    return-void
.end method

.method public restartAll()V
    .locals 1

    .prologue
    .line 4755
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->reinit()V

    .line 4756
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onPauseBeforeSuper()V

    .line 4757
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onPauseAfterSuper()V

    .line 4758
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onResumeBeforeSuper()V

    .line 4759
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onResumeAfterSuper()V

    .line 4760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    .line 4761
    return-void
.end method

.method public restartSession(Z)V
    .locals 3
    .param p1, "isSurfaceChanged"    # Z

    .prologue
    .line 4764
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartSession isSurfaceChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isAllSessionClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4784
    :goto_0
    return-void

    .line 4767
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeProcessors()V

    .line 4768
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeSessions()V

    .line 4770
    if-eqz p1, :cond_1

    .line 4771
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 4772
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 4775
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeValues()V

    .line 4776
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewSize()V

    .line 4777
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->openProcessors()V

    .line 4778
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createSessions()V

    .line 4780
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4781
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->resetTrackingFocus()V

    .line 4783
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resetStateMachine()V

    goto :goto_0
.end method

.method public setAFModeToPreview(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "afMode"    # I

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1253
    :cond_0
    sget-boolean v1, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1254
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAFModeToPreview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1257
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1258
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1259
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1261
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1262
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1261
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1263
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setBokehBlurDegree(I)V
    .locals 5
    .param p1, "degree"    # I

    .prologue
    .line 4197
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4209
    :goto_0
    return-void

    .line 4201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4202
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4203
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4202
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4204
    :catch_0
    move-exception v0

    .line 4205
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not find vendor tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4206
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 4207
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Camera Access Exception in setBokehBlurDegree"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFlashModeToPreview(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "isFlashOn"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1269
    sget-boolean v1, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1270
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlashModeToPreview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1291
    :goto_0
    return-void

    .line 1275
    :cond_1
    if-eqz p2, :cond_2

    .line 1276
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1277
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1282
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1283
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1284
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1287
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1286
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1280
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1288
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setFocusDistanceToPreview(IF)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "fd"    # F

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1298
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1300
    :try_start_0
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1302
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1301
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1305
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1304
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1307
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setJpegImageData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 1378
    return-void
.end method

.method public setMute(ZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "isValue"    # Z

    .prologue
    .line 3220
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3221
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 3222
    if-eqz p2, :cond_0

    .line 3223
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mIsMute:Z

    .line 3225
    :cond_0
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3059
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3060
    return-void
.end method

.method public setRefocusLastTaken(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2442
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    .line 2443
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$17;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$17;-><init>(Lcom/android/camera/CaptureModule;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2448
    return-void
.end method

.method public showCapturedReview([BI)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/CaptureModule$8;-><init>(Lcom/android/camera/CaptureModule;[BI)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1387
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget v1, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 877
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->isFacingFront(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 878
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 876
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CaptureUI;->onStartFaceDetection(IZLandroid/graphics/Rect;)V

    .line 879
    return-void
.end method

.method public startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 5028
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5029
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 5030
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 5029
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5032
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x8e

    .line 5033
    invoke-virtual {v2, v1, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5037
    :goto_0
    return-void

    .line 5034
    :catch_0
    move-exception v0

    .line 5035
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 0

    .prologue
    .line 2881
    return-void
.end method

.method public switchInternalStorage()V
    .locals 4

    .prologue
    .line 5203
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    .line 5204
    .local v0, "mPreferences":Lcom/android/camera/ComboPreferences;
    if-nez v0, :cond_0

    .line 5205
    new-instance v0, Lcom/android/camera/ComboPreferences;

    .end local v0    # "mPreferences":Lcom/android/camera/ComboPreferences;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 5207
    .restart local v0    # "mPreferences":Lcom/android/camera/ComboPreferences;
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 5208
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5209
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5210
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_savepath_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5211
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 5212
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 5213
    return-void
.end method

.method public triggerFocusAtPoint(FFI)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "id"    # I

    .prologue
    .line 4512
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4513
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerFocusAtPoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getSurfaceViewSize()Landroid/graphics/Point;

    move-result-object v7

    .line 4516
    .local v7, "p":Landroid/graphics/Point;
    iget v3, v7, Landroid/graphics/Point;->x:I

    .line 4517
    .local v3, "width":I
    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 4518
    .local v4, "height":I
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v0, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    aput-object v0, v8, p3

    .line 4519
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 v5, 0x3fc00000    # 1.5f

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v0, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    aput-object v0, v8, p3

    .line 4520
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4521
    invoke-direct {p0, p3}, Lcom/android/camera/CaptureModule;->autoFocusTrigger(I)V

    .line 4522
    return-void
.end method

.method public unLinkBayerMono(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1574
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkBayerMono "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    if-nez p1, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unlockFocus(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 2013
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlockFocus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2018
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2019
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2020
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 2022
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2023
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2024
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 2025
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 2026
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CaptureModule$15;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$15;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2033
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 2034
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2035
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2036
    iget v2, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    .line 2037
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 2038
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 2039
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CaptureModule$16;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$16;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2050
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v1

    .line 2051
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Session is already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2050
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 3039
    iget v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3040
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    .line 3042
    :cond_0
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 3093
    const/4 v0, 0x0

    return v0
.end method

.method public updateThumbnailJpegData([B)V
    .locals 0
    .param p1, "jpegData"    # [B

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    .line 470
    return-void
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 3047
    return-void
.end method
