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
            "Landroid/hardware/camera2/CaptureRequest$Key<",
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
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static InstantAecAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
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
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
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
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final REQUEST_CROP:I = 0x3e8

.field public static final SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
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

.field private static final STATE_WAITING_AF_LOCKING:I = 0x7

.field private static final STATE_WAITING_AF_PRECAPTURE_LOCK:I = 0x8

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
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static blinkDetected:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final bokeh_enable:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static bsgcAvailable:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static buckets:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static fusionStatus:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static gazeAngle:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static gazeDegree:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static gazeDirection:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final hfrSizeList:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final histMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static histogramStats:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static isHdrScene:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static logicalMode:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static maxCount:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"

.field public static smileConfidence:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static smileDegree:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static statsdata:[I


# instance fields
.field BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
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
            "Ljava/util/List<",
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

.field private mVideoEncoder:I

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
    .locals 9

    .line 151
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    .line 152
    sput v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    .line 153
    sput v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 160
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCancelTouchFocusDelay()I

    move-result v0

    sput v0, Lcom/android/camera/CaptureModule;->CANCEL_TOUCH_FOCUS_DELAY:I

    .line 164
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    sput-object v1, Lcom/android/camera/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 219
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 220
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    .line 233
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.sensor_meta_data.is_mono_only"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 236
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.instant_aec.instant_aec_available_modes"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->InstantAecAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 238
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.instant_aec.instant_aec_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->INSTANT_AEC_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 240
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.saturation.use_saturation"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 242
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.enable"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->histMode:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 244
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.buckets"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->buckets:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 246
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.max_count"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->maxCount:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 248
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.histogram.stats"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->histogramStats:Landroid/hardware/camera2/CaptureResult$Key;

    .line 250
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.is_hdr_scene"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->isHdrScene:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 252
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.quadra_cfa.is_qcfa_sensor"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->IS_SUPPORT_QCFA_SENSOR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 254
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.quadra_cfa.qcfa_dimension"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->QCFA_SUPPORT_DIMENSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 256
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.bsgc_available"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bsgcAvailable:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 258
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.logical.mode"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->logicalMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 260
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.fusion.status"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->fusionStatus:Landroid/hardware/camera2/CaptureResult$Key;

    .line 262
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.blink_detected"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->blinkDetected:Landroid/hardware/camera2/CaptureResult$Key;

    .line 264
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.blink_degree"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->blinkDegree:Landroid/hardware/camera2/CaptureResult$Key;

    .line 266
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.smile_degree"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->smileDegree:Landroid/hardware/camera2/CaptureResult$Key;

    .line 268
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.smile_confidence"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->smileConfidence:Landroid/hardware/camera2/CaptureResult$Key;

    .line 270
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.gaze_angle"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->gazeAngle:Landroid/hardware/camera2/CaptureResult$Key;

    .line 272
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.gaze_direction"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->gazeDirection:Landroid/hardware/camera2/CaptureResult$Key;

    .line 275
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.stats.gaze_degree"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->gazeDegree:Landroid/hardware/camera2/CaptureResult$Key;

    .line 278
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.hfr.sizes"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->hfrSizeList:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 280
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.bokeh.enable"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bokeh_enable:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 282
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.bokeh.blurLevel"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 284
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "org.codeaurora.qcamera3.bokeh.status"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/CaptureModule;->bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;

    .line 422
    const/16 v0, 0x400

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/CaptureModule;->statsdata:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x4

    new-array v1, v0, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 223
    new-array v1, v0, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 224
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "org.codeaurora.qcamera3.dualcam_link_meta_data.enable"

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 227
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "org.codeaurora.qcamera3.dualcam_link_meta_data.is_main"

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 230
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "org.codeaurora.qcamera3.dualcam_link_meta_data.related_camera_id"

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 287
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    .line 288
    iput v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 289
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mLastResultAFState:I

    .line 290
    new-array v2, v0, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    .line 294
    iput v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    .line 299
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    .line 301
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    .line 302
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsLinked:Z

    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 305
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 306
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    .line 307
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    .line 308
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    .line 309
    new-array v3, v0, [Landroid/hardware/camera2/CameraDevice;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    .line 310
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    .line 315
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 320
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 324
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    .line 336
    iput v1, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    .line 343
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    .line 348
    new-array v3, v0, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    .line 363
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewFaces:[Landroid/hardware/camera2/params/Face;

    .line 364
    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mStickyFaces:[Landroid/hardware/camera2/params/Face;

    .line 365
    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 366
    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mStickyExFaces:[Lcom/android/camera/ExtendedFace;

    .line 376
    new-array v3, v0, [Landroid/media/ImageReader;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    .line 377
    new-array v3, v0, [Landroid/media/ImageReader;

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    .line 383
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    .line 384
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    .line 385
    new-instance v3, Lcom/android/camera/CaptureModule$MainHandler;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$MainHandler;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    .line 399
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsMute:Z

    .line 402
    iput v1, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 403
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    .line 409
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 412
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mRecordingTimeCountsDown:Z

    .line 415
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    .line 418
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    .line 488
    new-instance v1, Lcom/android/camera/CaptureModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$1;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 499
    new-instance v1, Lcom/android/camera/CaptureModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$2;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 540
    new-array v1, v0, [Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 546
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    .line 551
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 573
    new-instance v0, Lcom/android/camera/CaptureModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$3;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 711
    new-instance v0, Lcom/android/camera/CaptureModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$5;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePicture()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureResult;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->updateCaptureStateMachine(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isBsgcDetecionOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "x2"    # I

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->getBsgcInfo(Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "x2"    # [Lcom/android/camera/ExtendedFace;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->updateFaceView([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateGraghView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/camera2/CaptureResult;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->showBokehStatusMessage(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/CaptureModule;)[Landroid/media/ImageReader;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$SelfieThread;)Lcom/android/camera/CaptureModule$SelfieThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/CaptureModule$SelfieThread;

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CaptureModule;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CaptureModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createSessions()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->initializePreviewConfiguration(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateFaceDetection()V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mIsLinked:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/CaptureModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CaptureModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # [B

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/CaptureModule;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isMpoOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/CaptureModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-wide v0, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/android/camera/CaptureModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # J

    .line 141
    iput-wide p1, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$4800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/CaptureModule;Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/media/Image;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget v0, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/camera/CaptureModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # [B

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/CaptureModule;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/CaptureModule;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->removeImageReaderSurfaces(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/FrameProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mediaSaveNotifyThread:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->startMediaRecorder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;)Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mediaSaveNotifyThread:Lcom/android/camera/CaptureModule$MediaSaveNotifyThread;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$6202(Lcom/android/camera/CaptureModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # J

    .line 141
    iput-wide p1, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    return-wide p1
.end method

.method static synthetic access$6302(Lcom/android/camera/CaptureModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # J

    .line 141
    iput-wide p1, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOn()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "x2"    # I

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->setUpVideoCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/CaptureModule;)Lcom/android/camera/Camera2GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/CaptureModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 141
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/FocusStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusStateListener:Lcom/android/camera/FocusStateListener;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/camera/CaptureModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget v0, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/camera/CaptureModule;)Lcom/android/camera/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->openCamera(I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/CaptureModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/CaptureModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CaptureModule;

    .line 141
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    return-object v0
.end method

.method private addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;I)V"
        }
    .end annotation

    .line 4809
    .local p2, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p3, v0, :cond_1

    .line 4810
    if-eqz p2, :cond_0

    .line 4811
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4813
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4814
    return-void

    .line 4816
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getInputSurfaces()Ljava/util/List;

    move-result-object v0

    .line 4817
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 4818
    .local v2, "surface":Landroid/view/Surface;
    if-eqz p2, :cond_2

    .line 4819
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4821
    :cond_2
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4822
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 4823
    :cond_3
    return-void
.end method

.method private afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "multiple"    # F
    .param p6, "cropRegion"    # Landroid/graphics/Rect;

    .line 4899
    move-object/from16 v0, p6

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    mul-float v1, v1, p5

    float-to-int v1, v1

    .line 4900
    .local v1, "side":I
    new-instance v2, Landroid/graphics/RectF;

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float v3, p1, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    add-float/2addr v5, p1

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    add-float v6, p2, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4904
    .local v2, "meteringRegionF":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 4905
    .local v3, "matrix1":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move-object v6, p0

    iget v7, v6, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static {v3, v4, v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 4906
    invoke-virtual {v3, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4909
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 4910
    .local v4, "matrix2":Landroid/graphics/Matrix;
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v4, v7, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4911
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float v7, v10, v7

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v4, v7, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4912
    invoke-virtual {v4, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4914
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4915
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4917
    new-instance v7, Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v2, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v2, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v7, v10, v11, v12, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v7

    .line 4920
    .local v5, "meteringRegion":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v10, v11}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 4922
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v10, v11}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 4924
    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v10, v11}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 4926
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v10, v11}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 4929
    const/4 v7, 0x1

    new-array v10, v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4930
    .local v10, "meteringRectangle":[Landroid/hardware/camera2/params/MeteringRectangle;
    const/4 v11, 0x0

    new-instance v12, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v12, v5, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v12, v10, v11

    .line 4931
    return-object v10
.end method

.method private applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 4662
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4663
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4665
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4667
    :goto_0
    return-void
.end method

.method private applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 4654
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4655
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4657
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4659
    :goto_0
    return-void
.end method

.method private applyAntiBandingLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4481
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_anti_banding_level_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4482
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4483
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4484
    .local v1, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4486
    .end local v1    # "intValue":I
    :cond_0
    return-void
.end method

.method private applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4744
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4745
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 4746
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4747
    .local v1, "mode":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4748
    return-void
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2471
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2472
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2473
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2475
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2476
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2477
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2478
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2479
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2480
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyInstantAEC(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2481
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applySaturationLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2482
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyAntiBandingLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2483
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyHistogram(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2484
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->enableBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2485
    return-void
.end method

.method private applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4710
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4711
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 4712
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4713
    .local v1, "intValue":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4714
    return-void
.end method

.method private applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4792
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_facedetection_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4793
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4794
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 4795
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4794
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4797
    :cond_0
    return-void
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 4800
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4801
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4802
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    .line 4803
    .end local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 4804
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4806
    :goto_0
    return-void
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 7
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "value"    # Ljava/lang/String;

    .line 4758
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_redeyereduction_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4759
    .local v0, "redeye":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-nez v1, :cond_0

    .line 4760
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 4761
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4760
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4763
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_2

    const v3, 0x2dddaf

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v6

    goto :goto_0

    :cond_2
    const-string v2, "off"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v2, "on"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4784
    :pswitch_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4785
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 4774
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v1, :cond_5

    .line 4776
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4777
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 4779
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4780
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4782
    goto :goto_1

    .line 4765
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v1, :cond_6

    .line 4766
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4767
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 4769
    :cond_6
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4770
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4772
    nop

    .line 4789
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "value"    # Ljava/lang/String;

    .line 1103
    if-nez p2, :cond_0

    return-void

    .line 1104
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1105
    .local v0, "valueF":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    return-void

    .line 1106
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1107
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1108
    return-void
.end method

.method private applyHistogram(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4489
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_histogram_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4490
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4491
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4492
    const/4 v2, 0x1

    .line 4493
    .local v2, "enable":B
    sget-object v3, Lcom/android/camera/CaptureModule;->histMode:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4494
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    .line 4495
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V

    .line 4496
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateGraghView()V

    .line 4497
    return-void

    .line 4500
    .end local v2    # "enable":B
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    .line 4501
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V

    .line 4502
    return-void
.end method

.method private applyInstantAEC(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4465
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_instant_aec_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4466
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4468
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4469
    .local v1, "intValue":I
    sget-object v2, Lcom/android/camera/CaptureModule;->INSTANT_AEC_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4470
    return-void

    .line 4467
    .end local v1    # "intValue":I
    :cond_1
    :goto_0
    return-void
.end method

.method private applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4717
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_iso_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4718
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 4719
    :cond_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4720
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPrioritySelectPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 4721
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V

    .line 4722
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4723
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v2, p0, Lcom/android/camera/CaptureModule;->mIsoExposureTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4725
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 4726
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mIsoSensitivity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4729
    :cond_2
    sget-object v1, Lcom/android/camera/SettingsManager;->KEY_ISO_INDEX:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    .line 4730
    .local v3, "intValue":J
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPrioritySelectPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 4731
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/util/VendorTagUtil;->setIsoExpPriority(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V

    .line 4732
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4733
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/CaptureModule;->mIsoExposureTime:J

    .line 4735
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4736
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mIsoSensitivity:I

    .line 4738
    :cond_4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4739
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4741
    .end local v3    # "intValue":J
    :cond_5
    :goto_0
    return-void
.end method

.method private applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4647
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_jpegquality_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4648
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 4649
    :cond_0
    invoke-static {v0}, Lcom/android/camera/CaptureModule;->getQualityNumber(Ljava/lang/String;)I

    move-result v1

    .line 4650
    .local v1, "jpegQuality":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v3, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4651
    return-void
.end method

.method private applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3824
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_noise_reduction_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3825
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 3826
    :cond_0
    invoke-static {v0}, Lcom/android/camera/util/SettingTranslation;->getNoiseReduction(Ljava/lang/String;)I

    move-result v1

    .line 3827
    .local v1, "noiseReduction":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3828
    return-void
.end method

.method private applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cameraId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 4573
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4574
    return v1

    .line 4576
    :cond_0
    const/4 v0, 0x0

    .line 4577
    .local v0, "updatePreview":Z
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pref_camera2_facedetection_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "pref_camera2_exposure_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "pref_camera2_iso_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "pref_camera2_coloreffect_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v3, "pref_camera2_whitebalance_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_6
    const-string v1, "pref_camera2_focus_distance_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 4603
    :pswitch_0
    const/4 v0, 0x1

    .line 4604
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->getCurrentProMode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 4605
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p3}, Lcom/android/camera/CaptureModule;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    goto :goto_2

    .line 4608
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 4609
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4608
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 4599
    :pswitch_1
    const/4 v0, 0x1

    .line 4600
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4601
    goto :goto_2

    .line 4595
    :pswitch_2
    const/4 v0, 0x1

    .line 4596
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4597
    goto :goto_2

    .line 4591
    :pswitch_3
    const/4 v0, 0x1

    .line 4592
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4593
    goto :goto_2

    .line 4587
    :pswitch_4
    const/4 v0, 0x1

    .line 4588
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4589
    goto :goto_2

    .line 4583
    :pswitch_5
    const/4 v0, 0x1

    .line 4584
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4585
    goto :goto_2

    .line 4579
    :pswitch_6
    const/4 v0, 0x1

    .line 4580
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4581
    nop

    .line 4612
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x149eb976 -> :sswitch_6
        -0x1218225f -> :sswitch_5
        0x15da11a6 -> :sswitch_4
        0x1b5c38f7 -> :sswitch_3
        0x47a92221 -> :sswitch_2
        0x5c7c5515 -> :sswitch_1
        0x6048953a -> :sswitch_0
    .end sparse-switch

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

.method private applySaturationLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4473
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_saturation_level_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4474
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4475
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4476
    .local v1, "intValue":I
    sget-object v2, Lcom/android/camera/CaptureModule;->SATURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4478
    .end local v1    # "intValue":I
    :cond_0
    return-void
.end method

.method private applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4670
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4671
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_auto_hdr_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4672
    .local v1, "autoHdr":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 4673
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4674
    .local v2, "mode":I
    const/4 v3, 0x2

    if-eqz v1, :cond_2

    const-string v4, "enable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4675
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->isHdrScene(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4676
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4677
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4679
    :cond_1
    return-void

    .line 4681
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->getPostProcFilterId(I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 4685
    :cond_3
    const/16 v4, 0x6e

    if-eqz v2, :cond_4

    const/16 v6, 0x64

    if-eq v2, v6, :cond_4

    const/16 v6, 0x6d

    if-eq v2, v6, :cond_4

    if-eq v2, v4, :cond_4

    .line 4689
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4690
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4691
    :cond_4
    if-ne v2, v4, :cond_5

    .line 4692
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setSceneModeForBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4694
    :cond_5
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4696
    :goto_0
    return-void

    .line 4682
    :cond_6
    :goto_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4683
    return-void
.end method

.method private applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2440
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2442
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2443
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2444
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2445
    return-void
.end method

.method private applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2399
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2400
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2401
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2402
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2403
    return-void
.end method

.method private applySettingsForJpegInformation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 5
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2448
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2449
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 2451
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v0, v1

    .line 2453
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 2454
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2455
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2457
    :cond_0
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no location - getRecordLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getRecordLocation()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {p2, v2}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2460
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPictureThumbSize:Landroid/util/Size;

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2461
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2462
    return-void
.end method

.method private applySettingsForLockAndPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2416
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2417
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2418
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2419
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2419
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2421
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2422
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2423
    return-void
.end method

.method private applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2426
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2427
    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2392
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2393
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2394
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2395
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2396
    return-void
.end method

.method private applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2406
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2407
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2406
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2408
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2411
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-nez v0, :cond_0

    .line 2412
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2413
    :cond_0
    return-void
.end method

.method private applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2430
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2431
    return-void
.end method

.method private applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2434
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2435
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2434
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2436
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2437
    return-void
.end method

.method private applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3812
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_video_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3813
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 3814
    :cond_0
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3816
    .local v1, "flashOn":Z
    if-eqz v1, :cond_1

    .line 3817
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3819
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3821
    :goto_0
    return-void
.end method

.method private applyVideoSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 2465
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2466
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2467
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2468
    return-void
.end method

.method private applyVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3831
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_dis_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3832
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 3833
    :cond_0
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3834
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3837
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3840
    :goto_0
    return-void
.end method

.method private applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4751
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_whitebalance_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4752
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 4753
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4754
    .local v1, "mode":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4755
    return-void
.end method

.method private applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I

    .line 4461
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p2}, Lcom/android/camera/CaptureModule;->cropRegionForZoom(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4462
    return-void
.end method

.method private applyZoomAndUpdate(I)V
    .locals 5
    .param p1, "id"    # I

    .line 4616
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4617
    return-void

    .line 4619
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4621
    :try_start_0
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4622
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    .line 4623
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4622
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 4625
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    .line 4626
    .local v0, "session":Landroid/hardware/camera2/CameraCaptureSession;
    instance-of v1, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_2

    .line 4627
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 4628
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v1

    .line 4629
    .local v1, "list":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 4631
    .end local v1    # "list":Ljava/util/List;
    goto :goto_0

    .line 4632
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 4633
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_0

    .line 4635
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 4636
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4635
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4643
    .end local v0    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    :goto_0
    goto :goto_1

    .line 4641
    :catch_0
    move-exception v0

    .line 4642
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4644
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private autoFocusTrigger(I)V
    .locals 6
    .param p1, "id"    # I

    .line 1685
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1686
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocusTrigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    .line 1689
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1694
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1695
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1696
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1698
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 1699
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1700
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v3, 0x5

    aput v3, v2, p1

    .line 1701
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1702
    iget v2, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    .line 1703
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1704
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    sget v3, Lcom/android/camera/CaptureModule;->CANCEL_TOUCH_FOCUS_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1708
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1690
    :cond_2
    :goto_1
    const-string v0, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1691
    return-void
.end method

.method private canStartMonoPreview()Z
    .locals 2

    .line 942
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 943
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isMonoPreviewOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 942
    :goto_1
    return v0
.end method

.method private cancelTouchFocus()V
    .locals 3

    .line 2627
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2628
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    .line 2629
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    goto :goto_0

    .line 2630
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget v0, v0, v2

    if-ne v0, v1, :cond_2

    .line 2631
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    goto :goto_0

    .line 2634
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    aget v0, v0, v2

    if-ne v0, v1, :cond_2

    .line 2635
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->cancelTouchFocus(I)V

    .line 2638
    :cond_2
    :goto_0
    return-void
.end method

.method private cancelTouchFocus(I)V
    .locals 3
    .param p1, "id"    # I

    .line 4886
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 4887
    return-void

    .line 4889
    :cond_0
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4890
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTouchFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 4893
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 4894
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    .line 4895
    return-void
.end method

.method private captureStillPicture(I)V
    .locals 5
    .param p1, "id"    # I

    .line 1737
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureStillPicture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 1739
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    .line 1741
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1746
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    .line 1747
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 1749
    .local v2, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v3}, Lcom/android/camera/SettingsManager;->isZSLInHALEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1750
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1752
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1755
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->applySettingsForJpegInformation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1756
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    if-nez v3, :cond_2

    .line 1757
    invoke-direct {p0, v2, v0, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1759
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/util/VendorTagUtil;->setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 1760
    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1762
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1763
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForClearSight(I)V

    goto :goto_1

    .line 1764
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isFilterOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1765
    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForFilter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_1

    .line 1767
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1768
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v0, :cond_5

    .line 1769
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1771
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-nez v0, :cond_6

    goto :goto_2

    .line 1776
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    if-nez v0, :cond_7

    .line 1777
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1779
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v0, :cond_8

    .line 1780
    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForLongshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_1

    .line 1782
    :cond_8
    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForCommon(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1788
    .end local v2    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_1
    goto :goto_4

    .line 1774
    .restart local v2    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_9
    :goto_2
    return-void

    .line 1742
    .end local v2    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_a
    :goto_3
    const-string v0, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    return-void

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Capture still picture has failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1789
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_4
    return-void
.end method

.method private captureStillPictureForClearSight(I)V
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1793
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1795
    .local v0, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->isZSLInHALEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1796
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1798
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1801
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForJpegInformation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1802
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1803
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/util/VendorTagUtil;->setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 1804
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1805
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1806
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1807
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-nez v1, :cond_1

    goto :goto_2

    .line 1812
    :cond_1
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V

    .line 1814
    return-void

    .line 1810
    :cond_3
    :goto_2
    return-void
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

    .line 1895
    invoke-virtual {p0, p2}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1896
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isMpoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    .line 1898
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/camera/CaptureModule;->mCaptureStartTime:J

    .line 1899
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1898
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1899
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1901
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1905
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CaptureModule$11;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/CaptureModule$11;-><init>(Lcom/android/camera/CaptureModule;I)V

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    .line 1902
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->onStartCapturing()V

    .line 1903
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1929
    :goto_1
    return-void
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

    .line 1817
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1818
    invoke-virtual {p0, p2}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1819
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1825
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->onStartCapturing()V

    .line 1830
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isManualMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V

    goto :goto_0

    .line 1833
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    .line 1834
    .local v0, "captureList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1836
    .end local v0    # "captureList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :goto_0
    return-void

    .line 1822
    :cond_3
    :goto_1
    return-void
.end method

.method private captureStillPictureForHDRTest(I)V
    .locals 2
    .param p1, "id"    # I

    .line 926
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "scene":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SettingsManager;->isCamera2HDRSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "18"

    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    .line 930
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 932
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCaptureHDRTestEnable:Z

    .line 933
    return-void
.end method

.method private captureStillPictureForLongshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 4
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1839
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureStillPictureForLongshot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    .local v0, "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1842
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1844
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p2

    new-instance v2, Lcom/android/camera/CaptureModule$9;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/CaptureModule$9;-><init>(Lcom/android/camera/CaptureModule;I)V

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1886
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureModule$10;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$10;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1892
    return-void
.end method

.method private captureVideoSnapshot(I)V
    .locals 7
    .param p1, "id"    # I

    .line 1932
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureVideoSnapshot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1938
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    .line 1940
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1942
    .local v0, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {p1, v2}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1943
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotThumbSize:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1944
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1945
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyVideoSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1946
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1948
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1951
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceForSession(I)Landroid/view/Surface;

    move-result-object v1

    .line 1952
    .local v1, "surface":Landroid/view/Surface;
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1954
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->getInputSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 1956
    :cond_1
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1958
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    .local v2, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1961
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    new-instance v5, Lcom/android/camera/CaptureModule$12;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/CaptureModule$12;-><init>(Lcom/android/camera/CaptureModule;I)V

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1987
    .end local v0    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    goto :goto_2

    .line 1935
    :cond_2
    :goto_1
    const-string v0, "Camera is not ready yet to take a video snapshot."

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    return-void

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "captureVideoSnapshot failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1988
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    return-void
.end method

.method private checkAfAeStatesAndCapture(I)V
    .locals 5
    .param p1, "id"    # I

    .line 896
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v2, 0x6

    aput v2, v0, p1

    .line 904
    :try_start_0
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :cond_1
    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 911
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    sget v4, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget v0, v0, v4

    if-ne v0, v2, :cond_3

    .line 913
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v1, v0, v3

    .line 914
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aput v1, v0, v2

    .line 915
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 916
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    goto :goto_1

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v1, v0, p1

    .line 920
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 921
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->captureStillPictureForHDRTest(I)V

    .line 923
    :cond_3
    :goto_1
    return-void

    .line 897
    :cond_4
    :goto_2
    return-void
.end method

.method private checkAndPlayRecordSound(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "isStarted"    # Z

    .line 4828
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4829
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_shutter_sound_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4830
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_1

    .line 4831
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 4832
    :cond_0
    const/4 v2, 0x3

    .line 4831
    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 4835
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkSelfieFlashAndTakePicture()V
    .locals 2

    .line 3245
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isSelfieFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3246
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->startSelfieFlash()V

    .line 3247
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    if-nez v0, :cond_1

    .line 3248
    new-instance v0, Lcom/android/camera/CaptureModule$SelfieThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureModule$SelfieThread;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$1;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    .line 3249
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule$SelfieThread;->start()V

    goto :goto_0

    .line 3252
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePicture()V

    .line 3254
    :cond_1
    :goto_0
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .line 5481
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5482
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5483
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5484
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    .line 5488
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 7

    .line 2319
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeProcessors()V

    .line 2331
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 2332
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 2333
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2337
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing camera: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2339
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aput-object v2, v3, v0

    .line 2340
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aput-boolean v1, v3, v0

    .line 2341
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v2, v1, v0

    goto :goto_1

    .line 2334
    :cond_0
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Time out waiting to lock camera closing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Time out waiting to lock camera closing"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2344
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 2345
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 2346
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aput-object v2, v1, v0

    .line 2331
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2365
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2361
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2350
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsLinked:Z

    .line 2352
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    .line 2353
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2354
    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2357
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_5

    .line 2358
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2359
    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2366
    nop

    .line 2367
    return-void

    .line 2361
    :goto_2
    nop

    .line 2362
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2363
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2365
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method private closePreviewSession()V
    .locals 2

    .line 3994
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "closePreviewSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 3996
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 3997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3999
    :cond_0
    return-void
.end method

.method private closeProcessors()V
    .locals 1

    .line 2267
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->onClose()V

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v0, :cond_1

    .line 2272
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->onClose()V

    .line 2274
    :cond_1
    return-void
.end method

.method private closeSessions()V
    .locals 5

    .line 2286
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 2287
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2288
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-eqz v1, :cond_0

    .line 2290
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2294
    :catch_0
    move-exception v1

    .line 2295
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 2292
    :catch_1
    move-exception v1

    .line 2293
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 2296
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    nop

    .line 2298
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 2299
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v2, v1, v0

    .line 2302
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 2303
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 2304
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aput-object v2, v1, v0

    .line 2286
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2307
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .line 5426
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 5428
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5431
    goto :goto_0

    .line 5429
    :catch_0
    move-exception v0

    .line 5430
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5432
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5434
    :cond_0
    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .param p1, "dateTaken"    # J

    .line 4002
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4003
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4004
    const v3, 0x7f0e03c4

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4006
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createSession(I)V
    .locals 10
    .param p1, "id"    # I

    .line 1181
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1182
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1186
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    aput-object v2, v1, p1

    .line 1187
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1189
    new-instance v1, Lcom/android/camera/CaptureModule$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$6;-><init>(Lcom/android/camera/CaptureModule;I)V

    .line 1270
    .local v1, "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->waitForPreviewSurfaceReady()V

    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceForSession(I)Landroid/view/Surface;

    move-result-object v2

    .line 1273
    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 1274
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v3, v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->setOutputSurface(Landroid/view/Surface;)V

    .line 1277
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1278
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1279
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v3

    if-nez p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto/16 :goto_4

    .line 1282
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_b

    .line 1283
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1284
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v5, Lcom/android/camera/CaptureModule$7;

    invoke-direct {v5, p0}, Lcom/android/camera/CaptureModule$7;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1293
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->getInputSurfaces()Ljava/util/List;

    move-result-object v3

    .line 1294
    .local v3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 1295
    .local v6, "surs":Landroid/view/Surface;
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v7, v7, p1

    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1296
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v6    # "surs":Landroid/view/Surface;
    goto :goto_1

    .line 1298
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v5, :cond_6

    .line 1300
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_6
    iget v5, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v6, 0x23

    if-eq v5, v6, :cond_8

    iget v5, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v6, 0x22

    if-ne v5, v6, :cond_7

    goto :goto_2

    .line 1315
    :cond_7
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0, v1, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    goto :goto_3

    .line 1303
    .restart local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1304
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1305
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->getZSLReprocessImageReader()Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v5, :cond_9

    .line 1307
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1309
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

    .line 1310
    invoke-virtual {v8}, Landroid/media/ImageReader;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 1309
    invoke-virtual {v5, v6, v0, v1, v4}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_3

    .line 1312
    :cond_a
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0, v1, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 1317
    .end local v3    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_3
    goto :goto_4

    .line 1318
    :cond_b
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1319
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0, v1, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "captureSessionCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local v2    # "surface":Landroid/view/Surface;
    goto :goto_4

    .line 1327
    :catch_0
    move-exception v1

    .line 1328
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException occurred error ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_5

    .line 1325
    :catch_1
    move-exception v1

    .line 1326
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "createSession: mPaused status occur Time out waiting for surface "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_4

    .line 1324
    :catch_2
    move-exception v1

    .line 1329
    :goto_4
    nop

    .line 1330
    :goto_5
    return-void

    .line 1181
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_c
    :goto_6
    return-void
.end method

.method private createSessions()V
    .locals 2

    .line 1111
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1125
    :pswitch_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->createSession(I)V

    goto :goto_0

    .line 1122
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->createSession(I)V

    .line 1123
    goto :goto_0

    .line 1119
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->createSession(I)V

    .line 1120
    goto :goto_0

    .line 1115
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->createSession(I)V

    .line 1116
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->createSession(I)V

    .line 1117
    nop

    .line 1126
    :goto_0
    goto :goto_2

    .line 1129
    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 1130
    .local v0, "cameraId":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->createSession(I)V

    .line 1132
    .end local v0    # "cameraId":I
    :goto_2
    return-void

    .line 1111
    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createVideoSnapshotImageReader()V
    .locals 4

    .line 2176
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    .line 2180
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x2

    .line 2179
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 2181
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/android/camera/CaptureModule$14;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$14;-><init>(Lcom/android/camera/CaptureModule;)V

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2207
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 5462
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5464
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5465
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    :cond_0
    return-void
.end method

.method private enableBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4505
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v0, :cond_0

    .line 4506
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4508
    :try_start_0
    sget-object v0, Lcom/android/camera/CaptureModule;->bokeh_enable:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4509
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4510
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4511
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_camera2_bokeh_blur_key"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4512
    .local v1, "progress":I
    sget-object v2, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4515
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "progress":I
    goto :goto_0

    .line 4513
    :catch_0
    move-exception v0

    .line 4514
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "can not find vendor tag : org.codeaurora.qcamera3.bokeh"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method private estimateJpegFileSize()V
    .locals 9

    .line 4356
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_jpegquality_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4358
    .local v0, "quality":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 4359
    .local v1, "ratios":[I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4361
    .local v2, "qualities":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 4362
    .local v3, "ratio":I
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 4363
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4364
    aget v3, v1, v4

    .line 4365
    goto :goto_1

    .line 4362
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4368
    .end local v4    # "i":I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4371
    .local v4, "pictureSize":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/camera/CaptureModule;->parsePictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    .line 4372
    .local v5, "size":Landroid/util/Size;
    if-nez v3, :cond_2

    .line 4373
    const-string v6, "SnapCam_CaptureModule"

    const-string v7, "mJpegFileSizeEstimation 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4375
    :cond_2
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/2addr v6, v3

    iput v6, p0, Lcom/android/camera/CaptureModule;->mJpegFileSizeEstimation:I

    .line 4376
    const-string v6, "SnapCam_CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegFileSizeEstimation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/camera/CaptureModule;->mJpegFileSizeEstimation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    :goto_2
    return-void
.end method

.method private generateVideoFilename(I)Ljava/lang/String;
    .locals 11
    .param p1, "outputFileFormat"    # I

    .line 4018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4019
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/CaptureModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 4020
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4021
    .local v3, "filename":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 4023
    .local v4, "mime":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v5

    const/16 v6, 0x2f

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "path":Ljava/lang/String;
    goto :goto_0

    .line 4026
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4028
    .restart local v5    # "path":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 4029
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4032
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4033
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "mime_type"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_data"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "resolution"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    .line 4036
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4035
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 4038
    .local v6, "loc":Landroid/location/Location;
    if-eqz v6, :cond_1

    .line 4039
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 4040
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 4042
    :cond_1
    iput-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    .line 4043
    return-object v5
.end method

.method private getBsgcInfo(Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;
    .locals 13
    .param p1, "captureResult"    # Landroid/hardware/camera2/CaptureResult;
    .param p2, "size"    # I

    .line 3202
    new-array v0, p2, [Lcom/android/camera/ExtendedFace;

    .line 3203
    .local v0, "extendedFaces":[Lcom/android/camera/ExtendedFace;
    sget-object v1, Lcom/android/camera/CaptureModule;->blinkDetected:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3204
    .local v1, "blinkDetectedArray":[B
    sget-object v2, Lcom/android/camera/CaptureModule;->blinkDegree:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 3205
    .local v2, "blinkDegreesArray":[B
    sget-object v3, Lcom/android/camera/CaptureModule;->gazeDirection:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 3206
    .local v3, "gazeDirectionArray":[I
    sget-object v4, Lcom/android/camera/CaptureModule;->gazeAngle:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 3207
    .local v4, "gazeAngleArray":[B
    sget-object v5, Lcom/android/camera/CaptureModule;->smileDegree:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 3208
    .local v5, "smileDegreeArray":[B
    sget-object v6, Lcom/android/camera/CaptureModule;->smileConfidence:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 3209
    .local v6, "smileConfidenceArray":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p2, :cond_0

    .line 3210
    new-instance v8, Lcom/android/camera/ExtendedFace;

    invoke-direct {v8, v7}, Lcom/android/camera/ExtendedFace;-><init>(I)V

    .line 3211
    .local v8, "tmp":Lcom/android/camera/ExtendedFace;
    aget-byte v9, v1, v7

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setBlinkDetected(I)V

    .line 3212
    const/4 v9, 0x2

    mul-int v10, v9, v7

    aget-byte v10, v2, v10

    mul-int v11, v9, v7

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, v2, v11

    invoke-virtual {v8, v10, v11}, Lcom/android/camera/ExtendedFace;->setBlinkDegree(BB)V

    .line 3213
    const/4 v10, 0x3

    mul-int v11, v10, v7

    aget v11, v3, v11

    mul-int v12, v10, v7

    add-int/lit8 v12, v12, 0x1

    aget v12, v3, v12

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    aget v9, v3, v10

    invoke-virtual {v8, v11, v12, v9}, Lcom/android/camera/ExtendedFace;->setGazeDirection(III)V

    .line 3214
    aget-byte v9, v4, v7

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setGazeAngle(B)V

    .line 3215
    aget-byte v9, v5, v7

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setSmileDegree(B)V

    .line 3216
    aget-byte v9, v6, v7

    invoke-virtual {v8, v9}, Lcom/android/camera/ExtendedFace;->setSmileConfidence(I)V

    .line 3217
    aput-object v8, v0, v7

    .line 3209
    .end local v8    # "tmp":Lcom/android/camera/ExtendedFace;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3219
    .end local v7    # "i":I
    :cond_0
    return-object v0
.end method

.method private getFrameProcFilterId()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2643
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_makeup_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2644
    .local v1, "scene":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2645
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2648
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    :cond_1
    return-object v0
.end method

.method private getJpegData(Landroid/media/Image;)[B
    .locals 2
    .param p1, "image"    # Landroid/media/Image;

    .line 5402
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5403
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 5404
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5405
    return-object v1
.end method

.method private getMaxPictureSizeLessThan4k()Landroid/util/Size;
    .locals 12

    .line 5193
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(II)[Landroid/util/Size;

    move-result-object v0

    .line 5194
    .local v0, "sizes":[Landroid/util/Size;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 5195
    .local v1, "ratio":F
    const/4 v2, 0x0

    .line 5196
    .local v2, "optimalSize":Landroid/util/Size;
    array-length v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    move v2, v4

    .end local v2    # "optimalSize":Landroid/util/Size;
    .local v5, "optimalSize":Landroid/util/Size;
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v6, v0, v2

    .line 5197
    .local v6, "size":Landroid/util/Size;
    invoke-direct {p0, v6}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v6    # "size":Landroid/util/Size;
    goto :goto_1

    .line 5198
    .restart local v6    # "size":Landroid/util/Size;
    :cond_0
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 5199
    .local v7, "pictureRatio":F
    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "pictureRatio":F
    goto :goto_1

    .line 5200
    .restart local v6    # "size":Landroid/util/Size;
    .restart local v7    # "pictureRatio":F
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 5201
    :cond_2
    move-object v5, v6

    .line 5196
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "pictureRatio":F
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5207
    :cond_4
    if-nez v5, :cond_8

    .line 5208
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "No picture size match the aspect ratio"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5209
    array-length v2, v0

    :goto_2
    if-ge v4, v2, :cond_8

    aget-object v3, v0, v4

    .line 5210
    .local v3, "size":Landroid/util/Size;
    invoke-direct {p0, v3}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v6

    if-eqz v6, :cond_5

    .end local v3    # "size":Landroid/util/Size;
    goto :goto_3

    .line 5211
    .restart local v3    # "size":Landroid/util/Size;
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_7

    .line 5212
    :cond_6
    move-object v5, v3

    .line 5209
    .end local v3    # "size":Landroid/util/Size;
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5216
    :cond_8
    return-object v5
.end method

.method private getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 11
    .param p1, "pictureSize"    # Landroid/util/Size;
    .param p2, "prevSizes"    # [Landroid/util/Size;

    .line 5180
    array-length v0, p2

    new-array v0, v0, [Landroid/graphics/Point;

    .line 5182
    .local v0, "points":[Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 5183
    .local v1, "targetRatio":D
    const/4 v3, 0x0

    .line 5184
    .local v3, "index":I
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p2, v5

    .line 5185
    .local v6, "s":Landroid/util/Size;
    add-int/lit8 v7, v3, 0x1

    .local v7, "index":I
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v0, v3

    .line 5184
    .end local v3    # "index":I
    .end local v6    # "s":Landroid/util/Size;
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 5188
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v4, v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;[Landroid/graphics/Point;D)I

    move-result v4

    .line 5189
    .local v4, "optimalPickIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    aget-object v5, p2, v4

    :goto_1
    return-object v5
.end method

.method private getPostProcFilterId(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 2676
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 2677
    const/4 v0, 0x1

    return v0

    .line 2678
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2679
    const/4 v0, 0x4

    return v0

    .line 2680
    :cond_1
    const/16 v1, 0x69

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2681
    const/4 v0, 0x6

    return v0

    .line 2682
    :cond_2
    const/16 v1, 0x6a

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2683
    const/4 v0, 0x7

    return v0

    .line 2684
    :cond_3
    const/16 v1, 0x66

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2685
    const/4 v0, 0x3

    return v0

    .line 2686
    :cond_4
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;->isSupportedStatic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2687
    const/4 v0, 0x2

    return v0

    .line 2688
    :cond_5
    const/16 v1, 0x67

    if-ne p1, v1, :cond_6

    .line 2689
    return v0

    .line 2691
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static getQualityNumber(Ljava/lang/String;)I
    .locals 5
    .param p0, "jpegQuality"    # Ljava/lang/String;

    .line 1006
    const/16 v0, 0x55

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .local v1, "qualityPercentile":I
    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 1008
    return v1

    .line 1010
    :cond_0
    return v0

    .line 1011
    .end local v1    # "qualityPercentile":I
    :catch_0
    move-exception v1

    .line 1014
    const/4 v1, 0x0

    .line 1015
    .local v1, "value":I
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3df94319

    if-eq v3, v4, :cond_3

    const v4, -0x13ced04b

    if-eq v3, v4, :cond_2

    const v4, 0x2ff5ba

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "fine"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "superfine"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "normal"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1026
    return v0

    .line 1023
    :pswitch_0
    const/4 v0, 0x0

    .line 1024
    .end local v1    # "value":I
    .local v0, "value":I
    goto :goto_1

    .line 1020
    .end local v0    # "value":I
    .restart local v1    # "value":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1021
    .end local v1    # "value":I
    .restart local v0    # "value":I
    goto :goto_1

    .line 1017
    .end local v0    # "value":I
    .restart local v1    # "value":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1018
    .end local v1    # "value":I
    .restart local v0    # "value":I
    nop

    .line 1028
    :goto_1
    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_0

    .line 1139
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1141
    .restart local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-object v0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .param p1, "deltaMs"    # J

    .line 3845
    long-to-double v0, p1

    iget v2, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 3846
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
    .locals 4

    .line 5437
    const/4 v0, 0x0

    .line 5438
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 5439
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 5440
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 5439
    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 5441
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 5443
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5444
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5445
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 5444
    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 5449
    goto :goto_0

    .line 5446
    :catch_0
    move-exception v1

    .line 5448
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v2, "SnapCam_CaptureModule"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 5455
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v1

    .line 5456
    .local v1, "mirror":Z
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5458
    .end local v1    # "mirror":Z
    :cond_2
    return-object v0
.end method

.method private initModeByIntent()V
    .locals 4

    .line 1447
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1449
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    goto :goto_0

    .line 1450
    :cond_0
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1451
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    goto :goto_0

    .line 1452
    :cond_1
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1453
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    .line 1455
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mQuickCapture:Z

    .line 1456
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1457
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 1458
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    .line 1459
    const-string v2, "crop"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mCropValue:Ljava/lang/String;

    .line 1461
    :cond_3
    return-void
.end method

.method private initializeFirstTime()V
    .locals 5

    .line 1036
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getRecordLocation()Z

    move-result v0

    .line 1043
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1045
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->initializeFirstTime()V

    .line 1046
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1049
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_1

    .line 1050
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1051
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1052
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaveService(Lcom/android/camera/MediaSaveService;)V

    .line 1056
    :cond_1
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1057
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    .line 1058
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    .line 1059
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    .line 1060
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera2GraphView;

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    .line 1061
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1062
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    const/16 v3, 0x200

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1063
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    const/16 v4, 0x300

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1064
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    const/16 v3, 0x400

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 1065
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_2

    .line 1066
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1068
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_3

    .line 1069
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1071
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_4

    .line 1072
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1074
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    if-eqz v2, :cond_5

    .line 1075
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 1077
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    .line 1078
    return-void

    .line 1037
    .end local v0    # "recordLocation":Z
    .end local v1    # "s":Lcom/android/camera/MediaSaveService;
    :cond_6
    :goto_0
    return-void
.end method

.method private initializePreviewConfiguration(I)V
    .locals 3
    .param p1, "id"    # I

    .line 4434
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4436
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4437
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4438
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .line 1082
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getRecordLocation()Z

    move-result v0

    .line 1083
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1084
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1085
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_0

    .line 1086
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1087
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaveService(Lcom/android/camera/MediaSaveService;)V

    .line 1091
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1092
    return-void
.end method

.method private initializeValues()V
    .locals 0

    .line 2695
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePictureSize()V

    .line 2696
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoSize()V

    .line 2697
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoSnapshotSize()V

    .line 2698
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateTimeLapseSetting()V

    .line 2699
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->estimateJpegFileSize()V

    .line 2700
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateMaxVideoDuration()V

    .line 2701
    return-void
.end method

.method private is4kSize(Landroid/util/Size;)Z
    .locals 2
    .param p1, "size"    # Landroid/util/Size;

    .line 3493
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v1, 0x870

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0xf00

    if-lt v0, v1, :cond_0

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

.method private isBsgcDetecionOn()Z
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_bsgc_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 989
    :cond_0
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isClearSightOn()Z
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_clearsight_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isFlashOff(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 4424
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4425
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFlashOn(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 4429
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4430
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isInMode(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .line 2972
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2973
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 2981
    :pswitch_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2979
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 2977
    :pswitch_2
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 2975
    :pswitch_3
    if-eqz p1, :cond_4

    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    nop

    :cond_4
    :goto_3
    return v1

    .line 2988
    :goto_4
    return v2

    .line 2983
    :cond_5
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 2984
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    if-ne p1, v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1

    .line 2986
    :cond_7
    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    if-ne p1, v0, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isLongshotNeedCancel()Z
    .locals 22

    .line 4382
    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getSkipMemoryCheck()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4383
    return v2

    .line 4386
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v3

    const-wide/32 v5, 0x3c00000

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    .line 4387
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "current storage is full"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    return v3

    .line 4390
    :cond_1
    iget-wide v4, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 4391
    iget-object v1, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 4393
    .local v1, "am":Landroid/app/ActivityManager;
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4394
    .local v4, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4395
    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v5, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    .line 4398
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v4    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 4399
    .local v4, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 4400
    .local v6, "maxMemory":J
    sub-long v8, v6, v4

    .line 4402
    .local v8, "remainMemory":J
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4403
    .local v1, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 4404
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v10

    .line 4405
    .local v10, "info":[J
    aget-wide v11, v10, v3

    const/4 v13, 0x3

    aget-wide v14, v10, v13

    add-long/2addr v11, v14

    const-wide/16 v14, 0x400

    mul-long/2addr v11, v14

    .line 4407
    .local v11, "availMem":J
    iget-wide v13, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    cmp-long v13, v11, v13

    if-lez v13, :cond_5

    const-wide/32 v13, 0x2800000

    cmp-long v13, v8, v13

    if-gtz v13, :cond_3

    goto :goto_0

    .line 4416
    :cond_3
    iget-boolean v13, v0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v13, :cond_4

    .line 4417
    const-string v2, "SnapCam_CaptureModule"

    const-string v13, " cancel longshot:not supported when recording"

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    return v3

    .line 4420
    :cond_4
    return v2

    .line 4408
    :cond_5
    :goto_0
    const-string v13, "SnapCam_CaptureModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cancel longshot: free="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v18, v10, v3

    move-wide/from16 v20, v4

    const-wide/16 v16, 0x400

    mul-long v3, v18, v16

    .end local v4    # "totalMemory":J
    .local v20, "totalMemory":J
    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " cached="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-wide v3, v10, v3

    mul-long v3, v3, v16

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " threshold="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/camera/CaptureModule;->SECONDARY_SERVER_MEM:J

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    iget-object v3, v0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e01ff

    invoke-static {v3, v4, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 4412
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 4413
    const/4 v2, 0x1

    return v2
.end method

.method private isMonoPreviewOn()Z
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_mono_preview_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 949
    :cond_0
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 950
    :cond_1
    return v1
.end method

.method private isMpoOn()Z
    .locals 3

    .line 999
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_mpo_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isPanoSetting(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 5116
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5117
    .local v0, "mode":I
    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 5118
    const/4 v1, 0x1

    return v1

    .line 5121
    .end local v0    # "mode":I
    :cond_0
    goto :goto_0

    .line 5120
    :catch_0
    move-exception v0

    .line 5122
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRawCaptureOn()Z
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_saveraw_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 995
    :cond_0
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isRecorderReady()Z
    .locals 2

    .line 5500
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5503
    :cond_0
    return v1

    .line 5501
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSessionSupportedByEncoder(III)Z
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fps"    # I

    .line 3695
    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    .line 3697
    .local v0, "expectedMBsPerSec":I
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v1

    .line 3698
    .local v1, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 3699
    .local v3, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v5, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iget v6, p0, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    if-ne v5, v6, :cond_1

    .line 3700
    iget v2, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    iget v5, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    mul-int/2addr v2, v5

    iget v5, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    mul-int/2addr v2, v5

    .line 3702
    .local v2, "maxMBsPerSec":I
    if-le v0, v2, :cond_0

    .line 3703
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected codec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " does not support width("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") X height ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "@ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " fps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max capabilities: MaxFrameWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , MaxFrameHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , MaxFrameRate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    return v4

    .line 3713
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 3716
    .end local v2    # "maxMBsPerSec":I
    .end local v3    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_1
    goto/16 :goto_0

    .line 3717
    :cond_2
    return v4
.end method

.method private isTouchAfEnabledSceneMode()Z
    .locals 4

    .line 3192
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3193
    .local v0, "scene":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3194
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3195
    .local v2, "mode":I
    if-eqz v2, :cond_1

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 3197
    const/4 v1, 0x1

    return v1

    .line 3198
    :cond_1
    return v1
.end method

.method private isTouchToFocusAllowed()Z
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isTouchAfEnabledSceneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3188
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3187
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .line 5530
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5531
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keepScreenOn()V
    .locals 2

    .line 5546
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5547
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5548
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .line 5540
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5541
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 5542
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5543
    return-void
.end method

.method private lockExposure(I)V
    .locals 4
    .param p1, "id"    # I

    .line 2373
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2374
    return-void

    .line 2376
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockExposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2379
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 2380
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2381
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_0

    .line 2383
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    :goto_0
    goto :goto_1

    .line 2386
    :catch_0
    move-exception v0

    .line 2387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2389
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private lockFocus(I)V
    .locals 5
    .param p1, "id"    # I

    .line 1627
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1628
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1633
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockFocus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :try_start_0
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1640
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1639
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 1643
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1644
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1645
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1646
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1647
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_0

    .line 1649
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1650
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1649
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    :cond_3
    :goto_0
    goto :goto_1

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1658
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v1, v0, p1

    .line 1659
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v0, v0, p1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 1660
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1661
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v1, v0, p1

    .line 1662
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 1663
    return-void

    .line 1667
    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1668
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1669
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1671
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1672
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1673
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    .line 1674
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v1, v3, p1

    .line 1675
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1676
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHiston:Z

    if-eqz v1, :cond_5

    .line 1677
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->updateGraghViewVisibility(I)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1681
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_5
    goto :goto_2

    .line 1679
    :catch_1
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1682
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1629
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1630
    const-string v0, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method private openCamera(I)V
    .locals 5
    .param p1, "id"    # I

    .line 2546
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2547
    return-void

    .line 2549
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 2553
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    .line 2554
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2558
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 2555
    :cond_1
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Time out waiting to lock camera opening."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Time out waiting to lock camera opening"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    .end local v0    # "manager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v0

    .line 2562
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2559
    :catch_1
    move-exception v0

    .line 2560
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 2563
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 2564
    :goto_1
    return-void
.end method

.method private openProcessors()V
    .locals 18

    .line 2727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2728
    .local v1, "scene":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v2}, Lcom/android/camera/SettingsManager;->getQcfaPrefEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 2729
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getIsSupportedQcfa(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 2730
    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    .line 2730
    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getSupportedQcfaDimension(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 2732
    const/4 v2, 0x0

    .line 2733
    .local v2, "isFlashOn":Z
    const/4 v3, 0x0

    .line 2734
    .local v3, "isMakeupOn":Z
    const/4 v4, 0x0

    .line 2735
    .local v4, "isSelfieMirrorOn":Z
    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    if-eqz v5, :cond_5

    .line 2736
    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v6, "pref_camera2_selfiemirror_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2737
    .local v5, "selfieMirror":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2738
    const/4 v4, 0x1

    .line 2740
    :cond_1
    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_makeup_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2741
    .local v14, "makeup":Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v6, "0"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2742
    const/4 v3, 0x1

    .line 2744
    :cond_2
    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v7, "pref_camera2_flashmode_key"

    invoke-virtual {v6, v7}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2745
    .local v15, "flashMode":Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v6, "on"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2746
    const/4 v2, 0x1

    .line 2749
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->isRawCaptureOn()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    .line 2750
    if-eqz v1, :cond_4

    .line 2751
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2752
    .local v13, "mode":I
    const-string v6, "SnapCam_CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Chosen postproc filter id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Lcom/android/camera/CaptureModule;->getPostProcFilterId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {v0, v13}, Lcom/android/camera/CaptureModule;->getPostProcFilterId(I)I

    move-result v7

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v9

    iget-boolean v12, v0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    iget-boolean v11, v0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 2753
    move v8, v2

    move v10, v3

    move/from16 v16, v11

    move v11, v4

    move/from16 v17, v13

    move/from16 v13, v16

    .end local v13    # "mode":I
    .local v17, "mode":I
    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/imageprocessor/PostProcessor;->onOpen(IZZZZZZ)V

    .line 2756
    .end local v17    # "mode":I
    goto :goto_1

    .line 2757
    :cond_4
    iget-object v6, v0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v7, 0x0

    .line 2758
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v9

    iget-boolean v12, v0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    iget-boolean v13, v0, Lcom/android/camera/CaptureModule;->mIsSupportedQcfa:Z

    .line 2757
    move v8, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/imageprocessor/PostProcessor;->onOpen(IZZZZZZ)V

    .line 2762
    .end local v5    # "selfieMirror":Ljava/lang/String;
    .end local v14    # "makeup":Ljava/lang/String;
    .end local v15    # "flashMode":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v5, :cond_6

    .line 2763
    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V

    .line 2766
    :cond_6
    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2767
    const/16 v5, 0x22

    iput v5, v0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    goto :goto_3

    .line 2768
    :cond_7
    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isFilterOn()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->getFrameFilters()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    .line 2771
    :cond_8
    const/16 v5, 0x100

    iput v5, v0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    goto :goto_3

    .line 2769
    :cond_9
    :goto_2
    const/16 v5, 0x23

    iput v5, v0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    .line 2773
    :goto_3
    iget v5, v0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    invoke-direct {v0, v5}, Lcom/android/camera/CaptureModule;->setUpCameraOutputs(I)V

    .line 2775
    return-void
.end method

.method private parallelLockAFAndPreCapture(I)V
    .locals 6
    .param p1, "id"    # I

    .line 1569
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    .line 1570
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1575
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parallelLockAFAndPreCapture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v0, 0x0

    :try_start_0
    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    .line 1581
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1580
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 1584
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOn(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1585
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1586
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-direct {p0, v2, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1587
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1588
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_0

    .line 1590
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    .line 1591
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1590
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :cond_3
    :goto_0
    goto :goto_1

    .line 1595
    :catch_0
    move-exception v2

    .line 1596
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1599
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v1, v2, p1

    .line 1600
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v2, v2, p1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1601
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1602
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v2, 0x7

    aput v2, v1, p1

    .line 1603
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aput v0, v1, p1

    .line 1604
    return-void

    .line 1608
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/16 v1, 0x8

    aput v1, v0, p1

    .line 1609
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1610
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1611
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 1613
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForLockAndPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1614
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 1615
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    aput v3, v2, p1

    .line 1616
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1619
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_2

    .line 1617
    :catch_1
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1571
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1572
    const-string v0, "Camera is not ready yet to take a picture."

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 1573
    return-void
.end method

.method private parsePictureSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 2260
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2261
    .local v0, "indexX":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2262
    .local v1, "width":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2263
    .local v2, "height":I
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method private pauseVideoRecording()V
    .locals 6

    .line 3903
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 3905
    iget-wide v0, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    .line 3906
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 3907
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    .line 5522
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5523
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 5524
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 5525
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Audio focus release failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .line 5470
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5472
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cleanupEmptyFile()V

    .line 5473
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 5474
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 5475
    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 5477
    :cond_0
    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    .line 5478
    return-void
.end method

.method private removeImageReaderSurfaces(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 4011
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 4012
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 4010
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4015
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    .line 5511
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5514
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 5516
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 5517
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Audio focus request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    :cond_0
    return-void
.end method

.method private resetAudioMute()V
    .locals 2

    .line 2310
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isAudioMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->setMute(ZZ)V

    .line 2313
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .line 5535
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5536
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5537
    return-void
.end method

.method private resetStateMachine()V
    .locals 3

    .line 5173
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 5174
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v0, v2, v1

    .line 5173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5176
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 5177
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 4

    .line 3910
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "resumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 3912
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    .line 3913
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateRecordingTime()V

    .line 3914
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_RESUME_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 3915
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_0

    .line 3918
    :cond_0
    :try_start_0
    const-string v1, "android.media.MediaRecorder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "resume"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3919
    .local v1, "resumeRec":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3922
    .end local v1    # "resumeRec":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 3920
    :catch_0
    move-exception v0

    .line 3921
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "resume method not implemented"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private runPrecaptureSequence(I)V
    .locals 5
    .param p1, "id"    # I

    .line 1995
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runPrecaptureSequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1997
    return-void

    .line 2000
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2001
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2002
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 2003
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2004
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 2005
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    aput v3, v2, p1

    .line 2007
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v3, 0x2

    aput v3, v2, p1

    .line 2008
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2012
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveVideo()V
    .locals 15

    .line 4047
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4048
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4049
    .local v0, "origFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 4055
    :cond_0
    const-wide/16 v2, 0x0

    .line 4056
    .local v2, "duration":J
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4059
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4060
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 4064
    goto :goto_0

    .line 4062
    :catch_0
    move-exception v5

    .line 4063
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "SnapCam_CaptureModule"

    const-string v7, "cannot access the file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4067
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v13, p0, Lcom/android/camera/CaptureModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v14, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v10, v2

    invoke-virtual/range {v8 .. v14}, Lcom/android/camera/MediaSaveService;->addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .end local v0    # "origFile":Ljava/io/File;
    .end local v2    # "duration":J
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2

    .line 4050
    .restart local v0    # "origFile":Ljava/io/File;
    :cond_1
    :goto_1
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "Invalid file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 4052
    return-void

    .line 4071
    .end local v0    # "origFile":Ljava/io/File;
    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 4072
    return-void
.end method

.method private setBokehModeVisible()V
    .locals 5

    .line 5564
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5565
    .local v0, "scene":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5566
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5567
    .local v3, "mode":I
    const/16 v4, 0x6e

    if-ne v3, v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    .line 5569
    .end local v3    # "mode":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v4, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v4, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/camera/CaptureUI;->initializeBokehMode(Z)V

    .line 5570
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-nez v1, :cond_4

    .line 5571
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5573
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v1, :cond_5

    .line 5574
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOn()V

    goto :goto_1

    .line 5576
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOnAwhile()V

    .line 5578
    :goto_1
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .line 4951
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    .line 4952
    iget v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    .line 4953
    return-void
.end method

.method private setProModeVisible()V
    .locals 4

    .line 5552
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5553
    .local v0, "scene":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5554
    .local v1, "promode":Z
    if-eqz v0, :cond_0

    .line 5555
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5556
    .local v2, "mode":I
    const/16 v3, 0x6d

    if-ne v2, v3, :cond_0

    .line 5557
    const/4 v1, 0x1

    .line 5560
    .end local v2    # "mode":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureUI;->initializeProMode(Z)V

    .line 5561
    return-void
.end method

.method private setRepeatingBurstForZSL(I)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5100
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 5101
    .local v1, "previewZslRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 5102
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 5103
    .local v2, "previewRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5106
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5108
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 5109
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 5112
    :cond_0
    return-void
.end method

.method private setSceneModeForBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4699
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_facedetection_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4700
    .local v0, "fdValue":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4701
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4701
    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4703
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4705
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4707
    :goto_0
    return-void
.end method

.method private setUpCameraOutputs(I)V
    .locals 12
    .param p1, "imageFormat"    # I

    .line 2025
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "setUpCameraOutputs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 2028
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 2029
    .local v1, "cameraIdList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_9

    .line 2030
    aget-object v3, v1, v2

    .line 2032
    .local v3, "cameraId":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 2033
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->isInMode(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2034
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 2036
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/android/camera/CaptureModule;->mBayerCameraRegion:Landroid/graphics/Rect;

    .line 2038
    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mMainCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2040
    :cond_1
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 2042
    .local v5, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-nez v5, :cond_2

    .line 2043
    goto/16 :goto_2

    .line 2045
    :cond_2
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aput-object v3, v6, v2

    .line 2047
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2048
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v6

    if-ne v2, v6, :cond_8

    .line 2051
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    invoke-virtual {v6, v5, v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V

    .line 2053
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V

    goto/16 :goto_2

    .line 2056
    :cond_3
    const/16 v6, 0x23

    const/16 v7, 0x25

    if-eq p1, v6, :cond_4

    const/16 v6, 0x22

    if-ne p1, v6, :cond_7

    .line 2057
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v6

    if-ne v2, v6, :cond_7

    .line 2058
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v6}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2059
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    .line 2060
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v10}, Lcom/android/camera/imageprocessor/PostProcessor;->getMaxRequiredImageNum()I

    move-result v10

    .line 2059
    invoke-static {v8, v9, p1, v10}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v8

    aput-object v8, v6, v2

    goto :goto_1

    .line 2062
    :cond_5
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 2063
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v10}, Lcom/android/camera/imageprocessor/PostProcessor;->getMaxRequiredImageNum()I

    move-result v10

    .line 2062
    invoke-static {v8, v9, p1, v10}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v8

    aput-object v8, v6, v2

    .line 2065
    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v6, :cond_6

    .line 2066
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    .line 2067
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v10}, Lcom/android/camera/imageprocessor/PostProcessor;->getMaxRequiredImageNum()I

    move-result v10

    .line 2066
    invoke-static {v8, v9, v7, v10}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v7

    aput-object v7, v6, v2

    .line 2068
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/camera/imageprocessor/PostProcessor;->setRawImageReader(Landroid/media/ImageReader;)V

    .line 2070
    :cond_6
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->getImageHandler()Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2071
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/camera/imageprocessor/PostProcessor;->onImageReaderReady(Landroid/media/ImageReader;Landroid/util/Size;Landroid/util/Size;)V

    goto :goto_2

    .line 2072
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v6

    if-ne v2, v6, :cond_8

    .line 2073
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 2074
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v10

    .line 2073
    invoke-static {v8, v9, p1, v10}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v8

    aput-object v8, v6, v2

    .line 2076
    new-instance v6, Lcom/android/camera/CaptureModule$13;

    invoke-direct {v6, p0, v2}, Lcom/android/camera/CaptureModule$13;-><init>(Lcom/android/camera/CaptureModule;I)V

    .line 2157
    .local v6, "listener":Lcom/android/camera/CaptureModule$ImageAvailableListener;
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6, v9}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2159
    iget-boolean v8, p0, Lcom/android/camera/CaptureModule;->mSaveRaw:Z

    if-eqz v8, :cond_8

    .line 2160
    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    iget-object v9, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    .line 2161
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v11

    .line 2160
    invoke-static {v9, v10, v7, v11}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v7

    aput-object v7, v8, v2

    .line 2162
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mRawImageReader:[Landroid/media/ImageReader;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2029
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v5    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v6    # "listener":Lcom/android/camera/CaptureModule$ImageAvailableListener;
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2167
    .end local v2    # "i":I
    :cond_9
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2168
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->isAutoFocusRegionSupported(Ljava/util/List;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mAutoFocusRegionSupported:Z

    .line 2169
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->isAutoExposureRegionSupported(Ljava/util/List;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mAutoExposureRegionSupported:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    .end local v1    # "cameraIdList":[Ljava/lang/String;
    goto :goto_3

    .line 2170
    :catch_0
    move-exception v1

    .line 2171
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 2173
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_3
    return-void
.end method

.method private setUpMediaRecorder(I)V
    .locals 23
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 4075
    move/from16 v2, p1

    const-string v0, "SnapCam_CaptureModule"

    const-string v3, "setUpMediaRecorder"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_video_quality_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4077
    .local v3, "videoSize":Ljava/lang/String;
    sget-object v0, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4078
    .local v0, "size":I
    iget-object v4, v1, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 4079
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 4080
    const-string v5, "android.intent.extra.videoQuality"

    .line 4081
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 4082
    .local v5, "extraVideoQuality":I
    if-lez v5, :cond_0

    .line 4083
    const/4 v0, 0x1

    goto :goto_0

    .line 4085
    :cond_0
    const/4 v0, 0x0

    .line 4088
    .end local v5    # "extraVideoQuality":I
    :cond_1
    :goto_0
    iget-boolean v5, v1, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_2

    .line 4089
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getTimeLapseQualityFor(I)I

    move-result v0

    .line 4092
    .end local v0    # "size":I
    .local v5, "size":I
    :cond_2
    move v5, v0

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 4094
    .local v7, "myExtras":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 4096
    :cond_3
    iget-boolean v0, v1, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    if-nez v0, :cond_4

    move v0, v8

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    move v9, v0

    .line 4098
    .local v9, "hfr":Z
    invoke-static {v2, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4099
    invoke-static {v2, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_2

    .line 4101
    :cond_5
    const-string v0, "-1"

    iget-object v10, v1, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v11, "pref_camera2_switch_camera_key"

    invoke-virtual {v10, v11}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4102
    invoke-static {v8}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 4110
    :goto_2
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 4111
    .local v10, "videoWidth":I
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 4112
    .local v11, "videoHeight":I
    iput-boolean v6, v1, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    .line 4114
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v12, "pref_camera2_audioencoder_key"

    .line 4115
    invoke-virtual {v0, v12}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/SettingTranslation;->getAudioEncoder(Ljava/lang/String;)I

    move-result v12

    .line 4117
    .local v12, "audioEncoder":I
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v1, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    iput v13, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 4118
    iget-boolean v0, v1, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    if-nez v0, :cond_6

    if-nez v9, :cond_6

    .line 4119
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 4120
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v12, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 4121
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ne v0, v8, :cond_6

    .line 4122
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iput v8, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 4125
    :cond_6
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 4127
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v14, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v14}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 4128
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->closeVideoFileDescriptor()V

    .line 4129
    iget v0, v1, Lcom/android/camera/CaptureModule;->mIntentMode:I

    if-ne v0, v13, :cond_8

    if-eqz v7, :cond_8

    .line 4130
    const-string v0, "output"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    .line 4131
    .local v13, "saveUri":Landroid/net/Uri;
    if-eqz v13, :cond_7

    .line 4133
    :try_start_0
    iput-object v13, v1, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 4134
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "rw"

    .line 4135
    invoke-virtual {v0, v13, v14}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 4136
    iput-object v13, v1, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4140
    goto :goto_3

    .line 4137
    :catch_0
    move-exception v0

    .line 4139
    .local v0, "ex":Ljava/io/FileNotFoundException;
    const-string v14, "SnapCam_CaptureModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v14, v1, Lcom/android/camera/CaptureModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 4143
    .end local v13    # "saveUri":Landroid/net/Uri;
    goto :goto_4

    .line 4144
    :cond_8
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {v1, v0}, Lcom/android/camera/CaptureModule;->generateVideoFilename(I)Ljava/lang/String;

    move-result-object v0

    .line 4145
    .local v0, "fileName":Ljava/lang/String;
    const-string v13, "SnapCam_CaptureModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "New video filename: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 4148
    .end local v0    # "fileName":Ljava/lang/String;
    :goto_4
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 4149
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 4150
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4151
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v14, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v13, v14}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_5

    .line 4153
    :cond_9
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v14, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v13, v14}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 4155
    :goto_5
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v13, v1, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 4156
    iget-boolean v0, v1, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    if-nez v0, :cond_a

    if-nez v9, :cond_a

    .line 4157
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 4158
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 4159
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 4160
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v12}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 4162
    :cond_a
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v13, v1, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v13}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 4164
    const-string v0, "SnapCam_CaptureModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile video bitrate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    const-string v0, "SnapCam_CaptureModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile video frame rate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    iget-boolean v0, v1, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_b

    .line 4167
    const-wide v13, 0x408f400000000000L    # 1000.0

    iget v0, v1, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v16, v9

    int-to-double v8, v0

    .end local v9    # "hfr":Z
    .local v16, "hfr":Z
    div-double/2addr v13, v8

    .line 4168
    .local v13, "fps":D
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v13, v14}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 4169
    .end local v13    # "fps":D
    goto/16 :goto_7

    .end local v16    # "hfr":Z
    .restart local v9    # "hfr":Z
    :cond_b
    move/from16 v16, v9

    .end local v9    # "hfr":Z
    .restart local v16    # "hfr":Z
    iget-boolean v0, v1, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v0, :cond_d

    .line 4170
    new-instance v0, Landroid/util/Range;

    iget v8, v1, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, v1, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    .line 4171
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4172
    .local v0, "fps":I
    iget-object v8, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-double v13, v0

    invoke-virtual {v8, v13, v14}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 4173
    iget-boolean v8, v1, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    if-eqz v8, :cond_c

    move v8, v0

    goto :goto_6

    :cond_c
    const/16 v8, 0x1e

    .line 4174
    .local v8, "targetRate":I
    :goto_6
    iget-object v9, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 4175
    const-string v9, "SnapCam_CaptureModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Capture rate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Target rate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    iget-object v9, v1, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v9, v13, v8}, Lcom/android/camera/SettingsManager;->getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v9

    .line 4177
    .local v9, "scaledBitrate":I
    const-string v13, "SnapCam_CaptureModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Scaled video bitrate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    iget-object v13, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 4181
    .end local v0    # "fps":I
    .end local v8    # "targetRate":I
    .end local v9    # "scaledBitrate":I
    :cond_d
    :goto_7
    const-wide/16 v8, 0x0

    .line 4182
    .local v8, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v7, :cond_e

    .line 4183
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 4186
    :cond_e
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v13

    .line 4187
    .local v13, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 4188
    .local v14, "videoEnc":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v15, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iget v6, v1, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    if-ne v15, v6, :cond_10

    .line 4189
    iget v0, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    if-gt v10, v0, :cond_f

    iget v0, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    if-lt v10, v0, :cond_f

    iget v0, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    if-gt v11, v0, :cond_f

    iget v0, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    if-ge v11, v0, :cond_11

    .line 4193
    :cond_f
    const-string v0, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Selected codec "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " does not support "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "x"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " resolution"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    const-string v0, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Codec capabilities: mMinFrameWidth = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , mMinFrameHeight = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , mMaxFrameWidth = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , mMaxFrameHeight = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    .line 4202
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00b5

    invoke-static {v0, v15, v6}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 4203
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 4204
    return-void

    .line 4208
    .end local v14    # "videoEnc":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_10
    nop

    .line 4187
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 4211
    :cond_11
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v14

    const-wide/32 v17, 0x3c00000

    sub-long v14, v14, v17

    .line 4212
    .local v14, "maxFileSize":J
    const-wide/16 v17, 0x0

    cmp-long v0, v8, v17

    if-lez v0, :cond_12

    cmp-long v0, v8, v14

    if-gez v0, :cond_12

    .line 4213
    move-wide v14, v8

    .line 4216
    :cond_12
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/32 v17, -0x6000000

    cmp-long v0, v14, v17

    if-lez v0, :cond_13

    .line 4217
    const-wide/32 v14, -0x6000000

    .line 4219
    :cond_13
    const-string v0, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "MediaRecorder setMaxFileSize: "

    .end local v3    # "videoSize":Ljava/lang/String;
    .local v19, "videoSize":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    :try_start_1
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v14, v15}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4227
    goto :goto_9

    .line 4222
    :catch_1
    move-exception v0

    .line 4229
    :goto_9
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 4230
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_14

    .line 4231
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "size":I
    .local v20, "intent":Landroid/content/Intent;
    .local v21, "size":I
    double-to-float v4, v4

    .line 4232
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v5, v5

    .line 4231
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaRecorder;->setLocation(FF)V

    goto :goto_a

    .line 4234
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v21    # "size":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "size":I
    :cond_14
    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "size":I
    .restart local v20    # "intent":Landroid/content/Intent;
    .restart local v21    # "size":I
    :goto_a
    iget v0, v1, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {v2, v0}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v0

    .line 4235
    .local v0, "rotation":I
    iget-object v4, v1, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v5, "pref_camera2_video_rotation_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4236
    .local v4, "videoRotation":Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 4237
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 4238
    rem-int/lit16 v0, v0, 0x168

    .line 4240
    .end local v0    # "rotation":I
    .local v5, "rotation":I
    :cond_15
    move v5, v0

    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4241
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_b

    .line 4243
    :cond_16
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 4246
    :goto_b
    :try_start_2
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4251
    nop

    .line 4253
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 4254
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 4255
    return-void

    .line 4247
    :catch_2
    move-exception v0

    .line 4248
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare failed for "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SnapCam_CaptureModule"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4249
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 4250
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "requestedSizeLimit":J
    .end local v10    # "videoWidth":I
    .end local v11    # "videoHeight":I
    .end local v12    # "audioEncoder":I
    .end local v13    # "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    .end local v14    # "maxFileSize":J
    .end local v16    # "hfr":Z
    .end local v19    # "videoSize":Ljava/lang/String;
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v21    # "size":I
    .local v3, "videoSize":Ljava/lang/String;
    .local v4, "intent":Landroid/content/Intent;
    .local v5, "size":I
    .local v9, "hfr":Z
    :cond_17
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v16, v9

    .end local v3    # "videoSize":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "size":I
    .end local v9    # "hfr":Z
    .restart local v16    # "hfr":Z
    .restart local v19    # "videoSize":Ljava/lang/String;
    .restart local v20    # "intent":Landroid/content/Intent;
    .restart local v21    # "size":I
    iget-object v0, v1, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e00b6

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 4105
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 4106
    return-void
.end method

.method private setUpVideoCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "cameraId"    # I

    .line 3788
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3789
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3791
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3792
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3793
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3794
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3795
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3796
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3797
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3798
    return-void
.end method

.method private showBokehStatusMessage(ILandroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 657
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mBokehEnabled:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 660
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 662
    .local v0, "status":Ljava/lang/Integer;
    :try_start_0
    sget-object v1, Lcom/android/camera/CaptureModule;->bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 663
    if-nez v0, :cond_1

    .line 664
    return-void

    .line 668
    :cond_1
    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find vendor tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/camera/CaptureModule;->bokeh_status:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 681
    :pswitch_0
    const-string v1, "Object not found"

    .line 682
    .local v1, "tip":Ljava/lang/String;
    goto :goto_1

    .line 678
    .end local v1    # "tip":Ljava/lang/String;
    :pswitch_1
    const-string v1, "Low light"

    .line 679
    .restart local v1    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 672
    .end local v1    # "tip":Ljava/lang/String;
    :pswitch_2
    const-string v1, "Too far"

    .line 673
    .restart local v1    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 675
    .end local v1    # "tip":Ljava/lang/String;
    :pswitch_3
    const-string v1, "Too near"

    .line 676
    .restart local v1    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 684
    .end local v1    # "tip":Ljava/lang/String;
    :pswitch_4
    const-string v1, "Depth effect success"

    .line 685
    .restart local v1    # "tip":Ljava/lang/String;
    goto :goto_1

    .line 687
    .end local v1    # "tip":Ljava/lang/String;
    :pswitch_5
    const-string v1, "NO depth effect"

    .line 688
    .restart local v1    # "tip":Ljava/lang/String;
    nop

    .line 690
    :goto_1
    nop

    .line 693
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move v2, v3

    .line 694
    .local v2, "mDepthSuccess":Z
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v4, Lcom/android/camera/CaptureModule$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/camera/CaptureModule$4;-><init>(Lcom/android/camera/CaptureModule;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 709
    return-void

    .line 658
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "tip":Ljava/lang/String;
    .end local v2    # "mDepthSuccess":Z
    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "tips"    # Ljava/lang/String;

    .line 5491
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 5492
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    .line 5493
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5495
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 5496
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5497
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 2491
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 2492
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2493
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraImageAvailable"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    .line 2494
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2495
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraCaptureCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    .line 2496
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2497
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MpoSaveHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    .line 2498
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2500
    new-instance v0, Lcom/android/camera/CaptureModule$MyCameraHandler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureModule$MyCameraHandler;-><init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 2501
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    .line 2502
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 2503
    new-instance v0, Lcom/android/camera/CaptureModule$MpoSaveHandler;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CaptureModule$MpoSaveHandler;-><init>(Lcom/android/camera/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    .line 2504
    return-void
.end method

.method private startMediaRecorder()Z
    .locals 5

    .line 3751
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mUnsupportedResolution:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3752
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Unsupported Resolution according to target"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3754
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3755
    return v2

    .line 3757
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 3758
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3760
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3761
    return v2

    .line 3763
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->requestAudioFocus()V

    .line 3765
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3774
    nop

    .line 3775
    return v1

    .line 3766
    :catch_0
    move-exception v0

    .line 3767
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "Could not start media recorder.\n Can\'t start video recording."

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3768
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3769
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 3770
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseAudioFocus()V

    .line 3771
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3772
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3773
    return v2
.end method

.method private startRecordingVideo(I)Z
    .locals 9
    .param p1, "cameraId"    # I

    .line 3519
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3520
    return v1

    .line 3522
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartRecordingVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3524
    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3525
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    .line 3527
    invoke-direct {p0, p1, v0}, Lcom/android/camera/CaptureModule;->checkAndPlayRecordSound(IZ)V

    .line 3528
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3529
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x3c00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3530
    const-string v0, "SnapCam_CaptureModule"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3532
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3533
    return v1

    .line 3535
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateHFRSetting()V

    .line 3536
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoEncoder()V

    .line 3537
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CaptureModule;->isSessionSupportedByEncoder(III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3539
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3540
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3541
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e00b1

    invoke-static {v0, v2, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 3542
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3543
    return v1

    .line 3547
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->setUpMediaRecorder(I)V

    .line 3548
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 3549
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->hideUIwhileRecording()V

    .line 3550
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3551
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v1, v2, p1

    .line 3552
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 3553
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closePreviewSession()V

    .line 3554
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->onClose()V

    .line 3555
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    if-eqz v2, :cond_3

    .line 3556
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->enableZSLQueue(Z)V

    .line 3558
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3559
    .local v2, "preview":Landroid/util/Size;
    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v3, :cond_4

    .line 3560
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    move-object v2, v3

    .line 3562
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 3563
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 3562
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CaptureUI;->setPreviewSize(II)Z

    move-result v3

    .line 3564
    .local v3, "changed":Z
    if-eqz v3, :cond_5

    .line 3565
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 3566
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 3568
    :cond_5
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4}, Lcom/android/camera/CaptureUI;->resetTrackingFocus()V

    .line 3570
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createVideoSnapshotImageReader()V

    .line 3571
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v4, v4, p1

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3572
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 3573
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    aput-object v5, v4, p1

    .line 3574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3576
    .local v4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {p0, p1}, Lcom/android/camera/CaptureModule;->getPreviewSurfaceForSession(I)Landroid/view/Surface;

    move-result-object v5

    .line 3577
    .local v5, "surface":Landroid/view/Surface;
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/imageprocessor/FrameProcessor;->onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V

    .line 3578
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v6}, Lcom/android/camera/imageprocessor/FrameProcessor;->isFrameFilterEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3579
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v7, Lcom/android/camera/CaptureModule$20;

    invoke-direct {v7, p0}, Lcom/android/camera/CaptureModule$20;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3585
    :cond_6
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v6, v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->setOutputSurface(Landroid/view/Surface;)V

    .line 3586
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3587
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 3588
    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v6, :cond_7

    .line 3589
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3591
    :cond_7
    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mHighSpeedFPSRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v8, 0x1e

    if-le v6, v8, :cond_8

    .line 3592
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v6, v6, p1

    new-instance v8, Lcom/android/camera/CaptureModule$21;

    invoke-direct {v8, p0, p1}, Lcom/android/camera/CaptureModule$21;-><init>(Lcom/android/camera/CaptureModule;I)V

    invoke-virtual {v6, v4, v8, v7}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 3642
    :cond_8
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3643
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v6, v6, p1

    new-instance v8, Lcom/android/camera/CaptureModule$22;

    invoke-direct {v8, p0, p1}, Lcom/android/camera/CaptureModule$22;-><init>(Lcom/android/camera/CaptureModule;I)V

    invoke-virtual {v6, v4, v8, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "preview":Landroid/util/Size;
    .end local v3    # "changed":Z
    .end local v4    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v5    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 3687
    :catch_0
    move-exception v2

    .line 3688
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 3685
    :catch_1
    move-exception v2

    .line 3686
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 3683
    :catch_2
    move-exception v2

    .line 3684
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3689
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 3690
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mStartRecPending:Z

    .line 3691
    return v0
.end method

.method private stopBackgroundThread()V
    .locals 2

    .line 2510
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2511
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2512
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2513
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2516
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2517
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    .line 2518
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    goto :goto_0

    .line 2519
    :catch_0
    move-exception v1

    .line 2520
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2523
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2524
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    .line 2525
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2528
    goto :goto_1

    .line 2526
    :catch_1
    move-exception v1

    .line 2527
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2530
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2531
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    .line 2532
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2535
    goto :goto_2

    .line 2533
    :catch_2
    move-exception v1

    .line 2534
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2537
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 2538
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    .line 2539
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2542
    goto :goto_3

    .line 2540
    :catch_3
    move-exception v0

    .line 2541
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2543
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    return-void
.end method

.method private stopRecordingVideo(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .line 3935
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    .line 3938
    const/4 v1, 0x0

    .line 3940
    .local v1, "shouldAddToMediaStoreNow":Z
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/camera/CaptureModule;->checkAndPlayRecordSound(IZ)V

    .line 3941
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3942
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v3}, Lcom/android/camera/imageprocessor/FrameProcessor;->onClose()V

    .line 3943
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closePreviewSession()V

    .line 3945
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3946
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3947
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 3948
    const/4 v1, 0x1

    .line 3949
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->getVideoButton()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e03de

    .line 3950
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3949
    invoke-static {v3, v4}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3954
    goto :goto_0

    .line 3951
    :catch_0
    move-exception v3

    .line 3952
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "SnapCam_CaptureModule"

    const-string v5, "MediaRecoder stop fail"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3953
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/camera/CaptureModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 3955
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3956
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->saveVideo()V

    .line 3958
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->keepScreenOnAwhile()V

    .line 3960
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 3961
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseAudioFocus()V

    .line 3963
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v2, v2}, Lcom/android/camera/CaptureUI;->showRecordingUI(ZZ)V

    .line 3964
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v0}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 3966
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    .line 3967
    iget v3, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 3968
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isQuickCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3969
    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->onRecordingDone(Z)V

    goto :goto_1

    .line 3971
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3972
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/CaptureUI;->showRecordVideoForReview(Landroid/graphics/Bitmap;)V

    .line 3975
    .end local v3    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v3, :cond_4

    .line 3976
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getFrameProcFilterId()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->onOpen(Ljava/util/ArrayList;Landroid/util/Size;)V

    .line 3978
    :cond_4
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    if-eqz v3, :cond_5

    .line 3979
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v3, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->enableZSLQueue(Z)V

    .line 3981
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/CaptureUI;->setPreviewSize(II)Z

    move-result v0

    .line 3982
    .local v0, "changed":Z
    if-eqz v0, :cond_6

    .line 3983
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 3984
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 3987
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createSessions()V

    .line 3988
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 3989
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->resetTrackingFocus()V

    .line 3990
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mStopRecPending:Z

    .line 3991
    return-void
.end method

.method private takePicture()V
    .locals 2

    .line 1493
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "takePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1495
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->isZSLInHALEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takeZSLPictureInHAL()V

    goto :goto_2

    .line 1498
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1499
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1514
    :pswitch_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->takeZSLPicture(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1515
    return-void

    .line 1517
    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    goto :goto_0

    .line 1511
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    .line 1512
    goto :goto_0

    .line 1505
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->takeZSLPicture(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1506
    return-void

    .line 1508
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->parallelLockAFAndPreCapture(I)V

    .line 1509
    goto :goto_0

    .line 1501
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    .line 1502
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    .line 1503
    nop

    .line 1518
    :goto_0
    goto :goto_2

    .line 1521
    :cond_3
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 1522
    .local v0, "cameraId":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->takeZSLPicture(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1523
    return-void

    .line 1525
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->lockFocus(I)V

    .line 1528
    .end local v0    # "cameraId":I
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private takeZSLPicture(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .line 1531
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->takeZSLPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 1533
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 1534
    return v1

    .line 1536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private takeZSLPictureInHAL()V
    .locals 3

    .line 1540
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "takeHALZSLPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v0, 0x0

    .line 1542
    .local v0, "cameraId":I
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1555
    :pswitch_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    goto :goto_0

    .line 1552
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    .line 1553
    goto :goto_0

    .line 1549
    :pswitch_2
    const/4 v0, 0x0

    .line 1550
    goto :goto_0

    .line 1545
    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 1546
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 1547
    return-void

    .line 1556
    :goto_0
    goto :goto_2

    .line 1559
    :cond_0
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    :goto_1
    move v0, v1

    .line 1561
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->captureStillPicture(I)V

    .line 1562
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCaptureStateMachine(ILandroid/hardware/camera2/CaptureResult;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 780
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 873
    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 874
    .local v0, "afState":Ljava/lang/Integer;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 875
    .local v1, "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_WAITING_AF_PRECAPTURE_LOCK id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " afState: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " aeState:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 879
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->lockExposure(I)V

    .line 882
    goto/16 :goto_3

    .line 886
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_3

    :cond_2
    if-eqz v1, :cond_11

    .line 887
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_11

    .line 888
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->lockExposure(I)V

    goto/16 :goto_3

    .line 869
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v1    # "aeState":Ljava/lang/Integer;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->parallelLockAFAndPreCapture(I)V

    .line 870
    goto/16 :goto_3

    .line 857
    :pswitch_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 858
    .restart local v0    # "afState":Ljava/lang/Integer;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 859
    .restart local v1    # "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_AF_AE_LOCKED id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    goto/16 :goto_3

    .line 863
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v1    # "aeState":Ljava/lang/Integer;
    :pswitch_4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 864
    .restart local v0    # "afState":Ljava/lang/Integer;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 865
    .restart local v1    # "aeState":Ljava/lang/Integer;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_WAITING_TOUCH_FOCUS id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " aeState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    goto/16 :goto_3

    .line 845
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v1    # "aeState":Ljava/lang/Integer;
    :pswitch_5
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 846
    .restart local v0    # "afState":Ljava/lang/Integer;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 847
    .restart local v1    # "aeState":Ljava/lang/Integer;
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE_WAITING_AE_LOCK id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " afState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " aeState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-eqz v0, :cond_11

    .line 849
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 850
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_11

    :cond_4
    if-nez v1, :cond_5

    .line 851
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_11

    .line 852
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->checkAfAeStatesAndCapture(I)V

    goto/16 :goto_3

    .line 823
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v1    # "aeState":Ljava/lang/Integer;
    :pswitch_6
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 824
    .restart local v0    # "afState":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 825
    .local v2, "aeState":Ljava/lang/Integer;
    const-string v6, "SnapCam_CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE_WAITING_PRECAPTURE id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " afState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " aeState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-eqz v2, :cond_7

    .line 827
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_7

    .line 828
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 829
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_6

    goto :goto_0

    .line 837
    :cond_6
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aget v3, v3, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_11

    .line 838
    const-string v3, "SnapCam_CaptureModule"

    const-string v4, "AE trigger request result received, but not converged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aput v1, v3, p1

    goto/16 :goto_3

    .line 830
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aget v1, v1, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPrecaptureRequestHashCode:[I

    aget v1, v1, p1

    if-nez v1, :cond_11

    .line 831
    :cond_8
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOn(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 832
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->checkAfAeStatesAndCapture(I)V

    goto/16 :goto_3

    .line 834
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->lockExposure(I)V

    goto/16 :goto_3

    .line 785
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v2    # "aeState":Ljava/lang/Integer;
    :pswitch_7
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 786
    .restart local v0    # "afState":Ljava/lang/Integer;
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 787
    .local v6, "aeState":Ljava/lang/Integer;
    const-string v7, "SnapCam_CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "STATE_WAITING_AF_LOCK id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " afState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " aeState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v3, v7, :cond_b

    .line 791
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_b

    .line 792
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v5, v3, :cond_b

    const/4 v3, 0x6

    .line 793
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v3, v3, p1

    .line 794
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 795
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    .line 815
    :cond_a
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v2, v2, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 816
    const-string v2, "SnapCam_CaptureModule"

    const-string v3, "AF lock request result received, but not focused"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aput v1, v2, p1

    goto :goto_3

    .line 796
    :cond_b
    :goto_1
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 799
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 800
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->checkAfAeStatesAndCapture(I)V

    goto :goto_3

    .line 802
    :cond_c
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v2, v1, p1

    goto :goto_3

    .line 804
    :cond_d
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v1, v1, p1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLockRequestHashCode:[I

    aget v1, v1, p1

    if-nez v1, :cond_11

    .line 807
    :cond_e
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_f

    .line 808
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->isFlashOff(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2

    .line 811
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->runPrecaptureSequence(I)V

    goto :goto_3

    .line 809
    :cond_10
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->lockExposure(I)V

    goto :goto_3

    .line 782
    .end local v0    # "afState":Ljava/lang/Integer;
    .end local v6    # "aeState":Ljava/lang/Integer;
    :pswitch_8
    nop

    .line 893
    :cond_11
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateFaceDetection()V
    .locals 3

    .line 5126
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_facedetection_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5127
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureModule$28;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CaptureModule$28;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5138
    return-void
.end method

.method private updateFaceView([Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;
    .param p2, "extendedFaces"    # [Lcom/android/camera/ExtendedFace;

    .line 3223
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mPreviewFaces:[Landroid/hardware/camera2/params/Face;

    .line 3224
    iput-object p2, p0, Lcom/android/camera/CaptureModule;->mExFaces:[Lcom/android/camera/ExtendedFace;

    .line 3225
    if-eqz p1, :cond_1

    .line 3226
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3227
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mStickyFaces:[Landroid/hardware/camera2/params/Face;

    .line 3228
    iput-object p2, p0, Lcom/android/camera/CaptureModule;->mStickyExFaces:[Lcom/android/camera/ExtendedFace;

    .line 3230
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/CaptureModule$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/CaptureModule$19;-><init>(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3237
    :cond_1
    return-void
.end method

.method private updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 4935
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4936
    .local v0, "resultAFState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    return-void

    .line 4939
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/CaptureModule;->mLastResultAFState:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mFocusStateListener:Lcom/android/camera/FocusStateListener;

    if-eqz v1, :cond_1

    .line 4940
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureModule$27;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CaptureModule$27;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4947
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mLastResultAFState:I

    .line 4948
    return-void
.end method

.method private updateGraghView()V
    .locals 2

    .line 4554
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$25;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$25;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4570
    return-void
.end method

.method private updateGraghViewVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 4535
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$24;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$24;-><init>(Lcom/android/camera/CaptureModule;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4551
    return-void
.end method

.method private updateHFRSetting()V
    .locals 4

    .line 3737
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_hfr_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3738
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 3739
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3740
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    .line 3741
    iput v2, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    goto :goto_0

    .line 3743
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    .line 3744
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3745
    .local v2, "mode":Ljava/lang/String;
    const-string v3, "hsr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mHighSpeedRecordingMode:Z

    .line 3746
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCaptureRate:I

    .line 3748
    .end local v2    # "mode":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private updateMaxVideoDuration()V
    .locals 3

    .line 3497
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_video_duration_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3498
    .local v0, "minutesStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3499
    .local v1, "minutes":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3501
    const/16 v2, 0x7530

    iput v2, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    goto :goto_0

    .line 3504
    :cond_0
    const v2, 0xea60

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    .line 3506
    :goto_0
    return-void
.end method

.method private updatePictureSize()V
    .locals 6

    .line 3434
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_picturesize_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3435
    .local v0, "pictureSize":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->parsePictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    .line 3436
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    const-class v3, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(ILjava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 3438
    .local v1, "prevSizes":[Landroid/util/Size;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mSupportedMaxPictureSize:Landroid/util/Size;

    .line 3439
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    const/16 v5, 0x25

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(II)[Landroid/util/Size;

    move-result-object v3

    .line 3441
    .local v3, "rawSize":[Landroid/util/Size;
    aget-object v2, v3, v2

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mSupportedRawPictureSize:Landroid/util/Size;

    .line 3442
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    .line 3443
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/SettingsManager;->getSupportedThumbnailSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 3444
    .local v2, "thumbSizes":[Landroid/util/Size;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureSize:Landroid/util/Size;

    invoke-direct {p0, v4, v2}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CaptureModule;->mPictureThumbSize:Landroid/util/Size;

    .line 3445
    return-void
.end method

.method private updatePreviewSize()V
    .locals 8

    .line 2704
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 2705
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2707
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_makeup_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2708
    .local v2, "makeup":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2709
    .local v3, "makeupOn":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2710
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 2711
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2714
    :cond_1
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v4

    .line 2715
    .local v4, "previewSize":Landroid/graphics/Point;
    if-eqz v4, :cond_2

    .line 2716
    iget v0, v4, Landroid/graphics/Point;->x:I

    .line 2717
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 2720
    :cond_2
    const-string v5, "SnapCam_CaptureModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreviewSize final preview size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    .line 2723
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CaptureUI;->setPreviewSize(II)Z

    .line 2724
    return-void
.end method

.method private updatePreviewSurfaceReadyState(Z)V
    .locals 2
    .param p1, "rdy"    # Z

    .line 1164
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    if-eq p1, v0, :cond_1

    .line 1165
    if-eqz p1, :cond_0

    .line 1166
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Preview Surface is ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    goto :goto_0

    .line 1171
    :cond_0
    :try_start_0
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Preview Surface is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    .line 1173
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1179
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 14

    .line 3850
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-nez v0, :cond_0

    .line 3851
    return-void

    .line 3853
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_1

    .line 3854
    return-void

    .line 3857
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3858
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/CaptureModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/camera/CaptureModule;->mRecordingTotalTime:J

    add-long/2addr v2, v4

    .line 3862
    .local v2, "delta":J
    iget v4, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    const v7, 0xea60

    sub-int/2addr v4, v7

    int-to-long v7, v4

    cmp-long v4, v2, v7

    if-ltz v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3865
    .local v4, "countdownRemainingTime":Z
    :goto_0
    move-wide v7, v2

    .line 3866
    .local v7, "deltaAdjusted":J
    if-eqz v4, :cond_3

    .line 3867
    const-wide/16 v9, 0x0

    iget v11, p0, Lcom/android/camera/CaptureModule;->mMaxVideoDurationInMs:I

    int-to-long v11, v11

    sub-long/2addr v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x3e7

    add-long v7, v9, v11

    .line 3872
    :cond_3
    iget-boolean v9, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    if-nez v9, :cond_4

    .line 3873
    invoke-static {v7, v8, v5}, Lcom/android/camera/util/CameraUtil;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    .line 3874
    .local v5, "text":Ljava/lang/String;
    const-wide/16 v9, 0x3e8

    .local v9, "targetNextUpdateDelay":J
    goto :goto_1

    .line 3879
    .end local v5    # "text":Ljava/lang/String;
    .end local v9    # "targetNextUpdateDelay":J
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/android/camera/CaptureModule;->getTimeLapseVideoLength(J)J

    move-result-wide v9

    invoke-static {v9, v10, v6}, Lcom/android/camera/util/CameraUtil;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    .line 3880
    .restart local v5    # "text":Ljava/lang/String;
    iget v6, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v9, v6

    .line 3883
    .restart local v9    # "targetNextUpdateDelay":J
    :goto_1
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v6, v5}, Lcom/android/camera/CaptureUI;->setRecordingTime(Ljava/lang/String;)V

    .line 3885
    iget-boolean v6, p0, Lcom/android/camera/CaptureModule;->mRecordingTimeCountsDown:Z

    if-eq v6, v4, :cond_6

    .line 3888
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mRecordingTimeCountsDown:Z

    .line 3890
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v4, :cond_5

    .line 3891
    const v11, 0x7f0a0012

    goto :goto_2

    .line 3892
    :cond_5
    const v11, 0x7f0a0011

    .line 3890
    :goto_2
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 3894
    .local v6, "color":I
    iget-object v11, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v11, v6}, Lcom/android/camera/CaptureUI;->setRecordingTimeTextColor(I)V

    .line 3897
    .end local v6    # "color":I
    :cond_6
    rem-long v11, v2, v9

    sub-long v11, v9, v11

    .line 3898
    .local v11, "actualNextUpdateDelay":J
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x5

    invoke-virtual {v6, v13, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3900
    return-void
.end method

.method private updateSaveStorageState()V
    .locals 2

    .line 5409
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_savepath_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 5410
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5409
    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 5411
    return-void
.end method

.method private updateTimeLapseSetting()V
    .locals 4

    .line 3721
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_video_time_lapse_frame_interval_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3723
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 3724
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3725
    .local v1, "time":I
    iput v1, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 3726
    iget v2, p0, Lcom/android/camera/CaptureModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    .line 3727
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v3, p0, Lcom/android/camera/CaptureModule;->mCaptureTimeLapse:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureUI;->showTimeLapseUI(Z)V

    .line 3728
    return-void
.end method

.method private updateVideoEncoder()V
    .locals 2

    .line 3731
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_videoencoder_key"

    .line 3732
    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/SettingTranslation;->getVideoEncoder(Ljava/lang/String;)I

    move-result v0

    .line 3733
    .local v0, "videoEncoder":I
    iput v0, p0, Lcom/android/camera/CaptureModule;->mVideoEncoder:I

    .line 3734
    return-void
.end method

.method private updateVideoFlash()V
    .locals 4

    .line 3801
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mHighSpeedCapture:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3802
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3804
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCurrentSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3808
    goto :goto_0

    .line 3806
    :catch_0
    move-exception v0

    .line 3807
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 3809
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 3801
    :cond_1
    :goto_1
    return-void
.end method

.method private updateVideoSize()V
    .locals 6

    .line 3468
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_video_quality_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3469
    .local v0, "videoSize":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 3470
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->parsePictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    .line 3471
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    const-class v3, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SettingsManager;->getSupportedOutputSize(ILjava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 3473
    .local v1, "prevSizes":[Landroid/util/Size;
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3475
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v2

    .line 3476
    .local v2, "previewSize":Landroid/graphics/Point;
    if-eqz v2, :cond_1

    .line 3477
    new-instance v3, Landroid/util/Size;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3479
    :cond_1
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreviewSize final preview size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mVideoPreviewSize:Landroid/util/Size;

    .line 3480
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3479
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    return-void
.end method

.method private updateVideoSnapshotSize()V
    .locals 2

    .line 3484
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    .line 3485
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSize:Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->is4kSize(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3486
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->getMaxPictureSizeLessThan4k()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    .line 3488
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getSupportedThumbnailSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 3489
    .local v0, "thumbSizes":[Landroid/util/Size;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotSize:Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mVideoSnapshotThumbSize:Landroid/util/Size;

    .line 3490
    return-void
.end method

.method private updateZoom()V
    .locals 3

    .line 3509
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_zoom_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3510
    .local v0, "zoomStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3511
    .local v1, "zoom":I
    if-eqz v1, :cond_0

    .line 3512
    int-to-float v2, v1

    iput v2, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    goto :goto_0

    .line 3514
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 3516
    :goto_0
    return-void
.end method

.method private waitForPreviewSurfaceReady()V
    .locals 4

    .line 1146
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReady:Z

    if-nez v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1149
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "mPaused status occur Time out waiting for surface."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Paused Time out waiting for surface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_0
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Time out waiting for surface."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Time out waiting for surface."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSurfaceReadyLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :cond_2
    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1161
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private warningToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 4304
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$23;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$23;-><init>(Lcom/android/camera/CaptureModule;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4311
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .line 3408
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 0

    .line 3111
    return-void
.end method

.method public cancelCapture()V
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1487
    return-void
.end method

.method public checkAndPlayShutterSound(I)V
    .locals 3
    .param p1, "id"    # I

    .line 4838
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4839
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_shutter_sound_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4840
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_0

    .line 4841
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 4844
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5581
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cropRegionForZoom(I)Landroid/graphics/Rect;
    .locals 10
    .param p1, "id"    # I

    .line 4445
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4446
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cropRegionForZoom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 4449
    .local v0, "activeRegion":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4451
    .local v1, "cropRegion":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 4452
    .local v2, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 4453
    .local v3, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 4454
    .local v4, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 4455
    .local v5, "yDelta":I
    sub-int v6, v2, v4

    sub-int v7, v3, v5

    add-int v8, v2, v4

    add-int v9, v3, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 4456
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aput-object v1, v6, p1

    .line 4457
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    return-object v6
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3286
    if-eqz p1, :cond_0

    const-string v0, "on"

    goto :goto_0

    .line 3287
    :cond_0
    const-string v0, "off"

    .line 3288
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_recordlocation_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3289
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3290
    return-void
.end method

.method public getCameraMode()I
    .locals 4

    .line 969
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_switch_camera_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "switchValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    const/4 v1, 0x3

    return v1

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 975
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_mono_only_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    if-eqz v1, :cond_3

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 977
    :cond_2
    const/4 v2, 0x2

    return v2

    .line 976
    :cond_3
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public getCameraRegion()Landroid/graphics/Rect;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBayerCameraRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .line 3120
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIntentMode()I
    .locals 1

    .line 1482
    iget v0, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .line 3388
    iget v0, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    return v0
.end method

.method public getFrameFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/imageprocessor/filter/ImageFilter;",
            ">;"
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-nez v0, :cond_0

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->getFrameFilters()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocationManager()Lcom/android/camera/LocationManager;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method public getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mMainCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getMainCameraId()I
    .locals 2

    .line 3162
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3163
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3172
    return v1

    .line 3170
    :pswitch_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    return v0

    .line 3168
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    return v0

    .line 3166
    :pswitch_2
    return v1

    .line 3174
    :cond_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 3175
    .local v0, "cameraId":I
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method public getPostProcessor()Lcom/android/camera/imageprocessor/PostProcessor;
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    return-object v0
.end method

.method public getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getPreviewFaces()[Landroid/hardware/camera2/params/Face;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewFaces:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method public getPreviewSurfaceForSession(I)Landroid/view/Surface;
    .locals 1
    .param p1, "id"    # I

    .line 4847
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4848
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 4849
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    .line 4851
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    .line 4854
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRecordLocation()Z
    .locals 2

    .line 1412
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "none"

    .line 1414
    :cond_0
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getStickyFaces()[Landroid/hardware/camera2/params/Face;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mStickyFaces:[Landroid/hardware/camera2/params/Face;

    return-object v0
.end method

.method public getThumbSize()Landroid/util/Size;
    .locals 1

    .line 3448
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPictureThumbSize:Landroid/util/Size;

    return-object v0
.end method

.method public getTrackingForcusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;
    .locals 1

    .line 5220
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getTrackingFocusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getZoomValue()F
    .locals 1

    .line 4441
    iget v0, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    return v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .line 1419
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1420
    iput-object p2, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    .line 1421
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 1422
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/SettingsManager;->registerListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 1423
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->init()V

    .line 1424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    .line 1425
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1427
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aput-boolean v0, v2, v1

    .line 1428
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v0, v2, v1

    .line 1426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1430
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1431
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v0, v3, v1

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1434
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/imageprocessor/PostProcessor;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 1435
    new-instance v0, Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/imageprocessor/FrameProcessor;-><init>(Landroid/app/Activity;Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    .line 1437
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 1438
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initModeByIntent()V

    .line 1439
    new-instance v0, Lcom/android/camera/CaptureUI;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/camera/CaptureUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    .line 1440
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->initializeControlByIntent()V

    .line 1442
    new-instance v0, Lcom/android/camera/FocusStateListener;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-direct {v0, v1}, Lcom/android/camera/FocusStateListener;-><init>(Lcom/android/camera/CaptureUI;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mFocusStateListener:Lcom/android/camera/FocusStateListener;

    .line 1443
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 1444
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .line 2872
    return-void
.end method

.method public isAllSessionClosed()Z
    .locals 2

    .line 2277
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2278
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2279
    const/4 v1, 0x0

    return v1

    .line 2277
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2282
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isAudioMute()Z
    .locals 1

    .line 3464
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsMute:Z

    return v0
.end method

.method public isBackCamera()Z
    .locals 6

    .line 954
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_switch_camera_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "switchValue":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 956
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_switch_camera_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getEntryValues(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 957
    .local v3, "value":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "front"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    return v1

    .line 960
    :cond_0
    return v2

    .line 962
    .end local v3    # "value":[Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v4, "pref_camera2_id_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 963
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_2

    return v2

    .line 964
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 965
    :cond_3
    return v1
.end method

.method public isCameraIdle()Z
    .locals 1

    .line 2998
    const/4 v0, 0x1

    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .line 2993
    const/4 v0, 0x0

    return v0
.end method

.method public isLongShotActive()Z
    .locals 1

    .line 1565
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    return v0
.end method

.method public isLongShotSettingEnabled()Z
    .locals 2

    .line 4314
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_longshot_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4315
    .local v0, "longshot":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4316
    const/4 v1, 0x1

    return v1

    .line 4318
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isQuickCapture()Z
    .locals 1

    .line 1464
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mQuickCapture:Z

    return v0
.end method

.method public isRecordingVideo()Z
    .locals 1

    .line 3452
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    return v0
.end method

.method public isRefocus()Z
    .locals 1

    .line 1408
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    return v0
.end method

.method public isSelfieFlash()Z
    .locals 3

    .line 3240
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_selfie_flash_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3241
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

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTakingPicture()Z
    .locals 3

    .line 3180
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3181
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3183
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public isTrackingFocusSettingOn()Z
    .locals 3

    .line 2655
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_scenemode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, "scene":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    .local v1, "mode":I
    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 2659
    const/4 v2, 0x1

    return v2

    .line 2662
    .end local v1    # "mode":I
    :cond_0
    goto :goto_0

    .line 2661
    :catch_0
    move-exception v1

    .line 2663
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public linkBayerMono(I)V
    .locals 4
    .param p1, "id"    # I

    .line 1711
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkBayerMono "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1714
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1715
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1716
    :cond_0
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_1

    .line 1717
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1718
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1719
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1721
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 2877
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 2881
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onButtonContinue()V
    .locals 0

    .line 3931
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resumeVideoRecording()V

    .line 3932
    return-void
.end method

.method public onButtonPause()V
    .locals 0

    .line 3927
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->pauseVideoRecording()V

    .line 3928
    return-void
.end method

.method public onCaptureCancelled()V
    .locals 0

    .line 3101
    return-void
.end method

.method public onCaptureDone()V
    .locals 8

    .line 3003
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3004
    return-void

    .line 3007
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 3009
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCropValue:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3014
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 3015
    move-object v1, v2

    .line 3017
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v1, v2

    .line 3018
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3019
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 3021
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3022
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3026
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 3023
    :catch_0
    move-exception v2

    .line 3026
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3027
    nop

    .line 3028
    goto/16 :goto_2

    .line 3029
    :cond_1
    invoke-static {v0}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v1

    .line 3030
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v2

    .line 3031
    .local v2, "orientation":I
    const v4, 0xc800

    invoke-static {v0, v4}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3032
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4, v2}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3033
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "inline-data"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "data"

    .line 3034
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 3033
    invoke-virtual {v5, v3, v6}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3035
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3036
    .end local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v2    # "orientation":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 3039
    :cond_2
    const/4 v1, 0x0

    .line 3040
    .local v1, "tempUri":Landroid/net/Uri;
    nop

    .line 3042
    .local v2, "tempStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "crop-temp"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 3043
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3044
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v6, "crop-temp"

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v2, v5

    .line 3045
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3046
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3047
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v5

    .line 3057
    .end local v4    # "path":Ljava/io/File;
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3058
    nop

    .line 3060
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3061
    .local v3, "newExtras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCropValue:Ljava/lang/String;

    const-string v5, "circle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3062
    const-string v4, "circleCrop"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    :cond_3
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 3065
    const-string v4, "output"

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 3067
    :cond_4
    const-string v4, "return-data"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3069
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3070
    const-string v4, "showWhenLocked"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3074
    :cond_5
    const-string v4, "com.android.camera.action.CROP"

    .line 3075
    .local v4, "CROP_ACTION":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3077
    .local v5, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3078
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3080
    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v5, v7}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3082
    .end local v1    # "tempUri":Landroid/net/Uri;
    .end local v2    # "tempStream":Ljava/io/FileOutputStream;
    .end local v3    # "newExtras":Landroid/os/Bundle;
    .end local v4    # "CROP_ACTION":Ljava/lang/String;
    .end local v5    # "cropIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 3057
    .restart local v1    # "tempUri":Landroid/net/Uri;
    .restart local v2    # "tempStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 3052
    :catch_1
    move-exception v4

    .line 3053
    .local v4, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5, v3}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3054
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3057
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3055
    return-void

    .line 3048
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 3049
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5, v3}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3050
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3057
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3051
    return-void

    .line 3057
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public onCaptureRetake()V
    .locals 0

    .line 3106
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .line 3319
    return-void
.end method

.method public onClearSightFailure([B)V
    .locals 2
    .param p1, "thumbnailBytes"    # [B

    .line 5330
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onClearSightFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 5332
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$30;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$30;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5340
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onReleaseShutterLock()V

    .line 5341
    return-void
.end method

.method public onClearSightSuccess([B)V
    .locals 2
    .param p1, "thumbnailBytes"    # [B

    .line 5316
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onClearSightSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5317
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onReleaseShutterLock()V

    .line 5318
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    .line 5319
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$29;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$29;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5326
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2851
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    .line 2853
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .line 3258
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->checkSelfieFlashAndTakePicture()V

    .line 3259
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIAfterCountDown()V

    .line 3260
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 2862
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    if-eqz v0, :cond_0

    .line 2863
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->onDestory()V

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/SettingsManager;->unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 2866
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->unregisterListener(Lcom/android/camera/SettingsManager$Listener;)V

    .line 2867
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 5375
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 5377
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 5378
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 5380
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 5382
    :cond_0
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .line 5369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->enableRecordingLocation(Z)V

    .line 5370
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 5387
    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    .line 5388
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_2

    .line 5389
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    goto :goto_0

    .line 5391
    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 5392
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_1

    .line 5393
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 5396
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e03c6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 5397
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5399
    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2886
    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x50

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2916
    return v2

    .line 2889
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2890
    return v2

    .line 2906
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2907
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    .line 2909
    :cond_0
    return v1

    .line 2911
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2912
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onVideoButtonClick()V

    .line 2914
    :cond_2
    return v1

    .line 2893
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    .line 2894
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2895
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureModule;->onShutterButtonFocus(Z)V

    .line 2897
    :cond_4
    return v1

    .line 2899
    :cond_5
    return v2

    .line 2901
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 2902
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    .line 2904
    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2921
    const/16 v0, 0x50

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2936
    return v2

    .line 2924
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2925
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2926
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onShutterButtonClick()V

    .line 2927
    return v1

    .line 2929
    :cond_0
    return v2

    .line 2931
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 2932
    invoke-virtual {p0, v2}, Lcom/android/camera/CaptureModule;->onShutterButtonFocus(Z)V

    .line 2934
    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .line 3398
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 3399
    invoke-virtual {p1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 3400
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3401
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaveService(Lcom/android/camera/MediaSaveService;)V

    .line 3404
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .line 3336
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3337
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 3338
    .local v0, "oldOrientation":I
    iget v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    .line 3339
    iget v1, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    if-eq v0, v1, :cond_4

    .line 3340
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->onOrientationChanged()V

    .line 3341
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CaptureUI;->setOrientation(IZ)V

    .line 3342
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_1

    .line 3343
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3345
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_2

    .line 3346
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3348
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_3

    .line 3349
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3351
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_4

    .line 3352
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    iget v2, p0, Lcom/android/camera/CaptureModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setRotation(F)V

    .line 3357
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    .line 3358
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    .line 3359
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    .line 3360
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera2GraphView;

    iput-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    .line 3361
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3362
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    const/16 v2, 0x200

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3363
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    const/16 v3, 0x300

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3364
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    const/16 v2, 0x400

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/Camera2GraphView;->setDataSection(II)V

    .line 3365
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v1, :cond_5

    .line 3366
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3367
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3368
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3370
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_6

    .line 3371
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3372
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3373
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGR:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3375
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_7

    .line 3376
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3377
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3378
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewGB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3380
    :cond_7
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    if-eqz v1, :cond_8

    .line 3381
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera2GraphView;->setAlpha(F)V

    .line 3382
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera2GraphView;->setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V

    .line 3383
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mGraphViewB:Lcom/android/camera/Camera2GraphView;

    invoke-virtual {v1}, Lcom/android/camera/Camera2GraphView;->PreviewChanged()V

    .line 3385
    :cond_8
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 2

    .line 2593
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2595
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2596
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->close()V

    .line 2598
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeCamera()V

    .line 2599
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resetAudioMute()V

    .line 2600
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showPreviewCover()V

    .line 2601
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 2602
    iput-boolean v1, p0, Lcom/android/camera/CaptureModule;->mFirstPreviewLoaded:Z

    .line 2603
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->stopBackgroundThread()V

    .line 2604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    .line 2605
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setProModeVisible()V

    .line 2606
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setBokehModeVisible()V

    .line 2607
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 2608
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeVideoFileDescriptor()V

    .line 2609
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .line 2573
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->cancelTouchFocus()V

    .line 2574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 2575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mToast:Landroid/widget/Toast;

    .line 2576
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->onPause()V

    .line 2577
    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v1, :cond_0

    .line 2578
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    .line 2580
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_1

    .line 2581
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1}, Landroid/media/MediaActionSound;->release()V

    .line 2582
    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    .line 2584
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    if-eqz v0, :cond_2

    .line 2585
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->selfieThread:Lcom/android/camera/CaptureModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule$SelfieThread;->interrupt()V

    .line 2587
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resetScreenOn()V

    .line 2588
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->stopSelfieFlash()V

    .line 2589
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .line 2568
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureUI;->onPreviewFocusChanged(Z)V

    .line 2569
    return-void
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .line 3270
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .line 3314
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .line 3308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->updatePreviewSurfaceReadyState(Z)V

    .line 3309
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 1

    .line 3299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->updatePreviewSurfaceReadyState(Z)V

    .line 3301
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3304
    :cond_0
    return-void

    .line 3302
    :cond_1
    :goto_0
    return-void
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .line 4860
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$26;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$26;-><init>(Lcom/android/camera/CaptureModule;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4866
    return-void
.end method

.method public onRecordingDone(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .line 3085
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3087
    .local v0, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3088
    const/4 v1, -0x1

    .line 3089
    .local v1, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3090
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 3092
    .end local v1    # "resultCode":I
    :cond_0
    const/4 v1, 0x0

    .line 3094
    .restart local v1    # "resultCode":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3095
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3096
    return-void
.end method

.method public onReleaseShutterLock()V
    .locals 2

    .line 5309
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "onReleaseShutterLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 5311
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 5312
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .line 2779
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->reinit()V

    .line 2781
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeValues()V

    .line 2782
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewSize()V

    .line 2783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mCameraIdList:Ljava/util/List;

    .line 2785
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 2786
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureModule;->mSound:Landroid/media/MediaActionSound;

    .line 2789
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateSaveStorageState()V

    .line 2790
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    .line 2791
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->startBackgroundThread()V

    .line 2792
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->openProcessors()V

    .line 2793
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2794
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2795
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2796
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2807
    :pswitch_0
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2808
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2803
    :pswitch_1
    sget v2, Lcom/android/camera/CaptureModule;->MONO_ID:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2804
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2805
    goto :goto_0

    .line 2799
    :pswitch_2
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2800
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2801
    nop

    .line 2809
    :goto_0
    goto :goto_2

    .line 2812
    :cond_1
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    sget v2, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 2813
    .local v2, "cameraId":I
    :goto_1
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2814
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2816
    .end local v2    # "cameraId":I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 2817
    iget-boolean v2, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_3

    .line 2818
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeFirstTime()V

    goto :goto_3

    .line 2820
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeSecondTime()V

    .line 2822
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->reInitUI()V

    .line 2823
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/CaptureModule$18;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$18;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2829
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 2830
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2, v3}, Lcom/android/camera/CaptureUI;->enableVideo(Z)V

    .line 2831
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setProModeVisible()V

    .line 2832
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setBokehModeVisible()V

    .line 2834
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2835
    .local v2, "scene":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_4

    .line 2836
    invoke-virtual {p0, v1}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    .line 2838
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->isPanoSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2839
    iget v1, p0, Lcom/android/camera/CaptureModule;->mIntentMode:I

    if-eqz v1, :cond_5

    .line 2840
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v3, "pref_camera2_scenemode_key"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2842
    const-string v1, "Pano Capture is not supported in this mode"

    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 2844
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->onModuleSelected(I)V

    .line 2847
    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResumeBeforeSuper()V
    .locals 4

    .line 2613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    .line 2614
    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2615
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCameraOpened:[Z

    aput-boolean v0, v2, v1

    .line 2616
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v0, v2, v1

    .line 2614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2618
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2619
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mState:[I

    aput v0, v3, v1

    .line 2618
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2621
    .end local v1    # "i":I
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 2622
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateZoom()V

    .line 2623
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->updatePreviewSurfaceReadyState(Z)V

    .line 2624
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 3265
    return-void
.end method

.method public onSettingsChanged(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .line 4957
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/SettingsManager$SettingState;>;"
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 4958
    :cond_0
    const/4 v0, 0x0

    .line 4959
    .local v0, "updatePreviewBayer":Z
    const/4 v1, 0x0

    .line 4960
    .local v1, "updatePreviewMono":Z
    const/4 v2, 0x0

    .line 4961
    .local v2, "updatePreviewFront":Z
    const/4 v3, 0x0

    .line 4962
    .local v3, "updatePreviewLogical":Z
    const/4 v4, 0x0

    .line 4963
    .local v4, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/SettingsManager$SettingState;

    .line 4964
    .local v6, "settingState":Lcom/android/camera/SettingsManager$SettingState;
    iget-object v8, v6, Lcom/android/camera/SettingsManager$SettingState;->key:Ljava/lang/String;

    .line 4965
    .local v8, "key":Ljava/lang/String;
    iget-object v9, v6, Lcom/android/camera/SettingsManager$SettingState;->values:Lcom/android/camera/SettingsManager$Values;

    .line 4967
    .local v9, "values":Lcom/android/camera/SettingsManager$Values;
    iget-object v10, v9, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 4968
    iget-object v10, v9, Lcom/android/camera/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    .local v10, "value":Ljava/lang/String;
    goto :goto_1

    .line 4970
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    iget-object v10, v9, Lcom/android/camera/SettingsManager$Values;->value:Ljava/lang/String;

    .line 4972
    .restart local v10    # "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, -0x1

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v11, "pref_camera2_clearsight_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x8

    goto/16 :goto_3

    :sswitch_1
    const-string v11, "pref_camera2_mono_only_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x7

    goto/16 :goto_3

    :sswitch_2
    const-string v11, "pref_camera2_switch_camera_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x9

    goto/16 :goto_3

    :sswitch_3
    const-string v11, "pref_camera2_auto_hdr_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0xe

    goto/16 :goto_3

    :sswitch_4
    const-string v11, "pref_camera2_facedetection_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x5

    goto/16 :goto_3

    :sswitch_5
    const-string v11, "pref_camera2_scenemode_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x11

    goto/16 :goto_3

    :sswitch_6
    const-string v11, "pref_camera2_video_flashmode_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0xb

    goto/16 :goto_3

    :sswitch_7
    const-string v11, "pref_camera2_video_quality_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x3

    goto/16 :goto_3

    :sswitch_8
    const-string v11, "pref_camera2_video_time_lapse_frame_interval_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x4

    goto/16 :goto_3

    :sswitch_9
    const-string v11, "pref_camera2_savepath_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v7

    goto :goto_3

    :sswitch_a
    const-string v11, "pref_camera2_mono_preview_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0xa

    goto :goto_3

    :sswitch_b
    const-string v11, "pref_camera2_id_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x6

    goto :goto_3

    :sswitch_c
    const-string v11, "pref_camera2_video_duration_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x2

    goto :goto_3

    :sswitch_d
    const-string v11, "pref_camera2_jpegquality_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :sswitch_e
    const-string v11, "pref_camera2_hdr_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x10

    goto :goto_3

    :sswitch_f
    const-string v11, "pref_camera2_saveraw_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0xf

    goto :goto_3

    :sswitch_10
    const-string v11, "pref_camera2_flashmode_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0xc

    goto :goto_3

    :sswitch_11
    const-string v11, "pref_camera2_zsl_key"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0xd

    goto :goto_3

    :cond_2
    :goto_2
    move v11, v12

    :goto_3
    packed-switch v11, :pswitch_data_0

    goto :goto_4

    .line 5010
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->restartAll()V

    .line 5011
    return-void

    .line 5007
    :pswitch_1
    if-nez v4, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    .line 5008
    :cond_3
    return-void

    .line 5000
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoFlash()V

    .line 5001
    return-void

    .line 4997
    :pswitch_3
    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->restartAll()V

    .line 4998
    :cond_4
    return-void

    .line 4990
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateFaceDetection()V

    .line 4991
    goto :goto_4

    .line 4987
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateTimeLapseSetting()V

    .line 4988
    goto/16 :goto_0

    .line 4984
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateVideoSize()V

    .line 4985
    goto/16 :goto_0

    .line 4981
    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updateMaxVideoDuration()V

    .line 4982
    goto/16 :goto_0

    .line 4978
    :pswitch_8
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->estimateJpegFileSize()V

    .line 4979
    goto/16 :goto_0

    .line 4974
    :pswitch_9
    const-string v7, "1"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 4975
    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 4976
    goto/16 :goto_0

    .line 5014
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 5015
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    goto :goto_5

    .line 5027
    :pswitch_a
    sget v7, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v1, v7

    goto :goto_5

    .line 5020
    :pswitch_b
    sget v7, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 5021
    goto :goto_5

    .line 5017
    :pswitch_c
    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 5018
    goto :goto_5

    .line 5023
    :pswitch_d
    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 5024
    sget v7, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 5025
    nop

    .line 5028
    :goto_5
    goto :goto_6

    .line 5030
    :cond_5
    sget v7, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    if-eq v7, v12, :cond_6

    .line 5031
    sget v7, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_6

    .line 5033
    :cond_6
    sget v7, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v7, v8, v10}, Lcom/android/camera/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 5035
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 5036
    .end local v6    # "settingState":Lcom/android/camera/SettingsManager$SettingState;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "values":Lcom/android/camera/SettingsManager$Values;
    .end local v10    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 5037
    :cond_7
    if-eqz v0, :cond_a

    .line 5039
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v5, v5, v7

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5041
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v5

    if-eqz v5, :cond_8

    .line 5042
    invoke-direct {p0, v7}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_7

    .line 5044
    :cond_8
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v5, v5, v7

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, v7

    .line 5045
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 5044
    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5050
    :cond_9
    :goto_7
    goto :goto_8

    .line 5048
    :catch_0
    move-exception v5

    .line 5049
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 5052
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_8
    if-eqz v1, :cond_d

    .line 5054
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5056
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5057
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v6, v6, v7

    .line 5058
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 5057
    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_9

    .line 5060
    :cond_b
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->MONO_ID:I

    aget-object v6, v6, v7

    .line 5061
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 5060
    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5066
    :cond_c
    :goto_9
    goto :goto_a

    .line 5064
    :catch_1
    move-exception v5

    .line 5065
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 5068
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_a
    if-eqz v2, :cond_10

    .line 5070
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 5072
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v5}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5073
    sget v5, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v5}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_b

    .line 5075
    :cond_e
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    aget-object v6, v6, v7

    .line 5076
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 5075
    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5081
    :cond_f
    :goto_b
    goto :goto_c

    .line 5079
    :catch_2
    move-exception v5

    .line 5080
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 5084
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_c
    if-eqz v3, :cond_12

    .line 5086
    :try_start_3
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 5088
    iget-object v5, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v6, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v7, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    aget-object v6, v6, v7

    .line 5089
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v8, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 5088
    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5093
    :cond_11
    goto :goto_d

    .line 5091
    :catch_3
    move-exception v5

    .line 5092
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 5095
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61841e3b -> :sswitch_11
        -0x6115aa7b -> :sswitch_10
        -0x43732203 -> :sswitch_f
        -0x32f86d18 -> :sswitch_e
        -0x2be58ef7 -> :sswitch_d
        -0x2b8cde1a -> :sswitch_c
        -0x18beba57 -> :sswitch_b
        -0x94ad706 -> :sswitch_a
        0xa771b0 -> :sswitch_9
        0x4c87c89 -> :sswitch_8
        0xa42282d -> :sswitch_7
        0x3740a341 -> :sswitch_6
        0x47a92221 -> :sswitch_5
        0x6048953a -> :sswitch_4
        0x6bb840f4 -> :sswitch_3
        0x6ceeeb02 -> :sswitch_2
        0x6d4094fa -> :sswitch_1
        0x799ec37e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .line 3394
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 4

    .line 4274
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 4275
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4276
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4275
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    return-void

    .line 4280
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_1

    .line 4281
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->captureVideoSnapshot(I)V

    goto :goto_0

    .line 4283
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_timer_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4285
    .local v0, "timer":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4288
    .local v1, "seconds":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->isCountingDown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4289
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->cancelCountDown()V

    .line 4291
    :cond_2
    if-lez v1, :cond_3

    .line 4292
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/CaptureUI;->startCountDown(IZ)V

    goto :goto_0

    .line 4294
    :cond_3
    iget v2, p0, Lcom/android/camera/CaptureModule;->mChosenImageFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->isItBusy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4295
    const-string v2, "It\'s still busy processing previous scene mode request."

    invoke-direct {p0, v2}, Lcom/android/camera/CaptureModule;->warningToast(Ljava/lang/String;)V

    .line 4296
    return-void

    .line 4298
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->checkSelfieFlashAndTakePicture()V

    .line 4301
    .end local v0    # "timer":Ljava/lang/String;
    .end local v1    # "seconds":I
    :goto_0
    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .line 3425
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    if-eqz v0, :cond_0

    .line 3426
    const-string v0, "SnapCam_CaptureModule"

    const-string v1, "Longshot button up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 3428
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->stopLongShot()V

    .line 3429
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v1, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->enableVideo(Z)V

    .line 3431
    :cond_0
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 7

    .line 4323
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4325
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isLongShotSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4327
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4328
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->cancelCountDown()V

    .line 4331
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 4333
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    .line 4334
    .local v0, "storageSpace":J
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v2

    .line 4336
    .local v2, "mLongShotCaptureCountLimit":I
    const-wide/32 v3, 0x3c00000

    iget v5, p0, Lcom/android/camera/CaptureModule;->mJpegFileSizeEstimation:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-gtz v3, :cond_2

    .line 4338
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    return-void

    .line 4342
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isLongshotNeedCancel()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 4343
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 4344
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/camera/CaptureUI;->enableVideo(Z)V

    .line 4345
    return-void

    .line 4348
    :cond_3
    const-string v3, "SnapCam_CaptureModule"

    const-string v5, "Start Longshot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    iput-boolean v4, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    .line 4350
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-boolean v5, p0, Lcom/android/camera/CaptureModule;->mLongshotActive:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/camera/CaptureUI;->enableVideo(Z)V

    .line 4351
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->takePicture()V

    .line 4353
    .end local v0    # "storageSpace":J
    .end local v2    # "mLongShotCaptureCountLimit":I
    :cond_4
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 3125
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mCamerasOpened:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mAutoFocusRegionSupported:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mAutoExposureRegionSupported:Z

    if-eqz v0, :cond_6

    .line 3126
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isTouchToFocusAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3129
    :cond_0
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3130
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    .line 3133
    .local v0, "newXY":[I
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v0}, Lcom/android/camera/CaptureUI;->isOverControlRegion([I)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 3134
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, v0}, Lcom/android/camera/CaptureUI;->isOverSurfaceView([I)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 3135
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/CaptureUI;->setFocusPosition(II)V

    .line 3136
    aget p2, v0, v1

    .line 3137
    aget p3, v0, v2

    .line 3138
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v2}, Lcom/android/camera/CaptureUI;->onFocusStarted()V

    .line 3139
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3140
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3152
    :pswitch_0
    int-to-float v1, p2

    int-to-float v2, p3

    sget v3, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_0

    .line 3149
    :pswitch_1
    int-to-float v1, p2

    int-to-float v2, p3

    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 3150
    goto :goto_0

    .line 3146
    :pswitch_2
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 3147
    goto :goto_0

    .line 3142
    :pswitch_3
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 3143
    int-to-float v1, p2

    int-to-float v2, p3

    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 3144
    nop

    .line 3153
    :goto_0
    goto :goto_2

    .line 3156
    :cond_4
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    sget v1, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_1

    :cond_5
    sget v1, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 3157
    .local v1, "cameraId":I
    :goto_1
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/CaptureModule;->triggerFocusAtPoint(FFI)V

    .line 3159
    .end local v1    # "cameraId":I
    :goto_2
    return-void

    .line 3127
    .end local v0    # "newXY":[I
    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 0

    .line 2858
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .line 3418
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v1, "pref_camera2_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3419
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 3420
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3421
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 3324
    return-void
.end method

.method public onVideoButtonClick()V
    .locals 1

    .line 4258
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->isRecorderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4260
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4261
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CaptureModule;->mIsRecordingVideo:Z

    if-eqz v0, :cond_2

    .line 4262
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->stopRecordingVideo(I)V

    goto :goto_0

    .line 4264
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->startRecordingVideo(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4266
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 4267
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 4270
    :cond_3
    :goto_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 1
    .param p1, "requestedZoom"    # I

    .line 2941
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomChanged(F)V
    .locals 3
    .param p1, "requestedZoom"    # F

    .line 2946
    iput p1, p0, Lcom/android/camera/CaptureModule;->mZoomValue:F

    .line 2948
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2949
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2961
    :pswitch_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_0

    .line 2958
    :pswitch_1
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2959
    goto :goto_0

    .line 2955
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2956
    goto :goto_0

    .line 2951
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2952
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2953
    nop

    .line 2962
    :goto_0
    goto :goto_2

    .line 2965
    :cond_0
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/camera/CaptureModule;->FRONT_ID:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/camera/CaptureModule;->SWITCH_ID:I

    .line 2966
    .local v0, "cameraId":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->applyZoomAndUpdate(I)V

    .line 2968
    .end local v0    # "cameraId":I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureUI;->updateFaceViewCameraBound(Landroid/graphics/Rect;)V

    .line 2969
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reinit()V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->init()V

    .line 1405
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 0

    .line 3414
    return-void
.end method

.method public restartAll()V
    .locals 1

    .line 5141
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->reinit()V

    .line 5142
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onPauseBeforeSuper()V

    .line 5143
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onPauseAfterSuper()V

    .line 5144
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onResumeBeforeSuper()V

    .line 5145
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->onResumeAfterSuper()V

    .line 5146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    .line 5147
    return-void
.end method

.method public restartSession(Z)V
    .locals 3
    .param p1, "isSurfaceChanged"    # Z

    .line 5150
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartSession isSurfaceChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isAllSessionClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5153
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeProcessors()V

    .line 5154
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->closeSessions()V

    .line 5156
    if-eqz p1, :cond_1

    .line 5157
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->hideSurfaceView()V

    .line 5158
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showSurfaceView()V

    .line 5161
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->initializeValues()V

    .line 5162
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->updatePreviewSize()V

    .line 5163
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->openProcessors()V

    .line 5164
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->createSessions()V

    .line 5166
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->isTrackingFocusSettingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5167
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->resetTrackingFocus()V

    .line 5169
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->resetStateMachine()V

    .line 5170
    return-void
.end method

.method public setAFModeToPreview(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "afMode"    # I

    .line 1333
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    return-void

    .line 1336
    :cond_0
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1337
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAFModeToPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1340
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1341
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1342
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_0

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    .line 1348
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1347
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    goto :goto_1

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1353
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setBokehBlurDegree(I)V
    .locals 4
    .param p1, "degree"    # I

    .line 4520
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4521
    return-void

    .line 4524
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4525
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mBokehRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4526
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 4525
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4529
    :catch_0
    move-exception v0

    .line 4530
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Camera Access Exception in setBokehBlurDegree"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_1

    .line 4527
    :catch_1
    move-exception v0

    .line 4528
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not find vendor tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/camera/CaptureModule;->bokeh_blur_level:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 4532
    :goto_1
    return-void
.end method

.method public setFlashModeToPreview(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "isFlashOn"    # Z

    .line 1356
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1357
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashModeToPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    return-void

    .line 1362
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 1363
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1364
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1366
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1367
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1369
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1370
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1371
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1373
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->isZSLEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1374
    invoke-direct {p0, v0}, Lcom/android/camera/CaptureModule;->setRepeatingBurstForZSL(I)V

    goto :goto_1

    .line 1376
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    .line 1377
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1376
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :goto_1
    goto :goto_2

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public setFocusDistanceToPreview(IF)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "fd"    # F

    .line 1385
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1391
    :try_start_0
    sget v0, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    .line 1393
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1392
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    .line 1396
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    .line 1395
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    :goto_0
    goto :goto_1

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1401
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setJpegImageData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 1468
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mJpegImageData:[B

    .line 1469
    return-void
.end method

.method public setMute(ZZ)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "isValue"    # Z

    .line 3456
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3457
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 3458
    if-eqz p2, :cond_0

    .line 3459
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mIsMute:Z

    .line 3461
    :cond_0
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 3294
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3295
    return-void
.end method

.method public setRefocusLastTaken(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 2667
    iput-boolean p1, p0, Lcom/android/camera/CaptureModule;->mIsRefocus:Z

    .line 2668
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$17;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CaptureModule$17;-><init>(Lcom/android/camera/CaptureModule;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2673
    return-void
.end method

.method public showCapturedReview([BI)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I

    .line 1472
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/CaptureModule$8;-><init>(Lcom/android/camera/CaptureModule;[BI)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1478
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .line 936
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    iget v1, p0, Lcom/android/camera/CaptureModule;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 937
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->isFacingFront(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    .line 938
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 936
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CaptureUI;->onStartFaceDetection(IZLandroid/graphics/Rect;)V

    .line 939
    return-void
.end method

.method public startMediaRecording()V
    .locals 2

    .line 3779
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->startMediaRecorder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3780
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->showUIafterRecording()V

    .line 3781
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->releaseMediaRecorder()V

    .line 3782
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mFrameProcessor:Lcom/android/camera/imageprocessor/FrameProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->setVideoOutputSurface(Landroid/view/Surface;)V

    .line 3783
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CaptureModule;->restartSession(Z)V

    .line 3785
    :cond_0
    return-void
.end method

.method public startPlayVideoActivity()V
    .locals 5

    .line 5414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5415
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 5416
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 5415
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5418
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v2, 0x8e

    .line 5419
    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5422
    goto :goto_0

    .line 5420
    :catch_0
    move-exception v1

    .line 5421
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5423
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 0

    .line 3116
    return-void
.end method

.method public switchInternalStorage()V
    .locals 4

    .line 5588
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    .line 5589
    .local v0, "mPreferences":Lcom/android/camera/ComboPreferences;
    if-nez v0, :cond_0

    .line 5590
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 5592
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 5593
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5594
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5595
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mSettingsManager:Lcom/android/camera/SettingsManager;

    const-string v2, "pref_camera2_savepath_key"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5596
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 5597
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 5598
    return-void
.end method

.method public triggerFocusAtPoint(FFI)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "id"    # I

    .line 4869
    sget-boolean v0, Lcom/android/camera/CaptureModule;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4870
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerFocusAtPoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v0, v0, p3

    if-nez v0, :cond_1

    .line 4873
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop region is null at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    return-void

    .line 4876
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getSurfaceViewSize()Landroid/graphics/Point;

    move-result-object v0

    .line 4877
    .local v0, "p":Landroid/graphics/Point;
    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 4878
    .local v8, "width":I
    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 4879
    .local v9, "height":I
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v7, v1, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v8

    move v5, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    aput-object v1, v10, p3

    .line 4880
    iget-object v10, p0, Lcom/android/camera/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 v6, 0x3fc00000    # 1.5f

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v7, v1, p3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    aput-object v1, v10, p3

    .line 4881
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4882
    invoke-direct {p0, p3}, Lcom/android/camera/CaptureModule;->autoFocusTrigger(I)V

    .line 4883
    return-void
.end method

.method public unLinkBayerMono(I)V
    .locals 3
    .param p1, "id"    # I

    .line 1724
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlinkBayerMono "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1727
    :cond_0
    sget v1, Lcom/android/camera/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1730
    :cond_1
    :goto_0
    return-void
.end method

.method public unlockFocus(I)V
    .locals 5
    .param p1, "id"    # I

    .line 2214
    const-string v0, "SnapCam_CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CaptureModule;->checkSessionAndBuilder(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2216
    return-void

    .line 2219
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mUI:Lcom/android/camera/CaptureUI;

    invoke-virtual {v0}, Lcom/android/camera/CaptureUI;->getCurrentProMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2220
    invoke-direct {p0, p1}, Lcom/android/camera/CaptureModule;->getRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2221
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2222
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/CaptureModule;->addPreviewSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;I)V

    .line 2223
    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2224
    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 2227
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mState:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2228
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2229
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CaptureModule$15;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$15;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2237
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    .line 2238
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2239
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/CaptureModule;->applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2240
    iget v0, p0, Lcom/android/camera/CaptureModule;->mControlAFMode:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    .line 2241
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mTakingPicture:[Z

    aput-boolean v1, v0, p1

    .line 2242
    invoke-virtual {p0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2243
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CaptureModule$16;

    invoke-direct {v1, p0}, Lcom/android/camera/CaptureModule$16;-><init>(Lcom/android/camera/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    :cond_3
    goto :goto_0

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "Session is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .line 3274
    iget v0, p0, Lcom/android/camera/CaptureModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/CaptureModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3275
    invoke-direct {p0}, Lcom/android/camera/CaptureModule;->setDisplayOrientation()V

    .line 3277
    :cond_0
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .line 3328
    const/4 v0, 0x0

    return v0
.end method

.method public updateThumbnailJpegData([B)V
    .locals 0
    .param p1, "jpegData"    # [B

    .line 483
    iput-object p1, p0, Lcom/android/camera/CaptureModule;->mLastJpegData:[B

    .line 484
    return-void
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .line 3281
    iget-object v0, p0, Lcom/android/camera/CaptureModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 3282
    return-void
.end method
