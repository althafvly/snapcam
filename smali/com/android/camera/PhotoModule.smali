.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/camera/CameraManager$CameraPreviewDataCallback;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/MediaSaveService$Listener;
.implements Lcom/android/camera/PhotoController;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/TsMakeupManager$MakeupLevelListener;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$LongshotPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$MetaDataCallback;,
        Lcom/android/camera/PhotoModule$StatsCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$LongshotShutterCallback;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;,
        Lcom/android/camera/PhotoModule$SelfieThread;,
        Lcom/android/camera/PhotoModule$CloseCameraThread;,
        Lcom/android/camera/PhotoModule$SavingThread;,
        Lcom/android/camera/PhotoModule$StartPreviewThread;,
        Lcom/android/camera/PhotoModule$OpenCameraThread;,
        Lcom/android/camera/PhotoModule$MultiPPCallback;,
        Lcom/android/camera/PhotoModule$AISenceDetectThread;
    }
.end annotation


# static fields
.field private static final ADD_NS_BUFFER:I = 0xf

.field private static final AI_SCENE_DETECT_RESULT:I = 0x16

.field private static final AI_SCENE_DETECT_SKIP:I = 0x5

.field private static final AUTO_TORCH_UPDATE_PARAM:I = 0x15

.field private static final BEAUTY:I = 0x4

.field private static final BRIGHT_METADATA:I = 0x66

.field private static final CAMERA_DISABLED:I = 0xa

.field private static final CAMERA_OPEN_DONE:I = 0x8

.field private static final CANCEL_LONGSHOT_TIMEOUT:I = 0x7d0

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final DEFAULT_BRIGHTNESS:I = 0x3

.field private static final DEPTH_EFFECT_SUCCESS:I = 0x1

.field private static final DUAL_BEAUTY:I = 0x5

.field private static final DUAL_BOKEH:I = 0x2

.field private static final DUMP_3DNR:Z = false

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FRONT_AUTO_TORCH_AUTO_OFF:I = 0x2

.field private static final FRONT_AUTO_TORCH_AUTO_ON:I = 0x4

.field private static final FRONT_AUTO_TORCH_AUTO_TRY_CLOSE:I = 0x5

.field private static final FRONT_AUTO_TORCH_AUTO_TRY_OPEN:I = 0x3

.field private static final FRONT_AUTO_TORCH_OFF:I = 0x0

.field private static final FRONT_AUTO_TORCH_ON:I = 0x1

.field private static final GET_RESULT_3RD:I = 0x11

.field private static final GET_RESULT_FORCED:I = 0x10

.field private static final INSTANT_CAPTURE:I = 0xe

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_QC_RAW_PICUTRE_SIZE:Ljava/lang/String; = "raw-size"

.field private static final LIGHT_UP_STAY:I = 0x3e8

.field private static final LONGSHOT_CANCEL_THRESHOLD:I = 0x2800000

.field private static final LOW_COST_BEAUTY_PARAM_SOFTEN:I = 0x14

.field private static final LOW_COST_BEAUTY_PARAM_WHITEN:I = 0x1e

.field private static final LOW_LIGHT:I = 0x4

.field private static final LUX_IDX_TABLE_AR1337:[I

.field private static final LUX_IDX_TABLE_GC8034:[I

.field private static final LUX_IDX_TABLE_HI1333:[I

.field private static final LUX_IDX_TABLE_IMX486:[I

.field private static final LUX_IDX_TABLE_IMX486_QTECH:[I

.field private static final LUX_IDX_TABLE_OV13855:[I

.field private static final LUX_IDX_TABLE_S5K3L6:[I

.field private static final LUX_IDX_TABLE_S5K4H7:[I

.field private static final MANUAL_EXPOSURE:I = 0x4

.field private static final MANUAL_FOCUS:I = 0x1

.field private static final MANUAL_WB:I = 0x2

.field private static final MAXIMUM_BRIGHTNESS:I = 0x6

.field private static final MAX_SCE_FACTOR:I = 0xa

.field private static final MAX_SHARPNESS_LEVEL:I = 0x6

.field private static final MAX_ZOOM:I = 0xa

.field private static final META_COUNT:I = 0x3

.field private static final MINIMUM_BRIGHTNESS:I = 0x0

.field private static final MIN_SCE_FACTOR:I = -0xa

.field private static final MULTI_TIMEOUT:I = 0xbb8

.field private static final NO_DEPTH_EFFECT:I = 0x0

.field private static final NS_ALIGN:I = 0x40

.field private static final NS_ISO_LIMITED:I = 0xc80

.field private static final NS_MAX_NUM:I = 0x4

.field private static final NS_METADATA:I = 0x65

.field private static final NS_PARAMS_AR1337:[[I

.field private static final NS_PARAMS_GC8034:[[I

.field private static final NS_PARAMS_HI1333:[[I

.field private static final NS_PARAMS_IMX486:[[I

.field private static final NS_PARAMS_IMX486_QTECH:[[I

.field private static final NS_PARAMS_OV13855:[[I

.field private static final NS_PARAMS_S5K3L6:[[I

.field private static final NS_PARAMS_S5K4H7:[[I

.field private static final NS_STARTUP_THRESHOLD:I = 0x32

.field private static final ON_PREVIEW_STARTED:I = 0xd

.field private static final ON_RESUME_TASKS_DELAY_MSEC:I = 0x14

.field private static final OPEN_CAMERA_FAIL:I = 0x9

.field private static final PERSISI_BOKEH_DEBUG:Ljava/lang/String; = "persist.camera.bokeh.debug"

.field private static final PERSIST_BOKEH_DEBUG_CHECK:Z

.field private static final PERSIST_SKIP_MEM_CHECK:Z

.field public static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PROJECT_1820:Ljava/lang/String; = "ZQL1820"

.field private static final PROJECT_1830:Ljava/lang/String; = "ZQL1830"

.field private static final PROJECT_NAME:Ljava/lang/String;

.field private static final READ_BRIGHT_AFTER_LIGHTUP:I = 0x14

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final RESTORE_LONGSHOT:I = 0x13

.field public static final SCENE_MODE_PRO:Ljava/lang/String; = "pro-values"

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SELFIE_FLASH_DURATION:I = 0x2a8

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SET_PHOTO_UI_PARAMS:I = 0xb

.field private static final SHOW_TAP_TO_FOCUS_TOAST:I = 0x5

.field private static final SINGLE_BEAUTY:I = 0x6

.field private static final SINGLE_BOKEH:I = 0x3

.field private static final STATS_DATA:I = 0x101

.field private static final SUBJECT_NOT_FOUND:I = 0x5

.field private static final SWITCH_CAMERA:I = 0x6

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x7

.field private static final SWITCH_TO_GCAM_MODULE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "CAM_PhotoModule"

.field private static final TEXT_GONE:I = 0x0

.field private static final TEXT_SHOW:I = 0x1

.field private static final TOO_FAR:I = 0x3

.field private static final TOO_NEAR:I = 0x2

.field private static final TOUCH_TO_FOCUS:I = 0x6

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_THUMBNAIL_FLIPPED:I = 0x12

.field public static mBrightnessVisible:Z = false

.field private static mFeatureMask:I = 0x0

.field private static mLowCostBeauty:Z = false

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"

.field public static statsdata:[I


# instance fields
.field private SCE_FACTOR_STEP:I

.field private SECONDARY_SERVER_MEM:J

.field private brightnessProgressBar:Landroid/widget/ProgressBar;

.field private defaultLevel:I

.field exifraw:Lcom/android/camera/exif/ExifInterface;

.field hdr_params_table_default:[[I

.field hdr_params_table_imx486:[[I

.field hdr_params_table_s5k3l6:[[I

.field private isFrontAutoOn:Z

.field private isFrontAutoTorch:Z

.field private isTNREnabled:Z

.field iso_table_default:[I

.field iso_table_imx486:[I

.field iso_table_s5k3l6:[I

.field private mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAnimateCapture:Z

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field public mAutoHdrEnable:Z

.field private mAwbLockSupported:Z

.field private mBeauty:Z

.field private mBeautyShotEnable:Z

.field private mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBokehTipText:Landroid/widget/TextView;

.field private mBrightArray:[I

.field private mBrightnessAfterLightUp:I

.field private mBurstSnapNum:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mCameraPreviewParamsReady:Z

.field private mCameraState:I

.field private mCancelLongshot:Z

.field public mCaptureStartTime:J

.field private mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mCurrTouchAfAec:Ljava/lang/String;

.field private mCurrentBrightness:I

.field private mCurrentCount:I

.field private mCurrentType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field private mDebugUri:Landroid/net/Uri;

.field private mDepthSuccess:Z

.field private mDetector:Lcom/asus/scenedetectlib/detector/SceneDetector;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

.field private mDualBokeh:Z

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusManagerNeedSet:Z

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFocusStartTime:J

.field private mFrameId:I

.field private mFrontAutoTorchState:I

.field private mGData:[F

.field private mGraphView:Lcom/android/camera/GraphView;

.field private mHQAlgoManager:Lcom/android/camera/MultiPPManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeading:I

.field public mHiston:Z

.field private mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mInstantCaptureSnapShot:Z

.field private mInternalStorage:J

.field private mIs3dnrMode:Z

.field private mIsAILongShotDoMoreOne:Z

.field private mIsBokehMode:Z

.field private mIsImageCaptureIntent:Z

.field private mIsSingleBokehMode:Z

.field private mIshdrMode:Z

.field private mIsoAboveLimited:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegFileSizeEstimation:I

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastJpegData:[B

.field private mLastJpegOrientation:I

.field private mLastLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field private mLastPhotoTakenWithRefocus:Z

.field private mLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mLocationPromptTriggered:Z

.field private mLongPressWithoutSnap:Z

.field private mLongShotCaptureCount:I

.field private mLongShotCaptureCountLimit:I

.field private mLongshotActive:Z

.field private mLongshotSave:Z

.field private mMData:[F

.field private mManual3AEnabled:I

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaReceiverHasRegister:Z

.field private final mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private final mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

.field private mNSBufferCount:I

.field private mNSCount:I

.field private mNSExifGot:Z

.field private mNSFlashFired:Z

.field private mNSHeight:I

.field private mNSIso:I

.field private mNSStrideH:I

.field private mNSStrideW:I

.field private mNSWidth:I

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mNeedFirstPreviewFrame:Z

.field private mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPrevSavedCDS:Ljava/lang/String;

.field mPreviewBuffer:[B

.field mPreviewBuffer2:[B

.field private mPreviewHeight:I

.field private mPreviewRestartSupport:Z

.field private mPreviewWidth:I

.field private mQuickCapture:Z

.field private mR:[F

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedSnapNum:I

.field private mRefocus:Z

.field private mRefocusSound:I

.field private mRemainingPhotos:I

.field private mRestartPreview:Z

.field private mRootView:Landroid/view/View;

.field private mSaveBokehXmp:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSavedFlashMode:Ljava/lang/String;

.field private mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

.field private mSceneMode:Ljava/lang/String;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSingleBokeh:Z

.field private mSnapshotMode:I

.field private mSnapshotOnIdle:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

.field private final mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

.field private mStorageLimited:J

.field private mTouchAfAecFlag:Z

.field private mTsMakeupSwitcher:Landroid/widget/ImageView;

.field private mUI:Lcom/android/camera/PhotoUI;

.field private mUpdateSet:I

.field private mZoomIdxTbl:[I

.field private mZoomValue:I

.field private makeupParamValue:Ljava/lang/String;

.field private mbrightness:I

.field private mbrightness_step:I

.field private mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

.field private proSceneMode:Ljava/lang/String;

.field private selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

.field private softenEntryValue:[Ljava/lang/String;

.field private whitenEntryValue:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 180
    sput-boolean v4, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    .line 194
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/PhotoModule;->statsdata:[I

    .line 293
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isSkipMemoryCheckEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_SKIP_MEM_CHECK:Z

    .line 296
    const-string v0, "persist.camera.bokeh.debug"

    .line 297
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_BOKEH_DEBUG_CHECK:Z

    .line 299
    const-string v0, "ro.hq.project"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    .line 380
    sput-boolean v4, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 382
    sput v4, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 749
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI1333:[I

    .line 750
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_S5K3L6:[I

    .line 752
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_GC8034:[I

    .line 753
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_S5K4H7:[I

    .line 759
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI1333:[[I

    .line 768
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_S5K3L6:[[I

    .line 779
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_GC8034:[[I

    .line 792
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_S5K4H7:[[I

    .line 806
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_27

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_IMX486:[I

    .line 807
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_IMX486_QTECH:[I

    .line 808
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_29

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV13855:[I

    .line 809
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_AR1337:[I

    .line 813
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_IMX486:[[I

    .line 827
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3a

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3e

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_IMX486_QTECH:[[I

    .line 841
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_41

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_42

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_43

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_45

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_49

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV13855:[[I

    .line 855
    const/16 v0, 0xb

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4d

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4e

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_50

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_54

    aput-object v1, v0, v5

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_AR1337:[[I

    return-void

    .line 749
    :array_0
    .array-data 4
        0x32
        0x122
        0x140
        0x15e
        0x177
        0x190
        0x1ae
        0x1fe
    .end array-data

    .line 750
    :array_1
    .array-data 4
        0x32
        0x147
        0x168
        0x183
        0x19f
        0x1ba
        0x1d5
        0x1f0
        0x208
    .end array-data

    .line 752
    :array_2
    .array-data 4
        0x32
        0x320
        0x4b0
        0x640
        0x9c4
        0xc80
        0x168
        0x181
        0x190
        0x1b8
        0x1db
        0x226
    .end array-data

    .line 753
    :array_3
    .array-data 4
        0x32
        0x14a
        0x154
        0x15e
        0x174
        0x190
        0x1ae
        0x1f4
    .end array-data

    .line 759
    :array_4
    .array-data 4
        0x0
        0x0
        0x20
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x20
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x0
        0x20
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x0
        0x20
        0x1
    .end array-data

    .line 768
    :array_b
    .array-data 4
        0x1
        0x0
        0x20
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x1
        0x20
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x1
        0x20
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    .line 779
    :array_14
    .array-data 4
        0x1
        0x0
        0x20
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x4
        0x8
        0x20
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x4
        0x8
        0x20
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x5
        0x8
        0x20
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x8
        0x20
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x8
        0x20
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0xa
        0x2
        0x1c
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0xa
        0x1
        0x1c
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xa
        0x0
        0x14
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0xa
        0x0
        0x14
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xa
        0x0
        0x14
        0x1
    .end array-data

    .line 792
    :array_1f
    .array-data 4
        0x0
        0x0
        0x20
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x4
        0x8
        0x20
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x4
        0x8
        0x20
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x4
        0x8
        0x20
        0x1
    .end array-data

    :array_23
    .array-data 4
        0x4
        0x8
        0x20
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x8
        0x20
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x8
        0x8
        0x20
        0x1
    .end array-data

    :array_26
    .array-data 4
        0x8
        0x8
        0x20
        0x1
    .end array-data

    .line 806
    :array_27
    .array-data 4
        0x32
        0x2bc
        0x44c
        0x708
        0xaf0
        0xc80
        0x152
        0x171
        0x186
        0x1a6
        0x1c2
        0x226
    .end array-data

    .line 807
    :array_28
    .array-data 4
        0x32
        0x2bc
        0x44c
        0x708
        0xaf0
        0xc80
        0x152
        0x171
        0x186
        0x1a6
        0x1c2
        0x226
    .end array-data

    .line 808
    :array_29
    .array-data 4
        0x32
        0x320
        0x4b0
        0x708
        0xaf0
        0xc80
        0x166
        0x17e
        0x19c
        0x1ba
        0x1d6
        0x226
    .end array-data

    .line 809
    :array_2a
    .array-data 4
        0x32
        0x258
        0x578
        0x76c
        0x9c4
        0xc80
        0x17b
        0x18f
        0x1a4
        0x1b8
        0x1cc
        0x226
    .end array-data

    .line 813
    :array_2b
    .array-data 4
        0x1
        0x0
        0x20
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x0
        0x20
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x2
        0x0
        0x20
        0x1
    .end array-data

    :array_2e
    .array-data 4
        0x2
        0x0
        0x20
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x3
        0x0
        0x20
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x7
        0x0
        0x20
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x7
        0x0
        0x20
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x0
        0x1d
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x5
        0x0
        0x1c
        0x1
    .end array-data

    :array_34
    .array-data 4
        0x5
        0x0
        0x1b
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x5
        0x0
        0x1b
        0x1
    .end array-data

    .line 827
    :array_36
    .array-data 4
        0x1
        0x0
        0x20
        0x1
    .end array-data

    :array_37
    .array-data 4
        0x1
        0x0
        0x20
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x2
        0x0
        0x20
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x2
        0x0
        0x20
        0x1
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x0
        0x20
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x7
        0x0
        0x20
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x7
        0x0
        0x20
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x6
        0x0
        0x1d
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x5
        0x0
        0x1c
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x5
        0x0
        0x1b
        0x1
    .end array-data

    :array_40
    .array-data 4
        0x5
        0x0
        0x1b
        0x1
    .end array-data

    .line 841
    :array_41
    .array-data 4
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_44
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x7
        0x0
        0x20
        0x1
    .end array-data

    :array_46
    .array-data 4
        0x9
        0x0
        0x20
        0x1
    .end array-data

    :array_47
    .array-data 4
        0x9
        0x0
        0x1a
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x9
        0x0
        0x14
        0x1
    .end array-data

    :array_49
    .array-data 4
        0xa
        0x0
        0xc
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0xa
        0x0
        0xa
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0xa
        0x0
        0xa
        0x1
    .end array-data

    .line 855
    :array_4c
    .array-data 4
        0x2
        0x0
        0x20
        0x0
    .end array-data

    :array_4d
    .array-data 4
        0x2
        0x0
        0x20
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x3
        0x0
        0x20
        0x0
    .end array-data

    :array_4f
    .array-data 4
        0x3
        0x0
        0x20
        0x0
    .end array-data

    :array_50
    .array-data 4
        0x3
        0x0
        0x20
        0x0
    .end array-data

    :array_51
    .array-data 4
        0x4
        0x0
        0x1e
        0x0
    .end array-data

    :array_52
    .array-data 4
        0x4
        0x0
        0x1d
        0x0
    .end array-data

    :array_53
    .array-data 4
        0x4
        0x0
        0x1a
        0x0
    .end array-data

    :array_54
    .array-data 4
        0x8
        0x0
        0x16
        0x0
    .end array-data

    :array_55
    .array-data 4
        0xa
        0x0
        0x12
        0x0
    .end array-data

    :array_56
    .array-data 4
        0xa
        0x0
        0x11
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 187
    iput v6, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    .line 188
    iput v4, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    .line 189
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 195
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 234
    const-wide/32 v2, 0x3c00000

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mStorageLimited:J

    .line 253
    iput v7, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 272
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    .line 273
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    .line 274
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    .line 275
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    .line 284
    iput v7, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 291
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 306
    iput v5, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 307
    iput v6, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    .line 316
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/PhotoModule;->SCE_FACTOR_STEP:I

    .line 318
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 331
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 341
    iput v4, p0, Lcom/android/camera/PhotoModule;->mLastJpegOrientation:I

    .line 343
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 345
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    .line 348
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    .line 349
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    .line 351
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 361
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSCount:I

    .line 362
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 363
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 364
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 365
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 366
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 367
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 368
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    .line 369
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsoAboveLimited:Z

    .line 370
    iput v4, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    .line 373
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 378
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 384
    new-instance v0, Lcom/android/camera/PhotoModule$MultiPPCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MultiPPCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

    .line 395
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCancelLongshot:Z

    .line 400
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    .line 401
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    .line 402
    iput v4, p0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    .line 417
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBrightArray:[I

    .line 418
    iput v4, p0, Lcom/android/camera/PhotoModule;->mCurrentBrightness:I

    .line 419
    iput v4, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    .line 420
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    .line 421
    iput v4, p0, Lcom/android/camera/PhotoModule;->mBrightnessAfterLightUp:I

    .line 422
    iput v4, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    .line 423
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 427
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFocusManagerNeedSet:Z

    .line 431
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mNeedFirstPreviewFrame:Z

    .line 432
    iput v4, p0, Lcom/android/camera/PhotoModule;->mFrameId:I

    .line 435
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 436
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 437
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLastLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 479
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    .line 513
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    .line 531
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 534
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 548
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 618
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    .line 629
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

    .line 655
    iput v7, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 656
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 661
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    .line 663
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 665
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 667
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 669
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 674
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 675
    new-instance v0, Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$StatsCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

    .line 676
    new-instance v0, Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MetaDataCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    .line 697
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 698
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 700
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 701
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 707
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .line 708
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    .line 709
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mR:[F

    .line 710
    iput v7, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 713
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    .line 715
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 717
    iput v4, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 721
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    .line 723
    iput v4, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    .line 724
    iput v7, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    .line 732
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 733
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 734
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 744
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 871
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->iso_table_imx486:[I

    .line 872
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->hdr_params_table_imx486:[[I

    .line 885
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->iso_table_default:[I

    .line 886
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->hdr_params_table_default:[[I

    .line 901
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->iso_table_s5k3l6:[I

    .line 902
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    new-array v1, v5, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->hdr_params_table_s5k3l6:[[I

    .line 971
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 2748
    new-instance v0, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2758
    new-instance v0, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2778
    new-instance v0, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 7337
    new-instance v0, Lcom/android/camera/PhotoModule$36;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$36;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 7346
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mMediaReceiverHasRegister:Z

    return-void

    :cond_0
    move-object v0, v1

    .line 669
    goto/16 :goto_0

    .line 713
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 871
    :array_1
    .array-data 4
        0x32
        0x96
        0x1f4
        0x3e8
        0x5dc
        0x7d0
        0x960
        0xaf0
        0x1900
        0x3200
    .end array-data

    .line 872
    :array_2
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x18
        -0x5
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x17
        -0x8
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x16
        -0xa
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x16
        -0xc
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x15
        -0xc
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x14
        -0xd
        0x0
    .end array-data

    .line 885
    :array_b
    .array-data 4
        0x32
        0x96
        0x1f4
        0x3e8
        0x5dc
        0x7d0
        0x960
        0xc80
        0x1900
    .end array-data

    .line 886
    :array_c
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    .line 901
    :array_14
    .array-data 4
        0x32
        0x96
        0x190
        0x258
        0x320
        0x4b0
        0x640
        0x898
        0xaf0
        0xe10
    .end array-data

    .line 902
    :array_15
    .array-data 4
        0x19
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x19
        -0x16
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x19
        -0x19
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x19
        -0xa
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x19
        -0xc
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x19
        -0xe
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x19
        -0xa
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x19
        -0xa
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x19
        -0xa
        0x0
    .end array-data
.end method

.method private UpdateManualExposureSettings()V
    .locals 27

    .prologue
    .line 6615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6791
    :goto_0
    return-void

    .line 6617
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 6618
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v14, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6619
    .local v14, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6620
    .local v22, "linear":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6621
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v13, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6622
    .local v13, "ISOtext":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6623
    .local v4, "ISOinput":Landroid/widget/EditText;
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v11, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6624
    .local v11, "ExpTimeText":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v5, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6625
    .local v5, "ExpTimeInput":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 6626
    const/16 v18, 0x2002

    .line 6627
    .local v18, "floatType":I
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 6628
    const-string v2, "Manual Exposure Settings"

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6629
    const-string v2, "Cancel"

    new-instance v3, Lcom/android/camera/PhotoModule$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/PhotoModule$32;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "min-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 6639
    .local v8, "minISO":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "max-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 6640
    .local v7, "maxISO":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v20

    .line 6641
    .local v20, "isoMode":Ljava/lang/String;
    const-string v19, "manual"

    .line 6642
    .local v19, "isoManual":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6643
    .local v16, "currentISO":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 6644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current ISO is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6647
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "min-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6648
    .local v9, "minExpTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "max-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6649
    .local v6, "maxExpTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6650
    .local v15, "currentExpTime":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 6651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current exposure time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6654
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e005a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 6656
    .local v21, "isoPriority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e005b

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 6658
    .local v17, "expTimePriority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e005c

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 6660
    .local v24, "userSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_manual_exp_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0059

    .line 6662
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6660
    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6663
    .local v23, "manualExposureMode":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "manual Exposure Mode selected = "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6664
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter ISO in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6666
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6667
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6668
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6669
    const-string v2, "Ok"

    new-instance v3, Lcom/android/camera/PhotoModule$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v7, v8}, Lcom/android/camera/PhotoModule$33;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6692
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6693
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter exposure time in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6696
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6697
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6698
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6699
    const-string v2, "Ok"

    new-instance v3, Lcom/android/camera/PhotoModule$34;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6, v9}, Lcom/android/camera/PhotoModule$34;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6729
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6730
    :cond_4
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6731
    const-string v2, "Full manual mode - Enter both ISO and Exposure Time"

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6732
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6733
    .local v12, "ISORangeText":Landroid/widget/TextView;
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v10, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6734
    .local v10, "ExpTimeRangeText":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter ISO in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter exposure time in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6737
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6738
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6739
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6740
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6741
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6742
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6743
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6744
    const-string v25, "Ok"

    new-instance v2, Lcom/android/camera/PhotoModule$35;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/PhotoModule$35;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6782
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6784
    .end local v10    # "ExpTimeRangeText":Landroid/widget/TextView;
    .end local v12    # "ISORangeText":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v2, v2, -0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 6786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "exposure-time"

    const-string v25, "0"

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "pref_camera_iso_key"

    aput-object v26, v3, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput-object v26, v3, v25

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 6788
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 6789
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method private UpdateManualFocusSettings()V
    .locals 22

    .prologue
    .line 6330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 6331
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v10, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6332
    .local v10, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v15, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6333
    .local v15, "linear":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6334
    const-string v3, "Manual Focus Settings"

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6335
    const-string v3, "Cancel"

    new-instance v4, Lcom/android/camera/PhotoModule$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/PhotoModule$25;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v10, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6342
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v13, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6343
    .local v13, "focusPositionText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e006b

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 6345
    .local v19, "scaleMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e006c

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6347
    .local v11, "diopterMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_manual_focus_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e006a

    .line 6349
    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6347
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6351
    .local v16, "manualFocusMode":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "manualFocusMode selected = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6352
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6353
    new-instance v14, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v14, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 6354
    .local v14, "focusbar":Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "min-focus-pos-ratio"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 6355
    .local v8, "minFocusPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "max-focus-pos-ratio"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 6357
    .local v6, "maxFocusPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "cur-focus-scale"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6359
    .local v2, "CurFocusPos":I
    invoke-virtual {v14, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter focus position in the range of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6365
    new-instance v3, Lcom/android/camera/PhotoModule$26;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/android/camera/PhotoModule$26;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/TextView;)V

    invoke-virtual {v14, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 6379
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6380
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6381
    invoke-virtual {v10, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6382
    const-string v3, "Ok"

    new-instance v4, Lcom/android/camera/PhotoModule$27;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/camera/PhotoModule$27;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/SeekBar;)V

    invoke-virtual {v10, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6396
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6456
    .end local v2    # "CurFocusPos":I
    .end local v6    # "maxFocusPos":I
    .end local v8    # "minFocusPos":I
    .end local v14    # "focusbar":Landroid/widget/SeekBar;
    :goto_0
    return-void

    .line 6397
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "min-focus-pos-diopter"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6399
    .local v18, "minFocusStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "max-focus-pos-diopter"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 6400
    .local v17, "maxFocusStr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 6401
    .local v8, "minFocusPos":D
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 6402
    .local v6, "maxFocusPos":D
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6403
    .local v5, "input":Landroid/widget/EditText;
    const/16 v12, 0x2002

    .line 6404
    .local v12, "floatType":I
    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 6405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter focus position in the range of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "cur-focus-diopter"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6410
    .local v2, "CurFocusPos":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6411
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6412
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6413
    invoke-virtual {v10, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6414
    const-string v20, "Ok"

    new-instance v3, Lcom/android/camera/PhotoModule$28;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/PhotoModule$28;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;DD)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6448
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6450
    .end local v2    # "CurFocusPos":Ljava/lang/String;
    .end local v5    # "input":Landroid/widget/EditText;
    .end local v6    # "maxFocusPos":D
    .end local v8    # "minFocusPos":D
    .end local v12    # "floatType":I
    .end local v17    # "maxFocusStr":Ljava/lang/String;
    .end local v18    # "minFocusStr":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 6451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 6452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "pref_camera_focusmode_key"

    aput-object v21, v4, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v4, v20

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 6453
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 6454
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method private UpdateManualWBSettings()V
    .locals 31

    .prologue
    .line 6460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 6461
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6462
    .local v16, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6463
    .local v21, "linear":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6464
    const-string v5, "Manual White Balance Settings"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6465
    const-string v5, "Cancel"

    new-instance v6, Lcom/android/camera/PhotoModule$29;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$29;-><init>(Lcom/android/camera/PhotoModule;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0063

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 6475
    .local v17, "cctMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0064

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 6477
    .local v27, "rgbGainMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_manual_wb_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0e0062

    .line 6479
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 6477
    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6480
    .local v22, "manualWBMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0e03a8

    .line 6482
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 6480
    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 6483
    .local v28, "wbPref":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "manualWBMode selected = "

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6484
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6485
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v14, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6486
    .local v14, "CCTtext":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6487
    .local v4, "CCTinput":Landroid/widget/EditText;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 6488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "min-wb-cct"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 6489
    .local v25, "minCCT":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "max-wb-cct"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 6492
    .local v23, "maxCCT":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "wb-manual-cct"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6494
    .local v18, "currentCCT":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 6495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current CCT is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6497
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter CCT value in the range of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6498
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6499
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6500
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6501
    const-string v5, "Ok"

    new-instance v6, Lcom/android/camera/PhotoModule$30;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/android/camera/PhotoModule$30;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6525
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6610
    .end local v4    # "CCTinput":Landroid/widget/EditText;
    .end local v14    # "CCTtext":Landroid/widget/TextView;
    .end local v18    # "currentCCT":Ljava/lang/String;
    .end local v23    # "maxCCT":I
    .end local v25    # "minCCT":I
    :goto_0
    return-void

    .line 6526
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6527
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v15, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6528
    .local v15, "RGBtext":Landroid/widget/TextView;
    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v7, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6529
    .local v7, "Rinput":Landroid/widget/EditText;
    const-string v5, "Enter R gain here"

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6530
    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v8, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6531
    .local v8, "Ginput":Landroid/widget/EditText;
    const-string v5, "Enter G gain here"

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6532
    new-instance v9, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v9, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 6533
    .local v9, "Binput":Landroid/widget/EditText;
    const-string v5, "Enter B gain here"

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6535
    const/16 v20, 0x2002

    .line 6536
    .local v20, "floatType":I
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 6537
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 6538
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 6540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "min-wb-gain"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 6541
    .local v26, "minGainStr":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 6542
    .local v12, "minGain":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "max-wb-gain"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 6543
    .local v24, "maxGainStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 6546
    .local v10, "maxGain":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "manual-wb-gains"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 6548
    .local v19, "currentGains":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 6549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current RGB gains are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6552
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter RGB gains in the range of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6554
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6555
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6556
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6557
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6558
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6559
    const-string v29, "Ok"

    new-instance v5, Lcom/android/camera/PhotoModule$31;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/camera/PhotoModule$31;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;DD)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6602
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6605
    .end local v7    # "Rinput":Landroid/widget/EditText;
    .end local v8    # "Ginput":Landroid/widget/EditText;
    .end local v9    # "Binput":Landroid/widget/EditText;
    .end local v10    # "maxGain":D
    .end local v12    # "minGain":D
    .end local v15    # "RGBtext":Landroid/widget/TextView;
    .end local v19    # "currentGains":Ljava/lang/String;
    .end local v20    # "floatType":I
    .end local v24    # "maxGainStr":Ljava/lang/String;
    .end local v26    # "minGainStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v5, v5, -0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 6606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v29, 0x0

    const-string v30, "pref_camera_whitebalance_key"

    aput-object v30, v6, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-object v30, v6, v29

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 6607
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 6608
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$10000()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_BOKEH_DEBUG_CHECK:Z

    return v0
.end method

.method static synthetic access$10100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    return v0
.end method

.method static synthetic access$10402(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    return p1
.end method

.method static synthetic access$10500(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    return v0
.end method

.method static synthetic access$10502(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    return p1
.end method

.method static synthetic access$10600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    return v0
.end method

.method static synthetic access$10700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$10702(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$10800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$10900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setPreviewCallback()V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$11202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    return v0
.end method

.method static synthetic access$11506(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    return v0
.end method

.method static synthetic access$11600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$11700(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/camera/PhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->saveToDebugUri([B)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$12100()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    return v0
.end method

.method static synthetic access$12500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    return v0
.end method

.method static synthetic access$12802(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    return p1
.end method

.method static synthetic access$12900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;[BII)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->flipJpeg([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mLastJpegOrientation:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$SelfieThread;)Lcom/android/camera/PhotoModule$SelfieThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$SelfieThread;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mLastLastType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoModule;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrentType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onCameraOpened()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCurrentType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    return p1
.end method

.method static synthetic access$5902(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCancelLongshot:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCurrentBrightness:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCurrentBrightness:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mBrightnessAfterLightUp:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mBrightnessAfterLightUp:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/camera/PhotoModule;Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->adjustParamsForAI(Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6902(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$SavingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$SavingThread;)Lcom/android/camera/PhotoModule$SavingThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$SavingThread;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isLongshotNeedCancel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    return v0
.end method

.method static synthetic access$7308(Lcom/android/camera/PhotoModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    return v0
.end method

.method static synthetic access$7400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCountLimit:I

    return v0
.end method

.method static synthetic access$7500(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->savePPPic([B)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isShutterSoundOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mRefocusSound:I

    return v0
.end method

.method static synthetic access$8200(Lcom/android/camera/PhotoModule;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/DrawAutoHDR;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/camera/PhotoModule;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    return v0
.end method

.method static synthetic access$8902(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    return-object v0
.end method

.method static synthetic access$9000()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$9002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 163
    sput p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/PhotoModule;Lcom/android/camera/MultiPPManager;)Lcom/android/camera/MultiPPManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/MultiPPManager;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/camera/PhotoModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->adjustNSParams(II)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->startAutoTorch(Z)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$9402(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    return p1
.end method

.method static synthetic access$9408(Lcom/android/camera/PhotoModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$9500(Lcom/android/camera/PhotoModule;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBrightArray:[I

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$9602(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$9700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    return v0
.end method

.method static synthetic access$9800(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$9802(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$9900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    return v0
.end method

.method public static addExifTags([BI)[B
    .locals 5
    .param p0, "jpeg"    # [B
    .param p1, "orientationInDegree"    # I

    .prologue
    .line 2204
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 2205
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v1, p1}, Lcom/android/camera/exif/ExifInterface;->addOrientationTag(I)Z

    .line 2206
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2208
    .local v2, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v1, p0, v2}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-nez v1, :cond_0

    .line 1700
    new-instance v1, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1708
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1709
    .local v0, "queue":Landroid/os/MessageQueue;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1711
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    return-void
.end method

.method private addNSCallbackBuffer()V
    .locals 5

    .prologue
    .line 7566
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNSCallbackBuffer, buffer count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v3}, Lcom/android/camera/MultiPPManager;->getNumOfShot()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 7568
    const-string v2, "CAM_PhotoModule"

    const-string v3, "NS buffer is enough"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7579
    :cond_0
    :goto_0
    return-void

    .line 7571
    :cond_1
    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 7572
    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    iget v3, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v1, v2, 0x800

    .line 7573
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 7575
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    .line 7576
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    goto :goto_0
.end method

.method private addPreviewBuffer()V
    .locals 2

    .prologue
    .line 7871
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 7872
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    if-eqz v0, :cond_0

    .line 7873
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 7875
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    if-eqz v0, :cond_1

    .line 7876
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 7879
    :cond_1
    return-void
.end method

.method private adjustHDRParams(I)V
    .locals 6
    .param p1, "cameraID"    # I

    .prologue
    .line 7421
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cameraModuleInfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 7422
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 7423
    .local v0, "line_one":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 7425
    .local v1, "line_two":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 7426
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 7427
    const-string v3, "s5k3l6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 7428
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->hdr_params_table_s5k3l6:[[I

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->iso_table_s5k3l6:[I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/PhotoModule;->setHDRParam([[I[I)V

    .line 7429
    const-string v3, "CAM_PhotoModule"

    const-string v4, "setHDRPara this is s5k3l6 "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7445
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-void

    .line 7430
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const-string v3, "hi1333"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 7432
    const-string v3, "imx486"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 7433
    const-string v3, "CAM_PhotoModule"

    const-string v4, "setHDRPara this is imx846 "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7434
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->hdr_params_table_imx486:[[I

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->iso_table_imx486:[I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/PhotoModule;->setHDRParam([[I[I)V

    goto :goto_0

    .line 7443
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 7436
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->hdr_params_table_default:[[I

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->iso_table_default:[I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/PhotoModule;->setHDRParam([[I[I)V

    goto :goto_0

    .line 7438
    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    if-eqz v1, :cond_4

    .line 7439
    const-string v3, "CAM_PhotoModule"

    const-string v4, "front camera no HDR feature "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7441
    :cond_4
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private adjustNSParams(II)V
    .locals 6
    .param p1, "lux"    # I
    .param p2, "cameraID"    # I

    .prologue
    .line 7375
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cameraModuleInfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 7376
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 7377
    .local v0, "line_one":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 7379
    .local v1, "line_two":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 7380
    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    .line 7381
    const-string v3, "s5k3l6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 7382
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_S5K3L6:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_S5K3L6:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    .line 7413
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 7383
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    const-string v3, "hi1333"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 7384
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI1333:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI1333:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 7411
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 7385
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const-string v3, "imx486"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 7386
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_IMX486:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_IMX486:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam_new(I[I[[I)V

    goto :goto_0

    .line 7387
    :cond_2
    const-string v3, "imx486_qtech"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 7388
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_IMX486_QTECH:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_IMX486_QTECH:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam_new(I[I[[I)V

    goto :goto_0

    .line 7390
    :cond_3
    const-string v3, "CAM_PhotoModule"

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7391
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setNSParamsDebug()V

    goto :goto_0

    .line 7393
    :cond_4
    const/4 v3, 0x1

    if-ne p2, v3, :cond_9

    if-eqz v1, :cond_9

    .line 7394
    const-string v3, "s5k4h7"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 7395
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_S5K4H7:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_S5K4H7:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 7396
    :cond_5
    const-string v3, "gc8034"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 7398
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_GC8034:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_GC8034:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam_new(I[I[[I)V

    goto :goto_0

    .line 7399
    :cond_6
    const-string v3, "ov13855"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    .line 7400
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV13855:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV13855:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam_new(I[I[[I)V

    goto :goto_0

    .line 7401
    :cond_7
    const-string v3, "ar1337"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 7402
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_AR1337:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_AR1337:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam_new(I[I[[I)V

    goto/16 :goto_0

    .line 7404
    :cond_8
    const-string v3, "CAM_PhotoModule"

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7405
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setNSParamsDebug()V

    goto/16 :goto_0

    .line 7408
    :cond_9
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7409
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setNSParamsDebug()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private adjustParamsForAI(Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;)V
    .locals 3
    .param p1, "mCurrentType"    # Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .prologue
    const/4 v2, 0x5

    .line 7818
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 7848
    :cond_0
    :goto_0
    return-void

    .line 7821
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 7822
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->TEXT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne p1, v0, :cond_2

    .line 7830
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 7831
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 7844
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 7845
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 7832
    :cond_2
    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FOOD:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->PLANT:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->FLOWER:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    if-ne p1, v0, :cond_4

    .line 7836
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    goto :goto_1

    .line 7838
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 7839
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 7840
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    goto :goto_1
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 2897
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2898
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->animateFlash()V

    .line 2900
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 4603
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_0

    .line 997
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 999
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1007
    :cond_1
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4753
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Close camera device."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 4755
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4756
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 4757
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4759
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4761
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    .line 4766
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 4767
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 4768
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4769
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 4770
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 4774
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 4777
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "pro-values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4778
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->setProParamChanged(Z)V

    .line 4781
    :cond_2
    return-void

    .line 4763
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_0
.end method

.method private enableFilterModeSwitcherView()V
    .locals 3

    .prologue
    .line 7256
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7266
    :cond_0
    :goto_0
    return-void

    .line 7258
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7261
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7262
    .local v0, "filter_mode_switcher":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private estimateJpegFileSize(Landroid/hardware/Camera$Size;Ljava/lang/String;)I
    .locals 6
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "quality"    # Ljava/lang/String;

    .prologue
    .line 5716
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 5717
    .local v3, "ratios":[I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 5719
    .local v1, "qualities":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 5720
    .local v2, "ratio":I
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5721
    aget-object v4, v1, v0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5722
    aget v2, v3, v0

    .line 5727
    :cond_0
    if-nez v2, :cond_2

    .line 5728
    const/4 v4, 0x0

    .line 5730
    :goto_1
    return v4

    .line 5720
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5730
    :cond_2
    iget v4, p1, Landroid/hardware/Camera$Size;->width:I

    iget v5, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v2

    goto :goto_1
.end method

.method private flipJpeg([BII)[B
    .locals 10
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "jpegOrientation"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 2184
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2185
    .local v0, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2186
    .local v5, "m":Landroid/graphics/Matrix;
    const/16 v2, 0x10e

    if-eq p2, v2, :cond_0

    const/16 v2, 0x5a

    if-ne p2, v2, :cond_2

    .line 2188
    :cond_0
    if-eqz p3, :cond_1

    const/16 v2, 0xb4

    if-ne p3, v2, :cond_3

    .line 2189
    :cond_1
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2194
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2195
    .local v7, "dstBitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0xa0

    invoke-virtual {v7, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 2196
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v9, v1, v2

    .line 2197
    .local v9, "size":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2198
    .local v8, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2200
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 2191
    .end local v7    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "size":I
    :cond_3
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0
.end method

.method private getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 3244
    if-eqz p1, :cond_0

    const-string v0, "jpeg"

    .line 3245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3246
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 3248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 3252
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 3253
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3258
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private initialMakeupseekBar()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f0e022f

    .line 7288
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    .line 7289
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    .line 7290
    sget-object v0, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1820"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7291
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    .line 7293
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    .line 7295
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    .line 7309
    :goto_0
    return-void

    .line 7296
    :cond_0
    sget-object v0, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7297
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    .line 7299
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    .line 7301
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    goto :goto_0

    .line 7303
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    .line 7305
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    .line 7307
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 6968
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 6969
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 6970
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 6971
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 6972
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    .line 6974
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->initializeControlByIntent()V

    .line 1275
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 1278
    :cond_0
    return-void
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 1638
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1645
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1647
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->initializeFirstTime()V

    .line 1648
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1651
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_2

    .line 1652
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1655
    :cond_2
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1656
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/GraphView;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    .line 1657
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/DrawAutoHDR;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    .line 1658
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    if-nez v2, :cond_4

    .line 1659
    :cond_3
    const-string v2, "CAM_PhotoModule"

    const-string v3, "mGraphView or mDrawAutoHDR is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 1666
    const-string v2, "CAM_PhotoModule"

    const-string v3, "addIdleHandler in first time initialization"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    goto :goto_0

    .line 1661
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/GraphView;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    .line 1662
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    invoke-virtual {v2, p0}, Lcom/android/camera/DrawAutoHDR;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 4524
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 4525
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 4541
    :cond_0
    :goto_0
    return-void

    .line 4527
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v8, v1, v3

    .line 4528
    .local v8, "info":Landroid/hardware/Camera$CameraInfo;
    iget v1, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 4529
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4531
    .local v2, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4533
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4535
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusManagerNeedSet:Z

    if-eqz v0, :cond_0

    .line 4536
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 4537
    iput-boolean v9, p0, Lcom/android/camera/PhotoModule;->mFocusManagerNeedSet:Z

    goto :goto_0

    .end local v2    # "defaultFocusModes":[Ljava/lang/String;
    :cond_2
    move v0, v9

    .line 4528
    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 1675
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1677
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1678
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1679
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_0

    .line 1680
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1682
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1683
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_1

    .line 1684
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->showSwitcher()V

    .line 1686
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->initializeSecondTime(Landroid/hardware/Camera$Parameters;)V

    .line 1687
    return-void
.end method

.method private initiateSnap()V
    .locals 4

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_selfie_flash_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00a2

    .line 4090
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4089
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 4091
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 4092
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4093
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->startSelfieFlash()V

    .line 4094
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    if-nez v0, :cond_0

    .line 4095
    new-instance v0, Lcom/android/camera/PhotoModule$SelfieThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$SelfieThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    .line 4096
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SelfieThread;->start()V

    .line 4101
    :cond_0
    :goto_0
    return-void

    .line 4099
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    goto :goto_0
.end method

.method private isInstantCaptureEnabled()Z
    .locals 5

    .prologue
    .line 4966
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_instant_capture_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0072

    .line 4968
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4966
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4969
    .local v0, "instantCapture":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4971
    const/4 v1, 0x0

    .line 4973
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLongshotNeedCancel()Z
    .locals 20

    .prologue
    .line 1752
    sget-boolean v14, Lcom/android/camera/PhotoModule;->PERSIST_SKIP_MEM_CHECK:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1753
    const/4 v14, 0x0

    .line 1787
    :goto_0
    return v14

    .line 1756
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v14

    const-wide/32 v16, 0x3c00000

    cmp-long v14, v14, v16

    if-gtz v14, :cond_1

    .line 1757
    const-string v14, "CAM_PhotoModule"

    const-string v15, "current storage is full"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v14, 0x1

    goto :goto_0

    .line 1760
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 1761
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1763
    .local v2, "am":Landroid/app/ActivityManager;
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1764
    .local v8, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1765
    iget-wide v14, v8, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    .line 1768
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v8    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    .line 1769
    .local v12, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 1770
    .local v6, "maxMemory":J
    sub-long v10, v6, v12

    .line 1772
    .local v10, "remainMemory":J
    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1773
    .local v9, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1774
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v3

    .line 1775
    .local v3, "info":[J
    const/4 v14, 0x1

    aget-wide v14, v3, v14

    const/16 v16, 0x3

    aget-wide v16, v3, v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    mul-long v4, v14, v16

    .line 1777
    .local v4, "availMem":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    cmp-long v14, v4, v14

    if-lez v14, :cond_3

    const-wide/32 v14, 0x2800000

    cmp-long v14, v10, v14

    if-gtz v14, :cond_4

    .line 1778
    :cond_3
    const-string v14, "CAM_PhotoModule"

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

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 1782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0202

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v14

    .line 1783
    invoke-virtual {v14}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1784
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1787
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private isShutterSoundOn()Z
    .locals 3

    .prologue
    .line 4078
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_shuttersound_key"

    .line 4079
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 4080
    .local v0, "shutterSoundPref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4081
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4082
    const/4 v1, 0x0

    .line 4084
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 6947
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6948
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 6949
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6950
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 15

    .prologue
    .line 3695
    new-instance v7, Lcom/android/camera/CameraSettings;

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v12, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v13, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 3696
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v14

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 3697
    .local v7, "settings":Lcom/android/camera/CameraSettings;
    const/high16 v11, 0x7f060000

    invoke-virtual {v7, v11}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 3699
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    .line 3701
    .local v6, "numOfCams":I
    if-nez v6, :cond_0

    .line 3703
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3707
    :cond_0
    const-string v11, "CAM_PhotoModule"

    const-string v12, "loadCameraPreferences() updating camera_id pref"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/camera/CameraActivity;->mThumbClicked:Z

    .line 3711
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v12, "pref_camera_id_key"

    .line 3712
    invoke-virtual {v11, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IconListPreference;

    .line 3715
    .local v8, "switchIconPref":Lcom/android/camera/IconListPreference;
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v12, "pref_camera_tsmakeup_key"

    .line 3716
    invoke-virtual {v11, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    check-cast v9, Lcom/android/camera/IconListPreference;

    .line 3718
    .local v9, "tsMakeupIconPref":Lcom/android/camera/IconListPreference;
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v12, "pref_camera_tsmakeup_level_key"

    .line 3719
    invoke-virtual {v11, v12}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v10

    check-cast v10, Lcom/android/camera/IconListPreference;

    .line 3721
    .local v10, "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 3722
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 3723
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    const-string v12, "On"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3724
    invoke-virtual {v10}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Off"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3725
    const-string v11, "CAM_PhotoModule"

    const-string v12, "if level is off but switch is on, reset level to low"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    iget v11, p0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    invoke-virtual {v10, v11}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 3732
    :cond_1
    if-nez v8, :cond_2

    .line 3760
    :goto_0
    return-void

    .line 3735
    :cond_2
    new-array v2, v6, [I

    .line 3736
    .local v2, "iconIds":[I
    new-array v0, v6, [Ljava/lang/String;

    .line 3737
    .local v0, "entries":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    .line 3738
    .local v4, "labels":[Ljava/lang/String;
    new-array v5, v6, [I

    .line 3740
    .local v5, "largeIconIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 3741
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v11

    aget-object v3, v11, v1

    .line 3742
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    iget v11, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v11, :cond_3

    .line 3743
    const v11, 0x7f02010e

    aput v11, v2, v1

    .line 3744
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0362

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 3745
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e03df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v1

    .line 3746
    const v11, 0x7f02010e

    aput v11, v5, v1

    .line 3740
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3748
    :cond_3
    const v11, 0x7f020110

    aput v11, v2, v1

    .line 3749
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0363

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 3750
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e03e0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v1

    .line 3751
    const v11, 0x7f020110

    aput v11, v5, v1

    goto :goto_2

    .line 3755
    .end local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_4
    invoke-virtual {v8, v2}, Lcom/android/camera/IconListPreference;->setIconIds([I)V

    .line 3756
    invoke-virtual {v8, v0}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3757
    invoke-virtual {v8, v4}, Lcom/android/camera/IconListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 3758
    invoke-virtual {v8, v5}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    goto :goto_0
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 1301
    const/4 v1, 0x0

    .line 1302
    .local v1, "enableRecordingLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1304
    const/4 v1, 0x1

    .line 1308
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1310
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    if-eqz v2, :cond_3

    .line 1326
    :cond_2
    :goto_0
    return-void

    .line 1314
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 1315
    .local v0, "backCameraId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1320
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    .line 1325
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->enableRecordingLocation(Z)V

    goto :goto_0
.end method

.method private needRestart()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4945
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4946
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_zsl_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e002a

    .line 4947
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4946
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4948
    .local v0, "zsl":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v2, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 4951
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4953
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4962
    :goto_0
    return v1

    .line 4955
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v2, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_1

    .line 4958
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4960
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    goto :goto_0

    .line 4962
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    goto :goto_0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 6795
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 2

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1409
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 1411
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 1412
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateFocusManager(Lcom/android/camera/PhotoUI;)V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1281
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1284
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1286
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 1287
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    .line 1290
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    if-eqz v0, :cond_2

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    goto :goto_0
.end method

.method private onResumeTasks()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4335
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Executing onResumeTasks."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v2, :cond_1

    .line 4385
    :cond_0
    :goto_0
    return-void

    .line 4338
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-nez v2, :cond_2

    .line 4339
    new-instance v2, Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/PhotoModule$OpenCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 4340
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$OpenCameraThread;->start()V

    .line 4343
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-nez v2, :cond_3

    .line 4344
    new-instance v2, Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 4345
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$StartPreviewThread;->start()V

    .line 4348
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v3, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 4350
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 4351
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 4355
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_6

    .line 4356
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4360
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->initDisplayChangeListener()V

    .line 4361
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 4362
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 4365
    const-string v2, "Camera"

    const-string v3, "PhotoModule"

    invoke-static {v2, v3}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 4369
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_4

    .line 4370
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4373
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 4374
    .local v1, "msensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_5

    .line 4375
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4378
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    .line 4379
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    .line 4381
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isCaptureAnimationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    .line 4383
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v6, v2, Lcom/android/camera/CameraActivity;->mCameraResumed:Z

    goto :goto_0

    .line 4358
    .end local v0    # "gsensor":Landroid/hardware/Sensor;
    .end local v1    # "msensor":Landroid/hardware/Sensor;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4187
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4257
    :cond_0
    :goto_0
    return-void

    .line 4192
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

    if-eqz v0, :cond_2

    .line 4193
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CloseCameraThread;->join()V

    .line 4194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4200
    :cond_2
    :goto_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Open camera device."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4203
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v3

    .line 4201
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 4204
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_4

    .line 4205
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 4209
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_3

    .line 4210
    const-string v0, "CAM_PhotoModule"

    const-string v1, "camera paused, don\'t send fail message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 4215
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4232
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4234
    sget-object v0, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1820"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4235
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "capture-burst-retroactive"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4240
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 4241
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 4242
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v0, :cond_7

    .line 4243
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 4247
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 4249
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 4251
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4253
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4254
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getProParamChanged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/ui/CameraControls;->isProParamsChanged:Z

    goto/16 :goto_0

    .line 4236
    :cond_6
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v0, v4, :cond_5

    .line 4237
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "capture-burst-retroactive"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4245
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_3

    .line 4196
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private openCameraCommon()V
    .locals 6

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 1507
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setCameraDevicePara(Landroid/hardware/Camera$Parameters;)V

    .line 1509
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 1510
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraControls;->setSharepPre(Lcom/android/camera/ComboPreferences;)V

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/PhotoUI;->onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    .line 1514
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_hdr_plus_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0371

    .line 1516
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1515
    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 1518
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraSettings()V

    .line 1519
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 1520
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetManual3ASettings()V

    .line 1521
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetMiscSettings()V

    .line 1522
    return-void
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "whiteBalance"    # Ljava/lang/String;
    .param p3, "focusMode"    # Ljava/lang/String;
    .param p4, "exposureMode"    # Ljava/lang/String;
    .param p5, "touchMode"    # Ljava/lang/String;
    .param p6, "autoExposure"    # Ljava/lang/String;
    .param p7, "saturation"    # Ljava/lang/String;
    .param p8, "contrast"    # Ljava/lang/String;
    .param p9, "sharpness"    # Ljava/lang/String;
    .param p10, "coloreffect"    # Ljava/lang/String;
    .param p11, "sceneMode"    # Ljava/lang/String;
    .param p12, "redeyeReduction"    # Ljava/lang/String;
    .param p13, "aeBracketing"    # Ljava/lang/String;

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_exposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_touchafaec_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p5, v1, v2

    const/16 v2, 0xa

    const-string v3, "pref_camera_autoexposure_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object p6, v1, v2

    const/16 v2, 0xc

    const-string v3, "pref_camera_saturation_key"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object p7, v1, v2

    const/16 v2, 0xe

    const-string v3, "pref_camera_contrast_key"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object p8, v1, v2

    const/16 v2, 0x10

    const-string v3, "pref_camera_sharpness_key"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object p9, v1, v2

    const/16 v2, 0x12

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object p10, v1, v2

    const/16 v2, 0x14

    const-string v3, "pref_camera_scenemode_key"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    aput-object p11, v1, v2

    const/16 v2, 0x16

    const-string v3, "pref_camera_redeyereduction_key"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    aput-object p12, v1, v2

    const/16 v2, 0x18

    const-string v3, "pref_camera_ae_bracket_hdr_key"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object p13, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3692
    return-void
.end method

.method private qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ubiFocus"    # Ljava/lang/String;
    .param p2, "chromaFlash"    # Ljava/lang/String;
    .param p3, "reFocus"    # Ljava/lang/String;
    .param p4, "optiZoom"    # Ljava/lang/String;
    .param p5, "fssr"    # Ljava/lang/String;
    .param p6, "truePortrait"    # Ljava/lang/String;
    .param p7, "multiTouchFocus"    # Ljava/lang/String;
    .param p8, "stillMore"    # Ljava/lang/String;

    .prologue
    .line 4984
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4985
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedAFBracketingModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4984
    invoke-static {p1, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4986
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "af-bracket"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4988
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4989
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedChromaFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4988
    invoke-static {p2, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4990
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "chroma-flash"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4993
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedOptiZoomModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4992
    invoke-static {p4, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4994
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "opti-zoom"

    invoke-virtual {v0, v1, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4996
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4997
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedRefocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4996
    invoke-static {p3, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4998
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "re-focus"

    invoke-virtual {v0, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5001
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedFSSRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 5000
    invoke-static {p5, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5002
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "FSSR"

    invoke-virtual {v0, v1, p5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5004
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5005
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedTruePortraitModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 5004
    invoke-static {p6, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5006
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "true-portrait"

    invoke-virtual {v0, v1, p6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5008
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5009
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedMultiTouchFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 5008
    invoke-static {p7, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5010
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "multi-touch-focus"

    invoke-virtual {v0, v1, p7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5012
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5013
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedStillMoreModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 5012
    invoke-static {p8, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "still-more"

    invoke-virtual {v0, v1, p8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5016
    :cond_7
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 64

    .prologue
    .line 5022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "luma-adaptation"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0200

    .line 5026
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5024
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 5027
    .local v46, "longshot_enable":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, v46

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0047

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 5031
    .local v47, "optizoomOn":Ljava/lang/String;
    const-string v3, "auto"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "hdr"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5032
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sports"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5034
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "flowers"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5035
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->proSceneMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5036
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5038
    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 5040
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_touchafaec_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0115

    .line 5042
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5040
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 5043
    .local v62, "touchAfAec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5044
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5043
    move-object/from16 v0, v62

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5045
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 5046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v62

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5053
    .end local v62    # "touchAfAec":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, "hdr"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0372

    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0371

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5060
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 5061
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5071
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_pictureformat_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0147

    .line 5073
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5071
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 5076
    .local v49, "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_3

    const-string v3, "jpeg"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5077
    const-string v49, "jpeg"

    .line 5078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v35

    .line 5079
    .local v35, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_pictureformat_key"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0190

    .line 5080
    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5079
    move-object/from16 v0, v35

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5081
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5083
    .end local v35    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Picture format value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v49

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "picture-format"

    move-object/from16 v0, v49

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_jpegquality_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0146

    .line 5089
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5087
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 5091
    .local v45, "jpegQuality":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v48

    .line 5092
    .local v48, "pic_size":Landroid/hardware/Camera$Size;
    if-nez v48, :cond_2a

    .line 5093
    const-string v3, "CAM_PhotoModule"

    const-string v12, "error getPictureSize: size is null"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_selectablezoneaf_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e002b

    .line 5128
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5126
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 5129
    .local v54, "selectableZoneAf":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v59

    .line 5130
    .local v59, "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5131
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5130
    move-object/from16 v0, v54

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSelectableZoneAf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5136
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_denoise_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00e8

    .line 5138
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5137
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 5139
    .local v21, "Denoise":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5142
    .end local v21    # "Denoise":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_redeyereduction_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00a6

    .line 5144
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5142
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 5145
    .local v51, "redeyeReduction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5146
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedRedeyeReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5145
    move-object/from16 v0, v51

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setRedeyeReductionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5150
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_8

    .line 5151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_iso_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00eb

    .line 5153
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5151
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 5154
    .local v43, "iso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5155
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5154
    move-object/from16 v0, v43

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5160
    .end local v43    # "iso":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_coloreffect_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0101

    .line 5162
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5160
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 5163
    .local v31, "colorEffect":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Color effect value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 5169
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_saturation_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0144

    .line 5171
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5169
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 5172
    .local v53, "saturationStr":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v52

    .line 5173
    .local v52, "saturation":I
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Saturation value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v52

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    if-ltz v52, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    move/from16 v0, v52

    if-gt v0, v3, :cond_a

    .line 5175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, v52

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 5178
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_contrast_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0142

    .line 5180
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5178
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 5181
    .local v33, "contrastStr":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 5182
    .local v32, "contrast":I
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Contrast value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5183
    if-ltz v32, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    move/from16 v0, v32

    if-gt v0, v3, :cond_b

    .line 5184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, v32

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setContrast(Landroid/hardware/Camera$Parameters;I)V

    .line 5187
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_sharpness_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0140

    .line 5189
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5187
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 5190
    .local v56, "sharpnessStr":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5191
    invoke-static {v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v12

    div-int/lit8 v12, v12, 0x6

    mul-int v55, v3, v12

    .line 5192
    .local v55, "sharpness":I
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sharpness value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v55

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    if-ltz v55, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    move/from16 v0, v55

    if-gt v0, v3, :cond_c

    .line 5194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, v55

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSharpness(Landroid/hardware/Camera$Parameters;I)V

    .line 5197
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_facerc_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0120

    .line 5199
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5197
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 5200
    .local v38, "faceRC":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Face Recognition value = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5202
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedFaceRecognitionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5201
    move-object/from16 v0, v38

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "face-recognition"

    move-object/from16 v0, v38

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5206
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_ae_bracket_hdr_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00be

    .line 5208
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5206
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 5209
    .local v23, "aeBracketing":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AE Bracketing value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_camera_cds_mode_key"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v15, 0x3

    if-ne v3, v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0089

    .line 5222
    invoke-virtual {v3, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5218
    :goto_3
    invoke-virtual {v12, v14, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 5225
    .local v30, "cds":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    if-nez v3, :cond_e

    if-eqz v30, :cond_e

    .line 5226
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    .line 5228
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5229
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedCDSModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5228
    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "cds-mode"

    move-object/from16 v0, v30

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5234
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_tnr_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e009c

    .line 5236
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5234
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 5237
    .local v61, "tnr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5238
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedTNRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5237
    move-object/from16 v0, v61

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 5239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e008e

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 5241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "cds-mode"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0083

    .line 5242
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5241
    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$14;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$14;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5250
    if-eqz v30, :cond_10

    .line 5251
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    .line 5253
    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    .line 5265
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "tnr-mode"

    move-object/from16 v0, v61

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_hdr_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e020b

    .line 5271
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5269
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5272
    .local v39, "hdrMode":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HDR Mode value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_hdr_need_1x_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0211

    .line 5283
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5281
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 5284
    .local v40, "hdrNeed1x":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HDR need 1x value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5286
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedHDRNeed1x(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5285
    move-object/from16 v0, v40

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "hdr-need-1x"

    move-object/from16 v0, v40

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5291
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0035

    .line 5293
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5291
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5294
    .local v4, "advancedFeature":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " advancedFeature value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    .line 5297
    if-eqz v4, :cond_14

    .line 5298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004c

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 5300
    .local v13, "ubiFocusOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004e

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5302
    .local v5, "chromaFlashOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004f

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5304
    .local v7, "optiZoomOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004d

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5306
    .local v6, "reFocusOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0050

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5308
    .local v8, "fssrOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0051

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5310
    .local v9, "truePortraitOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0052

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5312
    .local v10, "multiTouchFocusOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0053

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5315
    .local v11, "stillMoreOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0041

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object/from16 v3, p0

    .line 5317
    invoke-direct/range {v3 .. v11}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5408
    .end local v5    # "chromaFlashOff":Ljava/lang/String;
    .end local v6    # "reFocusOff":Ljava/lang/String;
    .end local v7    # "optiZoomOff":Ljava/lang/String;
    .end local v8    # "fssrOff":Ljava/lang/String;
    .end local v9    # "truePortraitOff":Ljava/lang/String;
    .end local v10    # "multiTouchFocusOff":Ljava/lang/String;
    .end local v11    # "stillMoreOff":Ljava/lang/String;
    .end local v13    # "ubiFocusOff":Ljava/lang/String;
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0049

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5409
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 5411
    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5412
    invoke-static {v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v12

    .line 5411
    invoke-static {v3, v12}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$16;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$16;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5423
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-nez v3, :cond_15

    .line 5424
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 5425
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 5457
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_autoexposure_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e000a

    .line 5459
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5457
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 5460
    .local v25, "autoExposure":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoExposure value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5462
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5461
    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 5463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5467
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_antibanding_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00fc

    .line 5469
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5467
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5470
    .local v24, "antiBanding":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "antiBanding value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 5475
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e002a

    .line 5476
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5475
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 5477
    .local v63, "zsl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_auto_hdr_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e03dc

    .line 5478
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5477
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 5479
    .local v26, "auto_hdr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isAutoHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto-hdr-enable"

    move-object/from16 v0, v26

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5481
    const-string v3, "enable"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 5482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$18;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$18;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "asd"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v3, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 5503
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5504
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedZSLModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 5506
    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    .line 5507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 5508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 5511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "picture-format"

    const-string v14, "jpeg"

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5514
    const-string v3, "continuous-picture"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5515
    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 5514
    invoke-static {v3, v12}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 5515
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v3

    if-nez v3, :cond_39

    .line 5516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const-string v12, "continuous-picture"

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "continuous-picture"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5526
    :goto_8
    const-string v3, "jpeg"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 5527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$20;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$20;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5545
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_instant_capture_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0072

    .line 5547
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5545
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 5549
    .local v42, "instantCapture":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0075

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 5551
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0040

    .line 5552
    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 5553
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    if-nez v3, :cond_1a

    .line 5555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0075

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 5572
    :cond_1a
    :goto_a
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Instant capture = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", mInstantCaptureSnapShot = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "instant-capture"

    move-object/from16 v0, v42

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_histogram_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e01db

    .line 5579
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5577
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 5580
    .local v41, "histogram":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5581
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHistogramModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5580
    move-object/from16 v0, v41

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_1b

    .line 5583
    const-string v3, "enable"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 5584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$22;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$22;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-interface {v3, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 5593
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 5606
    :cond_1b
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFlipValue()V

    .line 5609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "ae-bracket-hdr"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 5610
    .local v22, "aeBracket":Ljava/lang/String;
    if-eqz v22, :cond_1c

    const-string v3, "off"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5611
    const-string v36, "off"

    .line 5612
    .local v36, "fMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5615
    .end local v36    # "fMode":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "continuous-picture"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 5616
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 5617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->clearFocus()V

    .line 5620
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_camera_bokeh_mode_key"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v15, 0x3

    if-ne v3, v15, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02e2

    .line 5625
    invoke-virtual {v3, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5620
    :goto_c
    invoke-virtual {v12, v14, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5628
    .local v28, "bokehMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_bokeh_mpo_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02e4

    .line 5630
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5628
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 5631
    .local v29, "bokehMpo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v50

    .line 5632
    .local v50, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_camera_bokeh_blur_degree_key"

    const/16 v12, 0x32

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 5633
    .local v27, "bokehBlurDegree":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isBokehModeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v60

    .line 5634
    .local v60, "supportBokeh":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$24;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$24;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02e3

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 5645
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 5646
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 5647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "on"

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5649
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "auto"

    if-eq v3, v12, :cond_1f

    .line 5650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5652
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "off"

    if-eq v3, v12, :cond_20

    .line 5653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "off"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5655
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0372

    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0371

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5658
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-eqz v3, :cond_22

    .line 5659
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5664
    :cond_22
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "bokeh-mode"

    move-object/from16 v0, v28

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "bokeh-mpo-mode"

    move-object/from16 v0, v29

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "bokeh-blur-value"

    move/from16 v0, v27

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_asus_single_bokeh_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02de

    .line 5671
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5669
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 5673
    .local v58, "singleBokehMode":Ljava/lang/String;
    const-string v3, "pref_asus_single_bokeh_blur_degree_key"

    const/16 v12, 0x32

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v57

    .line 5683
    .local v57, "singleBokehBlurDegree":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02e3

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 5686
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    .line 5688
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 5689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "on"

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5691
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "auto"

    if-eq v3, v12, :cond_24

    .line 5692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5694
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "off"

    if-eq v3, v12, :cond_25

    .line 5695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "off"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5697
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0372

    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0371

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5700
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-eqz v3, :cond_27

    .line 5701
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5708
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "asus_bokeh"

    move-object/from16 v0, v58

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "asus_bokeh_value"

    move/from16 v0, v57

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5711
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bokeh Mode = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " bokehMpo = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " bokehBlurDegree = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    return-void

    .line 5049
    .end local v4    # "advancedFeature":Ljava/lang/String;
    .end local v22    # "aeBracket":Ljava/lang/String;
    .end local v23    # "aeBracketing":Ljava/lang/String;
    .end local v24    # "antiBanding":Ljava/lang/String;
    .end local v25    # "autoExposure":Ljava/lang/String;
    .end local v26    # "auto_hdr":Ljava/lang/String;
    .end local v27    # "bokehBlurDegree":I
    .end local v28    # "bokehMode":Ljava/lang/String;
    .end local v29    # "bokehMpo":Ljava/lang/String;
    .end local v30    # "cds":Ljava/lang/String;
    .end local v31    # "colorEffect":Ljava/lang/String;
    .end local v32    # "contrast":I
    .end local v33    # "contrastStr":Ljava/lang/String;
    .end local v38    # "faceRC":Ljava/lang/String;
    .end local v39    # "hdrMode":Ljava/lang/String;
    .end local v40    # "hdrNeed1x":Ljava/lang/String;
    .end local v41    # "histogram":Ljava/lang/String;
    .end local v42    # "instantCapture":Ljava/lang/String;
    .end local v45    # "jpegQuality":Ljava/lang/String;
    .end local v48    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v49    # "pictureFormat":Ljava/lang/String;
    .end local v50    # "prefs":Landroid/content/SharedPreferences;
    .end local v51    # "redeyeReduction":Ljava/lang/String;
    .end local v52    # "saturation":I
    .end local v53    # "saturationStr":Ljava/lang/String;
    .end local v54    # "selectableZoneAf":Ljava/lang/String;
    .end local v55    # "sharpness":I
    .end local v56    # "sharpnessStr":Ljava/lang/String;
    .end local v57    # "singleBokehBlurDegree":I
    .end local v58    # "singleBokehMode":Ljava/lang/String;
    .end local v59    # "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v60    # "supportBokeh":Z
    .end local v61    # "tnr":Ljava/lang/String;
    .end local v63    # "zsl":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    goto/16 :goto_0

    .line 5063
    :cond_29
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 5064
    :catch_0
    move-exception v34

    .line 5065
    .local v34, "e":Ljava/lang/Exception;
    const-string v3, "CAM_PhotoModule"

    const-string v12, "Handled NULL pointer Exception"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5096
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v45    # "jpegQuality":Ljava/lang/String;
    .restart local v48    # "pic_size":Landroid/hardware/Camera$Size;
    .restart local v49    # "pictureFormat":Ljava/lang/String;
    :cond_2a
    const-string v3, "100"

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object/from16 v0, v48

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v12, 0xc80

    if-lt v3, v12, :cond_2b

    .line 5098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/PhotoModule$11;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 5105
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/PhotoModule$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static/range {v45 .. v45}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 5112
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoModule;->estimateJpegFileSize(Landroid/hardware/Camera$Size;Ljava/lang/String;)I

    move-result v44

    .line 5113
    .local v44, "jpegFileSize":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    move/from16 v0, v44

    if-eq v0, v3, :cond_4

    .line 5114
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    .line 5115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/PhotoModule$13;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 5222
    .end local v44    # "jpegFileSize":I
    .restart local v23    # "aeBracketing":Ljava/lang/String;
    .restart local v31    # "colorEffect":Ljava/lang/String;
    .restart local v32    # "contrast":I
    .restart local v33    # "contrastStr":Ljava/lang/String;
    .restart local v38    # "faceRC":Ljava/lang/String;
    .restart local v51    # "redeyeReduction":Ljava/lang/String;
    .restart local v52    # "saturation":I
    .restart local v53    # "saturationStr":Ljava/lang/String;
    .restart local v54    # "selectableZoneAf":Ljava/lang/String;
    .restart local v55    # "sharpness":I
    .restart local v56    # "sharpnessStr":Ljava/lang/String;
    .restart local v59    # "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0098

    .line 5223
    invoke-virtual {v3, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 5254
    .restart local v30    # "cds":Ljava/lang/String;
    .restart local v61    # "tnr":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    if-eqz v3, :cond_11

    .line 5255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "cds-mode"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$15;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5263
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    goto/16 :goto_4

    .line 5325
    .restart local v4    # "advancedFeature":Ljava/lang/String;
    .restart local v5    # "chromaFlashOff":Ljava/lang/String;
    .restart local v6    # "reFocusOff":Ljava/lang/String;
    .restart local v7    # "optiZoomOff":Ljava/lang/String;
    .restart local v8    # "fssrOff":Ljava/lang/String;
    .restart local v9    # "truePortraitOff":Ljava/lang/String;
    .restart local v10    # "multiTouchFocusOff":Ljava/lang/String;
    .restart local v11    # "stillMoreOff":Ljava/lang/String;
    .restart local v13    # "ubiFocusOff":Ljava/lang/String;
    .restart local v39    # "hdrMode":Ljava/lang/String;
    .restart local v40    # "hdrNeed1x":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0046

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object/from16 v12, p0

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 5327
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5335
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0042

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 5337
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5345
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    goto/16 :goto_5

    .line 5346
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0047

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 5348
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5356
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0048

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 5358
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5366
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0049

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 5368
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5376
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004a

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v4

    move-object/from16 v20, v11

    .line 5378
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5386
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004b

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v4

    .line 5388
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_35
    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 5397
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5431
    .end local v5    # "chromaFlashOff":Ljava/lang/String;
    .end local v6    # "reFocusOff":Ljava/lang/String;
    .end local v7    # "optiZoomOff":Ljava/lang/String;
    .end local v8    # "fssrOff":Ljava/lang/String;
    .end local v9    # "truePortraitOff":Ljava/lang/String;
    .end local v10    # "multiTouchFocusOff":Ljava/lang/String;
    .end local v11    # "stillMoreOff":Ljava/lang/String;
    .end local v13    # "ubiFocusOff":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$17;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$17;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_facedetection_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e009e

    .line 5440
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5438
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 5442
    .local v37, "faceDetection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5443
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 5442
    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5445
    const-string v3, "on"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-nez v3, :cond_37

    .line 5446
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 5447
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 5449
    :cond_37
    const-string v3, "off"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    const/4 v12, 0x1

    if-ne v3, v12, :cond_15

    .line 5450
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 5451
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_6

    .line 5493
    .end local v37    # "faceDetection":Ljava/lang/String;
    .restart local v24    # "antiBanding":Ljava/lang/String;
    .restart local v25    # "autoExposure":Ljava/lang/String;
    .restart local v26    # "auto_hdr":Ljava/lang/String;
    .restart local v63    # "zsl":Ljava/lang/String;
    :cond_38
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 5494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$19;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$19;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 5518
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 5519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v12}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5523
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v12}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5534
    :cond_3b
    const-string v3, "off"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5535
    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    .line 5536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 5537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 5538
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_19

    .line 5539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v12}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 5559
    .restart local v42    # "instantCapture":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "instant-capture"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0075

    .line 5560
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5559
    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0075

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 5563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$21;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$21;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 5595
    .restart local v41    # "histogram":Ljava/lang/String;
    :cond_3d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 5596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$23;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$23;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    goto/16 :goto_b

    .line 5625
    .restart local v22    # "aeBracket":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02de

    .line 5626
    invoke-virtual {v3, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    .line 5662
    .restart local v27    # "bokehBlurDegree":I
    .restart local v28    # "bokehMode":Ljava/lang/String;
    .restart local v29    # "bokehMpo":Ljava/lang/String;
    .restart local v50    # "prefs":Landroid/content/SharedPreferences;
    .restart local v60    # "supportBokeh":Z
    :cond_3f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    goto/16 :goto_d

    .line 5705
    .restart local v57    # "singleBokehBlurDegree":I
    .restart local v58    # "singleBokehMode":Ljava/lang/String;
    :cond_40
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    goto/16 :goto_e
.end method

.method private registerMediaButtonReceiver()V
    .locals 3

    .prologue
    .line 7349
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7350
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mMediaReceiverHasRegister:Z

    .line 7352
    return-void
.end method

.method private removeIdleHandler()V
    .locals 2

    .prologue
    .line 1714
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v1, :cond_0

    .line 1715
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1716
    .local v0, "queue":Landroid/os/MessageQueue;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1719
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 1541
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1543
    .local v1, "value":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1544
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1545
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1548
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetManual3ASettings()V
    .locals 8

    .prologue
    .line 1551
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0059

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "manualExposureDefault":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_manual_exp_key"

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "manualExposureMode":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1556
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_exp_key"

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V

    .line 1560
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e006a

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "manualFocusDefault":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_manual_focus_key"

    invoke-virtual {v6, v7, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1564
    .local v3, "manualFocusMode":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1565
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_focus_key"

    invoke-virtual {v6, v7, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V

    .line 1569
    :cond_1
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0062

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1571
    .local v4, "manualWBDefault":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_manual_wb_key"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1573
    .local v5, "manualWBMode":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1574
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_wb_key"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V

    .line 1578
    :cond_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 1579
    return-void
.end method

.method private resetMiscSettings()V
    .locals 4

    .prologue
    .line 1582
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDisableQcomMiscSetting()Z

    move-result v0

    .line 1583
    .local v0, "disableQcomMiscSetting":Z
    if-eqz v0, :cond_0

    .line 1584
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_zsl_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_facedetection_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_touchafaec_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_focusmode_key"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_flashmode_key"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_denoise_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DENOISE_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1597
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 6942
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6943
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6944
    return-void
.end method

.method private savePPPic([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 7648
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    if-nez v0, :cond_0

    .line 7649
    const-string v0, "CAM_PhotoModule"

    const-string v1, "thread is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7657
    :goto_0
    return-void

    .line 7652
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule$SavingThread;->setYUVData([B)V

    .line 7653
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    if-eqz v0, :cond_1

    .line 7654
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule$SavingThread;->setExif(Lcom/android/camera/exif/ExifInterface;)V

    .line 7656
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SavingThread;->start()V

    goto :goto_0
.end method

.method private saveToDebugUri([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 7088
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 7089
    const/4 v1, 0x0

    .line 7091
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 7092
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 7093
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7097
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 7100
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 7094
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 7095
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7097
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5779
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 5780
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5782
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5786
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 5787
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5789
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 9
    .param p1, "updateSet"    # I

    .prologue
    .line 6229
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v4, :cond_0

    .line 6274
    :goto_0
    return-void

    .line 6232
    :cond_0
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v5

    .line 6233
    const/4 v0, 0x0

    .line 6235
    .local v0, "doModeSwitch":Z
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    .line 6236
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 6239
    :cond_1
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2

    .line 6240
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 6243
    :cond_2
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_3

    .line 6244
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()Z

    move-result v0

    .line 6251
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0372

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6252
    .local v3, "lonValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_hdr_key"

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e03dc

    .line 6253
    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6252
    invoke-virtual {v4, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6254
    .local v1, "lhdr":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 6255
    .local v2, "lhdrOn":Z
    if-nez v2, :cond_4

    .line 6256
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    .line 6257
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "hdr_is_applied"

    const-string v7, "disable"

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6260
    :cond_4
    sget-object v4, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v6, "ZQL1820"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6261
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "capture-burst-retroactive"

    const-string v7, "8"

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6267
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6270
    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_6

    .line 6271
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6273
    :cond_6
    monitor-exit v5

    goto :goto_0

    .end local v1    # "lhdr":Ljava/lang/String;
    .end local v2    # "lhdrOn":Z
    .end local v3    # "lonValue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6262
    .restart local v1    # "lhdr":Ljava/lang/String;
    .restart local v2    # "lhdrOn":Z
    .restart local v3    # "lonValue":Ljava/lang/String;
    :cond_7
    :try_start_1
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 6263
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "capture-burst-retroactive"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 6279
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 6280
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 6283
    iput v2, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 6303
    :cond_0
    :goto_0
    return-void

    .line 6285
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6286
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 6287
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_2

    .line 6288
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Restarting Preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6289
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 6290
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 6291
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 6292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 6294
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 6295
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraSettings()V

    .line 6296
    iput v2, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 6298
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6299
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2879
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 2880
    packed-switch p1, :pswitch_data_0

    .line 2891
    :goto_0
    :pswitch_0
    return-void

    .line 2885
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 2888
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 2880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDefaultFilterEffect()V
    .locals 4

    .prologue
    .line 7270
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 7271
    :cond_0
    const-string v2, "CAM_PhotoModule"

    const-string v3, "[setDefaultFilterEffect] error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7282
    :goto_0
    return-void

    .line 7274
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0101

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7275
    .local v0, "defaultEffect":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_coloreffect_key"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 7276
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 7278
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 7279
    const-string v2, "CAM_PhotoModule"

    const-string v3, "[setDefaultFilterEffect]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7280
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7281
    .local v1, "filter_mode_switcher":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 4796
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 4797
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 4800
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 4801
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setDisplayOrientation(I)V

    .line 4803
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 4804
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 4807
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 4808
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 4810
    :cond_2
    return-void
.end method

.method private setFlipValue()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 5740
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPreviewFlip()I

    move-result v3

    .line 5741
    .local v3, "preview_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getVideoFlip()I

    move-result v6

    .line 5742
    .local v6, "video_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPictureFlip()I

    move-result v1

    .line 5743
    .local v1, "picture_flip_value":I
    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v8, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v7, v8}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v4

    .line 5744
    .local v4, "rotation":I
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 5745
    const/16 v7, 0x5a

    if-eq v4, v7, :cond_0

    const/16 v7, 0x10e

    if-ne v4, v7, :cond_3

    .line 5747
    :cond_0
    if-ne v3, v9, :cond_7

    .line 5748
    const/4 v3, 0x2

    .line 5752
    :cond_1
    :goto_0
    if-ne v6, v9, :cond_8

    .line 5753
    const/4 v6, 0x2

    .line 5757
    :cond_2
    :goto_1
    if-ne v1, v9, :cond_9

    .line 5758
    const/4 v1, 0x2

    .line 5763
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v2

    .line 5764
    .local v2, "preview_flip":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v5

    .line 5765
    .local v5, "video_flip":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 5766
    .local v0, "picture_flip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5767
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "preview-flip"

    invoke-virtual {v7, v8, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5769
    :cond_4
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5770
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "video-flip"

    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5772
    :cond_5
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5773
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "snapshot-picture-flip"

    invoke-virtual {v7, v8, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5775
    :cond_6
    return-void

    .line 5749
    .end local v0    # "picture_flip":Ljava/lang/String;
    .end local v2    # "preview_flip":Ljava/lang/String;
    .end local v5    # "video_flip":Ljava/lang/String;
    :cond_7
    if-ne v3, v10, :cond_1

    .line 5750
    const/4 v3, 0x1

    goto :goto_0

    .line 5754
    :cond_8
    if-ne v6, v10, :cond_2

    .line 5755
    const/4 v6, 0x1

    goto :goto_1

    .line 5759
    :cond_9
    if-ne v1, v10, :cond_3

    .line 5760
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 5792
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5793
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 5795
    :cond_0
    return-void
.end method

.method private setHDRParam([[I[I)V
    .locals 10
    .param p1, "hdr_params_table"    # [[I
    .param p2, "iso_table"    # [I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7448
    const/16 v2, 0x19

    .line 7449
    .local v2, "toneLength":I
    const/4 v0, 0x0

    .line 7450
    .local v0, "brightness":I
    const/4 v3, 0x0

    .line 7453
    .local v3, "toneSaturation":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 7454
    iget v4, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    aget v5, p2, v1

    if-lt v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    add-int/lit8 v5, v1, 0x1

    aget v5, p2, v5

    if-ge v4, v5, :cond_0

    .line 7455
    aget-object v4, p1, v1

    aget v2, v4, v8

    .line 7456
    aget-object v4, p1, v1

    aget v0, v4, v7

    .line 7457
    aget-object v4, p1, v1

    aget v3, v4, v9

    .line 7453
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7460
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v4, :cond_2

    .line 7461
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHDRParam  -> mNSIso = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", toneLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", toneSaturation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7462
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v2, v5, v8

    aput v0, v5, v7

    aput v3, v5, v9

    invoke-virtual {v4, v7, v5}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 7464
    :cond_2
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    .line 1396
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1400
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1403
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .prologue
    .line 5798
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5799
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 5801
    :cond_0
    return-void
.end method

.method private setNSParam(I[I[[I)V
    .locals 15
    .param p1, "lux"    # I
    .param p2, "lux_table"    # [I
    .param p3, "ns_params_table"    # [[I

    .prologue
    .line 7519
    const/4 v2, 0x5

    .line 7520
    .local v2, "intensity":I
    const/4 v4, 0x0

    .line 7521
    .local v4, "light":I
    const/16 v6, 0x20

    .line 7522
    .local v6, "saturation":I
    const/4 v8, 0x0

    .line 7523
    .local v8, "sharpness":I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 7524
    .local v10, "size":I
    const/4 v11, 0x0

    aget v11, p2, v11

    move/from16 v0, p1

    if-ge v0, v11, :cond_2

    .line 7525
    const/4 v2, 0x1

    .line 7526
    const/16 v4, 0xa

    .line 7527
    const/16 v6, 0x20

    .line 7528
    const/4 v8, 0x1

    .line 7532
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-ge v1, v11, :cond_3

    .line 7533
    aget v11, p2, v1

    move/from16 v0, p1

    if-lt v0, v11, :cond_1

    add-int/lit8 v11, v1, 0x1

    aget v11, p2, v11

    move/from16 v0, p1

    if-ge v0, v11, :cond_1

    .line 7534
    aget-object v11, p3, v1

    const/4 v12, 0x0

    aget v2, v11, v12

    .line 7535
    aget-object v11, p3, v1

    const/4 v12, 0x1

    aget v4, v11, v12

    .line 7536
    aget-object v11, p3, v1

    const/4 v12, 0x2

    aget v6, v11, v12

    .line 7537
    aget-object v11, p3, v1

    const/4 v12, 0x3

    aget v8, v11, v12

    .line 7532
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7529
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v11, v10, -0x1

    aget v11, p2, v11

    move/from16 v0, p1

    if-le v0, v11, :cond_0

    .line 7530
    const/4 v4, 0x0

    goto :goto_0

    .line 7540
    .restart local v1    # "i":I
    :cond_3
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 7541
    const-string v11, "sys.nightshot.intensity"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7542
    .local v3, "intensityTmp":I
    const-string v11, "sys.nightshot.light"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 7543
    .local v5, "lightTmp":I
    const-string v11, "sys.nightshot.saturation"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 7544
    .local v7, "saturationTmp":I
    const-string v11, "sys.nightshot.sharpness"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 7545
    .local v9, "sharpnessTmp":I
    if-eqz v3, :cond_4

    .line 7546
    move v2, v3

    .line 7548
    :cond_4
    if-eqz v5, :cond_5

    .line 7549
    move v4, v5

    .line 7551
    :cond_5
    if-eqz v7, :cond_6

    .line 7552
    move v6, v7

    .line 7554
    :cond_6
    if-eqz v9, :cond_7

    .line 7555
    move v8, v9

    .line 7559
    .end local v3    # "intensityTmp":I
    .end local v5    # "lightTmp":I
    .end local v7    # "saturationTmp":I
    .end local v9    # "sharpnessTmp":I
    :cond_7
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v11, :cond_8

    .line 7560
    const-string v11, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setNSParam  -> current lux index"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", intensity = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", light = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", saturation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sharpness = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7561
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v12, 0x2

    const/4 v13, 0x4

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v2, v13, v14

    const/4 v14, 0x1

    aput v4, v13, v14

    const/4 v14, 0x2

    aput v6, v13, v14

    const/4 v14, 0x3

    aput v8, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 7563
    :cond_8
    return-void
.end method

.method private setNSParam_new(I[I[[I)V
    .locals 15
    .param p1, "lux"    # I
    .param p2, "lux_table"    # [I
    .param p3, "ns_params_table"    # [[I

    .prologue
    .line 7468
    const/4 v2, 0x5

    .line 7469
    .local v2, "intensity":I
    const/4 v4, 0x0

    .line 7470
    .local v4, "light":I
    const/16 v6, 0x20

    .line 7471
    .local v6, "saturation":I
    const/4 v8, 0x1

    .line 7472
    .local v8, "sharpness":I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 7474
    .local v10, "size":I
    iget-boolean v11, p0, Lcom/android/camera/PhotoModule;->mIsoAboveLimited:Z

    if-nez v11, :cond_1

    .line 7475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v11, v0

    add-int/lit8 v11, v11, -0x7

    if-ge v1, v11, :cond_3

    .line 7476
    iget v11, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    aget v12, p2, v1

    if-lt v11, v12, :cond_0

    iget v11, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    if-ge v11, v12, :cond_0

    .line 7477
    aget-object v11, p3, v1

    const/4 v12, 0x0

    aget v2, v11, v12

    .line 7478
    aget-object v11, p3, v1

    const/4 v12, 0x1

    aget v4, v11, v12

    .line 7479
    aget-object v11, p3, v1

    const/4 v12, 0x2

    aget v6, v11, v12

    .line 7480
    aget-object v11, p3, v1

    const/4 v12, 0x3

    aget v8, v11, v12

    .line 7475
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7484
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x6

    .restart local v1    # "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-ge v1, v11, :cond_3

    .line 7485
    aget v11, p2, v1

    move/from16 v0, p1

    if-lt v0, v11, :cond_2

    add-int/lit8 v11, v1, 0x1

    aget v11, p2, v11

    move/from16 v0, p1

    if-ge v0, v11, :cond_2

    .line 7486
    aget-object v11, p3, v1

    const/4 v12, 0x0

    aget v2, v11, v12

    .line 7487
    aget-object v11, p3, v1

    const/4 v12, 0x1

    aget v4, v11, v12

    .line 7488
    aget-object v11, p3, v1

    const/4 v12, 0x2

    aget v6, v11, v12

    .line 7489
    aget-object v11, p3, v1

    const/4 v12, 0x3

    aget v8, v11, v12

    .line 7484
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7493
    :cond_3
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 7494
    const-string v11, "sys.nightshot.intensity"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7495
    .local v3, "intensityTmp":I
    const-string v11, "sys.nightshot.light"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 7496
    .local v5, "lightTmp":I
    const-string v11, "sys.nightshot.saturation"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 7497
    .local v7, "saturationTmp":I
    const-string v11, "sys.nightshot.sharpness"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 7498
    .local v9, "sharpnessTmp":I
    if-eqz v3, :cond_4

    .line 7499
    move v2, v3

    .line 7501
    :cond_4
    if-eqz v5, :cond_5

    .line 7502
    move v4, v5

    .line 7504
    :cond_5
    if-eqz v7, :cond_6

    .line 7505
    move v6, v7

    .line 7507
    :cond_6
    if-eqz v9, :cond_7

    .line 7508
    move v8, v9

    .line 7512
    .end local v3    # "intensityTmp":I
    .end local v5    # "lightTmp":I
    .end local v7    # "saturationTmp":I
    .end local v9    # "sharpnessTmp":I
    :cond_7
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v11, :cond_8

    .line 7513
    const-string v11, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setNSParam  -> current lux index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",mNSIso = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/PhotoModule;->mNSIso:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", intensity = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", light = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", saturation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sharpness = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7514
    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v12, 0x2

    const/4 v13, 0x4

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v2, v13, v14

    const/4 v14, 0x1

    aput v4, v13, v14

    const/4 v14, 0x2

    aput v6, v13, v14

    const/4 v14, 0x3

    aput v8, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 7516
    :cond_8
    return-void
.end method

.method private setNSParamsDebug()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 7582
    const-string v4, "sys.nightshot.intensity"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7583
    .local v0, "intensity":I
    const-string v4, "sys.nightshot.light"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7584
    .local v1, "light":I
    const-string v4, "sys.nightshot.saturation"

    const/16 v5, 0x20

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 7585
    .local v2, "saturation":I
    const-string v4, "sys.nightshot.sharpness"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7586
    .local v3, "sharpness":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v4, :cond_0

    .line 7587
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    aput v2, v5, v7

    const/4 v6, 0x3

    aput v3, v5, v6

    invoke-virtual {v4, v7, v5}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 7589
    :cond_0
    return-void
.end method

.method private setPreviewCallback()V
    .locals 2

    .prologue
    .line 7852
    const-string v0, "CAM_PhotoModule"

    const-string v1, "setPreviewCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7853
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 7855
    sget-object v0, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v1, "ZQL1820"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7856
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cleanPreviewCallbackBuffer()V

    .line 7859
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 7860
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    if-eqz v0, :cond_1

    .line 7861
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 7863
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    if-eqz v0, :cond_2

    .line 7864
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 7867
    :cond_2
    return-void
.end method

.method private setZoomMenuValue()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 5803
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_zoom_key"

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02ec

    .line 5804
    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5803
    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5805
    .local v6, "zoomMenuValue":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 5806
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5807
    .local v8, "zoomValue":I
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v9, v13, :cond_2

    .line 5809
    const-string v9, "CAM_PhotoModule"

    const-string v10, "Update the zoom index table."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    .line 5811
    .local v7, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 5812
    .local v1, "lastZoomIdx":I
    const/4 v4, 0x1

    .local v4, "zoom":I
    :goto_0
    const/16 v9, 0xa

    if-gt v4, v9, :cond_2

    .line 5813
    mul-int/lit8 v9, v4, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 5814
    .local v5, "zoomIdx":I
    if-ne v5, v13, :cond_1

    .line 5815
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find matching zoom value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    const/4 v2, 0x0

    .line 5817
    .local v2, "nextZoom":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    mul-int/lit8 v9, v4, 0x64

    if-ge v2, v9, :cond_0

    .line 5819
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5820
    move v5, v1

    goto :goto_1

    .line 5822
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 5823
    add-int/lit8 v5, v1, -0x1

    .line 5828
    .end local v2    # "nextZoom":I
    :cond_1
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v4, -0x1

    aput v5, v9, v10

    .line 5829
    move v1, v5

    .line 5812
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5833
    .end local v1    # "lastZoomIdx":I
    .end local v4    # "zoom":I
    .end local v5    # "zoomIdx":I
    .end local v7    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    array-length v9, v9

    if-gt v8, v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v9, v13, :cond_6

    .line 5835
    const/4 v3, 0x1

    .line 5836
    .local v3, "step":I
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 5837
    .local v0, "cur_zoom":I
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zoom index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v12, v8, -0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cur index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5838
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-le v0, v9, :cond_3

    .line 5839
    const/4 v3, -0x1

    .line 5843
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v0, v9, :cond_4

    .line 5844
    add-int/2addr v0, v3

    .line 5845
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5847
    const-wide/16 v10, 0x19

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 5848
    :catch_0
    move-exception v9

    goto :goto_2

    .line 5851
    :cond_4
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v11, v8, -0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5856
    .end local v0    # "cur_zoom":I
    .end local v3    # "step":I
    .end local v8    # "zoomValue":I
    :cond_5
    :goto_3
    return-void

    .line 5853
    .restart local v8    # "zoomValue":I
    :cond_6
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Zoom value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not supported!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 6321
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 6322
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 6323
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 6324
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 6326
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 4814
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 4815
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 4816
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6960
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03ef

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 6962
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6963
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6965
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 1691
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    .line 1692
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1696
    :cond_0
    return-void
.end method

.method private startAutoTorch(Z)V
    .locals 5
    .param p1, "lightUp"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7634
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoTorch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7635
    if-ne p1, v4, :cond_0

    .line 7636
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 7637
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7642
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7643
    return-void

    .line 7639
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 7640
    iput v3, p0, Lcom/android/camera/PhotoModule;->mBrightnessAfterLightUp:I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 4821
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    .line 4894
    :cond_0
    :goto_0
    return-void

    .line 4825
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v4

    .line 4826
    const/4 v1, 0x0

    .line 4827
    .local v1, "sh":Landroid/view/SurfaceHolder;
    :try_start_0
    const-string v3, "CAM_PhotoModule"

    const-string v5, "startPreview: SurfaceHolder (MDP path)"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v3, :cond_2

    .line 4829
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 4833
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4834
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4836
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v3, :cond_3

    .line 4837
    const-string v3, "CAM_PhotoModule"

    const-string v4, "startPreview: parameters for preview are not ready."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4834
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4840
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 4841
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4845
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v3, v6, :cond_4

    .line 4846
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 4849
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v3, :cond_5

    .line 4850
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 4853
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 4855
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-eqz v3, :cond_6

    .line 4856
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-interface {v3, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 4878
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 4880
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4882
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 4884
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    if-nez v3, :cond_7

    .line 4887
    const-string v3, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v3, v6, :cond_0

    .line 4888
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 4864
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mNeedFirstPreviewFrame:Z

    .line 4865
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 4866
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4867
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iput v3, p0, Lcom/android/camera/PhotoModule;->mPreviewWidth:I

    .line 4868
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lcom/android/camera/PhotoModule;->mPreviewHeight:I

    .line 4869
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    mul-int/lit8 v0, v3, 0x3

    .line 4870
    .local v0, "pfsize":I
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pfsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4871
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    .line 4872
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 4873
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    .line 4874
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    goto :goto_1

    .line 4891
    .end local v0    # "pfsize":I
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_7
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Trigger snapshot from start preview."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private switchCamera()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1416
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1491
    :goto_0
    return-void

    .line 1418
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v5, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 1419
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to switch camera. id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget v4, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 1421
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1422
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1423
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {p0, v4}, Lcom/android/camera/PhotoModule;->setCameraId(I)V

    .line 1427
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v4, :cond_1

    .line 1428
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 1429
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1432
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v4, :cond_2

    .line 1433
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 1434
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 1448
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCurrentBrightness:I

    .line 1449
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    .line 1450
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    .line 1451
    iput v3, p0, Lcom/android/camera/PhotoModule;->mBrightnessAfterLightUp:I

    .line 1452
    iput v3, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    .line 1453
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 1455
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 1456
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 1457
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1460
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v6, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1461
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v4}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1462
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1464
    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v7

    .line 1462
    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1466
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v4, :cond_4

    .line 1467
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open camera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1470
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1471
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1472
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 1473
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v4, v5

    .line 1474
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 1475
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    invoke-virtual {v2, v4}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 1476
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1477
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 1479
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0321

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1480
    .local v1, "otherSceneType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/PhotoUI;->updateSceneDetectIcon(Ljava/lang/String;)V

    .line 1482
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v4, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v2, v4}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 1484
    iput v3, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1485
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 1486
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 1490
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v1    # "otherSceneType":Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 1474
    goto :goto_2

    .line 1443
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6213
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 6223
    :goto_0
    return-void

    .line 6217
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6218
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    goto :goto_0

    .line 6221
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    .line 4919
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 4920
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 4921
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 4926
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "recording-hint"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "video-stabilization-supported"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4931
    .local v1, "vstabSupported":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4932
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "video-stabilization"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4934
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()Z
    .locals 42

    .prologue
    .line 5860
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 5861
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 5862
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 5863
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 5866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-nez v36, :cond_0

    .line 5867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5872
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_picturesize_key"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 5874
    .local v25, "pictureSize":Ljava/lang/String;
    if-nez v25, :cond_15

    .line 5875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 5891
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v30

    .line 5895
    .local v30, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v31

    .line 5896
    .local v31, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    move-wide/from16 v2, v38

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v22

    .line 5899
    .local v22, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v26

    .line 5900
    .local v26, "previewSize":Landroid/graphics/Point;
    if-eqz v26, :cond_2

    .line 5901
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v22

    iput v0, v1, Landroid/hardware/Camera$Size;->width:I

    .line 5902
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v22

    iput v0, v1, Landroid/hardware/Camera$Size;->height:I

    .line 5905
    :cond_2
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateCameraParametersPreference final preview size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/PhotoUI;->setlocationy(I)V

    .line 5910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v24

    .line 5911
    .local v24, "original":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_3

    .line 5912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v37, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 5914
    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mPreviewWidth:I

    .line 5915
    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mPreviewHeight:I

    .line 5919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v36

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_16

    .line 5921
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 5925
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5926
    const-string v36, "CAM_PhotoModule"

    const-string v37, "Preview Size changed. Restart Preview"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5927
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5930
    :cond_3
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Preview size is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "x"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v30

    .line 5936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v32

    .line 5937
    .local v32, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v36, v36, v38

    move-object/from16 v0, v32

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v22

    .line 5939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v24

    .line 5940
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_4

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v37, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 5944
    :cond_4
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Thumbnail size is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "x"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e0372

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5950
    .local v21, "onValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v38, v0

    const v39, 0x7f0e03dc

    .line 5951
    invoke-virtual/range {v38 .. v39}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 5950
    invoke-virtual/range {v36 .. v38}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5952
    .local v8, "hdr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_hdr_plus_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v38, v0

    const v39, 0x7f0e03dd

    .line 5953
    invoke-virtual/range {v38 .. v39}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 5952
    invoke-virtual/range {v36 .. v38}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5954
    .local v10, "hdrPlus":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 5955
    .local v9, "hdrOn":Z
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 5957
    .local v11, "hdrPlusOn":Z
    const/4 v6, 0x0

    .line 5958
    .local v6, "doGcamModeSwitch":Z
    if-eqz v11, :cond_17

    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v36

    if-eqz v36, :cond_17

    .line 5960
    const/4 v6, 0x1

    .line 5996
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e0042

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 5998
    .local v28, "refocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e0047

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 6000
    .local v23, "optizoomOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 6001
    .local v29, "scenModeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19

    .line 6003
    :try_start_0
    const-string v36, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 6004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v36

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 6005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_advanced_features_key"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/camera/PhotoUI;->showRefocusDialog()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6022
    :cond_6
    :goto_3
    const/16 v27, 0x0

    .line 6023
    .local v27, "proToAuto":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v36

    if-nez v36, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "pro-values"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 6024
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "pro-values"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 6025
    const/16 v27, 0x1

    .line 6026
    const-string v36, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 6029
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_a

    .line 6030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v36

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_9

    .line 6031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_advanced_features_key"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6033
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 6038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6042
    :cond_a
    if-eqz v27, :cond_b

    .line 6043
    const/16 v27, 0x0

    .line 6044
    const-string v36, "pro-values"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 6051
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_1b

    .line 6052
    const/16 v12, 0x5f

    .line 6058
    .local v12, "jpegQuality":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 6064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v34

    .line 6065
    .local v34, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v18

    .line 6066
    .local v18, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v19

    .line 6067
    .local v19, "min":I
    move/from16 v0, v34

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c

    move/from16 v0, v34

    move/from16 v1, v18

    if-gt v0, v1, :cond_1c

    .line 6068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 6073
    :goto_5
    const-string v36, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->proSceneMode:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_21

    .line 6077
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_1d

    .line 6078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v38, v0

    const v39, 0x7f0e039e

    .line 6080
    invoke-virtual/range {v38 .. v39}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 6078
    invoke-virtual/range {v36 .. v38}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6084
    .local v7, "flashMode":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v33

    .line 6085
    .local v33, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v33

    invoke-static {v7, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v36

    if-eqz v36, :cond_1e

    .line 6086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6095
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x2

    if-nez v36, :cond_e

    .line 6096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v38, v0

    const v39, 0x7f0e03a8

    .line 6098
    invoke-virtual/range {v38 .. v39}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 6096
    invoke-virtual/range {v36 .. v38}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 6099
    .local v35, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    .line 6100
    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v36

    .line 6099
    invoke-static/range {v35 .. v36}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v36

    if-eqz v36, :cond_1f

    .line 6101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 6111
    .end local v35    # "whiteBalance":Ljava/lang/String;
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_20

    .line 6112
    const-string v36, "CAM_PhotoModule"

    const-string v37, "Change the focuse mode to infinity"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v36, v0

    const-string v37, "infinity"

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 6114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "infinity"

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 6131
    .end local v7    # "flashMode":Ljava/lang/String;
    .end local v33    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    move/from16 v36, v0

    if-eqz v36, :cond_10

    sget-boolean v36, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v36, :cond_10

    .line 6132
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 6136
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v37, v0

    const-string v38, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v36, v0

    const/16 v39, 0x1

    move/from16 v0, v36

    move/from16 v1, v39

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    move/from16 v36, v0

    if-lez v36, :cond_23

    const-string v36, "On"

    :goto_a
    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    .line 6140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    .line 6141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_tsmakeup_key"

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v15

    check-cast v15, Lcom/android/camera/IconListPreference;

    .line 6142
    .local v15, "mMakeUpPreference":Lcom/android/camera/IconListPreference;
    if-eqz v15, :cond_11

    .line 6144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->proSceneMode:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_24

    .line 6145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e0228

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    .line 6146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoModule;->updateMakeup(Ljava/lang/String;Lcom/android/camera/PreferenceGroup;)V

    .line 6154
    .end local v15    # "mMakeUpPreference":Lcom/android/camera/IconListPreference;
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6155
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateCameraParametersPreference(): TSMakeup tsmakeup value = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v36

    if-nez v36, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "On"

    .line 6157
    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_28

    .line 6158
    const-string v36, "CAM_PhotoModule"

    const-string v37, "set low cost fb on."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "asus_beauty"

    const-string v38, "on"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6160
    const-string v14, ""

    .line 6161
    .local v14, "lowCostWhiten":Ljava/lang/String;
    const-string v13, ""

    .line 6162
    .local v13, "lowCostSoften":Ljava/lang/String;
    sget-object v36, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v37, "ZQL1820"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_26

    .line 6163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e022b

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e022a

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_whiten"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_clean"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6178
    :goto_c
    const/16 v36, 0x1

    sput-boolean v36, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 6185
    .end local v13    # "lowCostSoften":Ljava/lang/String;
    .end local v14    # "lowCostWhiten":Ljava/lang/String;
    :goto_d
    const-string v36, "On"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 6186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_13

    .line 6187
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->initialMakeupseekBar()V

    .line 6189
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    move/from16 v37, v0

    aget-object v5, v36, v37

    .line 6190
    .local v5, "defaultWhiten":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->defaultLevel:I

    move/from16 v37, v0

    aget-object v4, v36, v37

    .line 6191
    .local v4, "defaultSoften":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_tsmakeup_whiten"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 6193
    .local v17, "makeupWhitenValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_tsmakeup_clean"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6195
    .local v16, "makeupCleanValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_whiten"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_clean"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6200
    .end local v4    # "defaultSoften":Ljava/lang/String;
    .end local v5    # "defaultWhiten":Ljava/lang/String;
    .end local v16    # "makeupCleanValue":Ljava/lang/String;
    .end local v17    # "makeupWhitenValue":Ljava/lang/String;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setZoomMenuValue()V

    .line 6203
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->qcomUpdateCameraParametersPreference()V

    .line 6205
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateFrontCameraFlash()V

    .line 6207
    return v6

    .line 5877
    .end local v6    # "doGcamModeSwitch":Z
    .end local v8    # "hdr":Ljava/lang/String;
    .end local v9    # "hdrOn":Z
    .end local v10    # "hdrPlus":Ljava/lang/String;
    .end local v11    # "hdrPlusOn":Z
    .end local v12    # "jpegQuality":I
    .end local v18    # "max":I
    .end local v19    # "min":I
    .end local v21    # "onValue":Ljava/lang/String;
    .end local v22    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v23    # "optizoomOn":Ljava/lang/String;
    .end local v24    # "original":Landroid/hardware/Camera$Size;
    .end local v26    # "previewSize":Landroid/graphics/Point;
    .end local v27    # "proToAuto":Z
    .end local v28    # "refocusOn":Ljava/lang/String;
    .end local v29    # "scenModeStr":Ljava/lang/String;
    .end local v30    # "size":Landroid/hardware/Camera$Size;
    .end local v31    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v32    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v34    # "value":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 5878
    .local v20, "old_size":Landroid/hardware/Camera$Size;
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "old picture_size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " x "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v32

    .line 5880
    .restart local v32    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 5882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v30

    .line 5883
    .restart local v30    # "size":Landroid/hardware/Camera$Size;
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "new picture_size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " x "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    if-eqz v20, :cond_1

    if-eqz v30, :cond_1

    .line 5885
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    move/from16 v36, v0

    if-eqz v36, :cond_1

    .line 5886
    const-string v36, "CAM_PhotoModule"

    const-string v37, "Picture Size changed. Restart Preview"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5887
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    goto/16 :goto_0

    .line 5923
    .end local v20    # "old_size":Landroid/hardware/Camera$Size;
    .end local v32    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v22    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v24    # "original":Landroid/hardware/Camera$Size;
    .restart local v26    # "previewSize":Landroid/graphics/Point;
    .restart local v31    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 5962
    .restart local v6    # "doGcamModeSwitch":Z
    .restart local v8    # "hdr":Ljava/lang/String;
    .restart local v9    # "hdrOn":Z
    .restart local v10    # "hdrPlus":Ljava/lang/String;
    .restart local v11    # "hdrPlusOn":Z
    .restart local v21    # "onValue":Ljava/lang/String;
    .restart local v32    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_17
    if-eqz v9, :cond_18

    .line 5963
    const-string v36, "hdr"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "hdr_is_applied"

    const-string v38, "enable"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "off"

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "ae-bracket-hdr"

    const-string v38, "AE-Bracket"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "capture-burst-exposures"

    const-string v38, "-6, 6, 0"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 5974
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "hdrOn ="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    const-string v36, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    const-string v36, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    .line 5976
    invoke-virtual/range {v37 .. v37}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 5977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "auto"

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "ae-bracket-hdr"

    const-string v38, "Off"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_2

    .line 5986
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v38, v0

    const v39, 0x7f0e03b5

    .line 5988
    invoke-virtual/range {v38 .. v39}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 5986
    invoke-virtual/range {v36 .. v38}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "ae-bracket-hdr"

    const-string v38, "Off"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "capture-burst-exposures"

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6010
    .restart local v23    # "optizoomOn":Ljava/lang/String;
    .restart local v28    # "refocusOn":Ljava/lang/String;
    .restart local v29    # "scenModeStr":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 6012
    :try_start_1
    const-string v36, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 6013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v36

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 6014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v36, v0

    const-string v37, "pref_camera_advanced_features_key"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 6016
    :catch_0
    move-exception v36

    goto/16 :goto_3

    .line 6018
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_6

    .line 6019
    const-string v36, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_3

    .line 6054
    .restart local v27    # "proToAuto":Z
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v36, v0

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v12

    .restart local v12    # "jpegQuality":I
    goto/16 :goto_4

    .line 6070
    .restart local v18    # "max":I
    .restart local v19    # "min":I
    .restart local v34    # "value":I
    :cond_1c
    const-string v36, "CAM_PhotoModule"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "invalid exposure range: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6082
    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .restart local v7    # "flashMode":Ljava/lang/String;
    goto/16 :goto_6

    .line 6088
    .restart local v33    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v7

    .line 6089
    if-nez v7, :cond_d

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e039f

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 6103
    .restart local v35    # "whiteBalance":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v35

    .line 6104
    if-nez v35, :cond_e

    .line 6105
    const-string v36, "auto"

    goto/16 :goto_8

    .line 6115
    .end local v35    # "whiteBalance":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-nez v36, :cond_f

    .line 6116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 6117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6120
    .end local v7    # "flashMode":Ljava/lang/String;
    .end local v33    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 6121
    const-string v36, "off"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    .line 6122
    invoke-virtual/range {v37 .. v37}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v37

    .line 6121
    invoke-static/range {v36 .. v37}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 6123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "off"

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6125
    :cond_22
    const-string v36, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v37, v0

    .line 6126
    invoke-virtual/range {v37 .. v37}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v37

    .line 6125
    invoke-static/range {v36 .. v37}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 6127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "auto"

    invoke-virtual/range {v36 .. v37}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6136
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v39, 0x7f0e0228

    .line 6139
    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_a

    .line 6148
    .restart local v15    # "mMakeUpPreference":Lcom/android/camera/IconListPreference;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->makeupParamValue:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "On"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_25

    const/16 v36, 0x1

    :goto_e
    move/from16 v0, v36

    invoke-virtual {v15, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    goto/16 :goto_b

    :cond_25
    const/16 v36, 0x0

    goto :goto_e

    .line 6167
    .end local v15    # "mMakeUpPreference":Lcom/android/camera/IconListPreference;
    .restart local v13    # "lowCostSoften":Ljava/lang/String;
    .restart local v14    # "lowCostWhiten":Ljava/lang/String;
    :cond_26
    sget-object v36, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v37, "ZQL1830"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_27

    .line 6168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e022d

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e022c

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_whiten"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_clean"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 6173
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e022e

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    const v37, 0x7f0e022e

    invoke-virtual/range {v36 .. v37}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_whiten"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "tsmakeup_clean"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 6180
    .end local v13    # "lowCostSoften":Ljava/lang/String;
    .end local v14    # "lowCostWhiten":Ljava/lang/String;
    :cond_28
    const-string v36, "CAM_PhotoModule"

    const-string v37, "set low cost fb off."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v37, "asus_beauty"

    const-string v38, "off"

    invoke-virtual/range {v36 .. v38}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    const/16 v36, 0x0

    sput-boolean v36, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    goto/16 :goto_d

    .line 6008
    .end local v12    # "jpegQuality":I
    .end local v18    # "max":I
    .end local v19    # "min":I
    .end local v27    # "proToAuto":Z
    .end local v34    # "value":I
    :catch_1
    move-exception v36

    goto/16 :goto_3
.end method

.method private updateCameraParametersZoom()V
    .locals 3

    .prologue
    .line 4938
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4939
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4940
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 4941
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4943
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method private updateCameraSettings()V
    .locals 60

    .prologue
    .line 3316
    const/4 v13, 0x0

    .line 3317
    .local v13, "sceneMode":Ljava/lang/String;
    const/16 v40, 0x0

    .line 3318
    .local v40, "flashMode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3319
    .local v14, "redeyeReduction":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3320
    .local v15, "aeBracketing":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3321
    .local v5, "focusMode":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3322
    .local v12, "colorEffect":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3323
    .local v6, "exposureCompensation":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3324
    .local v7, "touchAfAec":Ljava/lang/String;
    const/16 v39, 0x0

    .line 3326
    .local v39, "disableLongShot":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0041

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 3328
    .local v59, "ubiFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0372

    .line 3329
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 3330
    .local v35, "continuousShotOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0042

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 3332
    .local v51, "reFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0046

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 3334
    .local v33, "chromaFlashOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0047

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 3336
    .local v46, "optiZoomOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 3338
    .local v42, "fssrOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0049

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 3340
    .local v55, "truPortraitOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e004a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 3342
    .local v44, "multiTouchFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "opti-zoom"

    .line 3343
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3344
    .local v45, "optiZoom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "chroma-flash"

    .line 3345
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3346
    .local v32, "chromaFlash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "af-bracket"

    .line 3347
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 3348
    .local v58, "ubiFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "FSSR"

    .line 3349
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 3350
    .local v41, "fssr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "true-portrait"

    .line 3351
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 3352
    .local v56, "truePortrait":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "multi-touch-focus"

    .line 3353
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 3354
    .local v43, "multiTouchFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e004b

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 3356
    .local v54, "stillMoreOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "still-more"

    .line 3357
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 3358
    .local v53, "stillMore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "long-shot"

    .line 3359
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3361
    .local v34, "continuousShot":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v2, :cond_0

    .line 3362
    const/16 v39, 0x1

    .line 3365
    :cond_0
    if-eqz v34, :cond_16

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0190

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 3368
    .local v47, "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v47, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3372
    .end local v47    # "pictureFormat":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "re-focus"

    .line 3373
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 3375
    .local v50, "reFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0190

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 3378
    .restart local v47    # "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v47, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3382
    .end local v47    # "pictureFormat":Ljava/lang/String;
    :goto_1
    if-eqz v43, :cond_1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1
    if-eqz v32, :cond_2

    .line 3383
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_2
    if-eqz v45, :cond_3

    .line 3384
    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    if-eqz v50, :cond_4

    .line 3385
    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    if-eqz v41, :cond_5

    .line 3386
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    if-eqz v56, :cond_6

    .line 3387
    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    if-eqz v53, :cond_a

    .line 3388
    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3389
    :cond_7
    if-eqz v45, :cond_8

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    if-eqz v50, :cond_18

    .line 3390
    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3391
    :cond_9
    const/4 v13, 0x0

    .line 3395
    :goto_2
    const-string v40, "off"

    .line 3396
    const-string v5, "infinity"

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00a6

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00be

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0101

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3403
    const-string v6, "0"

    .line 3405
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    const/16 v39, 0x1

    .line 3415
    :cond_a
    const-string v2, "auto"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->proSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 3417
    const-string v40, "off"

    .line 3418
    const-string v4, "auto"

    .line 3419
    .local v4, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    .line 3420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v12

    .line 3421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0101

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 3422
    .local v37, "defaultEffect":Ljava/lang/String;
    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3423
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isZzhdrEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3424
    const/16 v39, 0x1

    .line 3426
    :cond_b
    if-eqz v12, :cond_19

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 3428
    move-object/from16 v12, v37

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_coloreffect_key"

    invoke-virtual {v2, v3, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v12}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3435
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_d

    .line 3436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3440
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3441
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 3442
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 3444
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3446
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3447
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3448
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3449
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    .line 3444
    invoke-direct/range {v2 .. v15}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    .end local v4    # "whiteBalance":Ljava/lang/String;
    .end local v37    # "defaultEffect":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0101

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 3470
    .restart local v37    # "defaultEffect":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v36

    .line 3471
    .local v36, "currentEffect":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->proSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3472
    if-eqz v36, :cond_1e

    const/4 v2, 0x1

    :goto_6
    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    :goto_7
    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 3474
    move-object/from16 v12, v37

    .line 3475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_coloreffect_key"

    invoke-virtual {v2, v3, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v12}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3483
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "ae-bracket-hdr"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3484
    .local v30, "aeBracket":Ljava/lang/String;
    if-eqz v30, :cond_f

    const-string v2, "off"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3485
    const-string v40, "off"

    .line 3486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3488
    :cond_f
    if-nez v39, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v2, :cond_20

    .line 3489
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_longshot_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e0371

    .line 3490
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3489
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3495
    :goto_8
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_11

    .line 3496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_tsmakeup_level_key"

    .line 3497
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v57

    check-cast v57, Lcom/android/camera/IconListPreference;

    .line 3499
    .local v57, "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    if-eqz v57, :cond_23

    .line 3500
    invoke-virtual/range {v57 .. v57}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 3501
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 3503
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setDefaultFilterEffect()V

    .line 3505
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v2, :cond_21

    .line 3507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3516
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_facedetection_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    sget-object v9, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3526
    .end local v57    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_11
    :goto_a
    if-nez v40, :cond_24

    .line 3528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 3529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e039e

    .line 3531
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3529
    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 3533
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 3545
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-eq v2, v3, :cond_26

    .line 3549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_selfiemirror_key"

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 3559
    :cond_13
    :goto_c
    const-string v2, "ro.config.versatility"

    const-string v3, "WW"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_shuttersound_key"

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 3564
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_bokeh_mode_key"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02e2

    .line 3569
    invoke-virtual {v2, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3564
    :goto_d
    invoke-virtual {v3, v8, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3573
    .local v31, "bokehMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_asus_single_bokeh_mode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02de

    .line 3575
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3573
    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 3576
    .local v52, "singleBokehMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e02e3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 3578
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 3580
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 3581
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3586
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-eqz v2, :cond_28

    .line 3588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3594
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_15

    .line 3595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3597
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "off"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_scenemode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "auto"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v49

    .line 3600
    .local v49, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_camera_bokeh_blur_degree_key"

    const/16 v3, 0x32

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 3601
    .local v38, "degree":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->enableBokehRender(Z)V

    .line 3604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/android/camera/PhotoUI;->setBokehRenderDegree(I)V

    .line 3669
    .end local v38    # "degree":I
    .end local v49    # "prefs":Landroid/content/SharedPreferences;
    :goto_f
    return-void

    .line 3370
    .end local v30    # "aeBracket":Ljava/lang/String;
    .end local v31    # "bokehMode":Ljava/lang/String;
    .end local v36    # "currentEffect":Ljava/lang/String;
    .end local v37    # "defaultEffect":Ljava/lang/String;
    .end local v50    # "reFocus":Ljava/lang/String;
    .end local v52    # "singleBokehMode":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3380
    .restart local v50    # "reFocus":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3393
    :cond_18
    const-string v13, "auto"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 3426
    .restart local v4    # "whiteBalance":Ljava/lang/String;
    .restart local v37    # "defaultEffect":Ljava/lang/String;
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 3452
    .end local v4    # "whiteBalance":Ljava/lang/String;
    .end local v37    # "defaultEffect":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    .line 3454
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, p0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-direct/range {v16 .. v29}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3459
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v2, :cond_1d

    .line 3460
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    goto/16 :goto_5

    .line 3462
    :cond_1d
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, p0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-direct/range {v16 .. v29}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3472
    .restart local v36    # "currentEffect":Ljava/lang/String;
    .restart local v37    # "defaultEffect":Ljava/lang/String;
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3492
    .restart local v30    # "aeBracket":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_longshot_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3509
    .restart local v57    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v2, :cond_22

    .line 3510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_9

    .line 3513
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_9

    .line 3519
    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 3521
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->enableFilterModeSwitcherView()V

    goto/16 :goto_a

    .line 3537
    .end local v57    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 3538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e039e

    .line 3540
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3538
    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 3542
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v40, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3551
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_selfiemirror_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v48

    .line 3552
    .local v48, "prefSelfieMirror":Lcom/android/camera/ListPreference;
    if-eqz v48, :cond_13

    invoke-virtual/range {v48 .. v48}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 3553
    invoke-virtual/range {v48 .. v48}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_longshot_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "off"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3569
    .end local v48    # "prefSelfieMirror":Lcom/android/camera/ListPreference;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02de

    .line 3570
    invoke-virtual {v2, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 3590
    .restart local v31    # "bokehMode":Ljava/lang/String;
    .restart local v52    # "singleBokehMode":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_e

    .line 3608
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e02e3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 3611
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    .line 3613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2a

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3617
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 3618
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3623
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-eqz v2, :cond_2b

    .line 3625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3631
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "off"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_scenemode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "auto"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v49

    .line 3634
    .restart local v49    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_asus_single_bokeh_blur_degree_key"

    const/16 v3, 0x50

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 3635
    .restart local v38    # "degree":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_f

    .line 3627
    .end local v38    # "degree":I
    .end local v49    # "prefs":Landroid/content/SharedPreferences;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_10

    .line 3640
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 3642
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    .line 3645
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 3646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3648
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-nez v2, :cond_2d

    .line 3650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3655
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2e

    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    if-nez v2, :cond_2e

    .line 3656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3659
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_bokeh_mpo_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e02e4

    .line 3660
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3659
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_bokeh_blur_degree_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e02ea

    .line 3662
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3661
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->enableBokehRender(Z)V

    .line 3666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f
.end method

.method private updateCommonManual3ASettings()V
    .locals 33

    .prologue
    .line 3263
    sget-object v6, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    .line 3264
    .local v6, "touchAfAec":Ljava/lang/String;
    const-string v1, "auto"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 3265
    const-string v2, "off"

    .line 3266
    .local v2, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00a6

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3268
    .local v13, "redeyeReduction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00be

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3270
    .local v14, "aeBracketing":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0101

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3272
    .local v11, "colorEffect":Ljava/lang/String;
    const-string v5, "0"

    .line 3273
    .local v5, "exposureCompensation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v1, :cond_3

    .line 3274
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3276
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3277
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3278
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3279
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v1, p0

    .line 3274
    invoke-direct/range {v1 .. v14}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_longshot_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0371

    .line 3283
    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 3282
    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3295
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v30

    .line 3296
    .local v30, "isoMode":Ljava/lang/String;
    const-string v29, "manual"

    .line 3297
    .local v29, "isoManual":Ljava/lang/String;
    const-string v1, "manual"

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_iso_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e00eb

    .line 3300
    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3298
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3301
    .local v31, "isoPref":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_iso_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v31, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3303
    .end local v31    # "isoPref":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e03a8

    .line 3306
    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3304
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3307
    .local v32, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_whitebalance_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v32, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3309
    .end local v32    # "whiteBalance":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_focusmode_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3311
    invoke-virtual {v7}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 3310
    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3313
    :cond_2
    return-void

    .line 3286
    .end local v29    # "isoManual":Ljava/lang/String;
    .end local v30    # "isoMode":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0115

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3288
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v15, p0

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v28}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_longshot_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateFocusManager(Lcom/android/camera/PhotoUI;)V
    .locals 3
    .param p1, "mUI"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 4548
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 4549
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, p1}, Lcom/android/camera/FocusOverlayManager;->setPhotoUI(Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    .line 4551
    invoke-virtual {p1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4553
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 4554
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4559
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "width":I
    :cond_0
    return-void
.end method

.method private updateFrontCameraFlash()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7593
    const-string v2, "CAM_PhotoModule"

    const-string v3, "updateFrontCameraFlash"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7594
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-eq v2, v7, :cond_0

    .line 7631
    :goto_0
    return-void

    .line 7597
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e039e

    .line 7599
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7597
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7600
    .local v0, "flashMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 7601
    .local v1, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7602
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 7603
    if-nez v0, :cond_1

    .line 7604
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e039f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7608
    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7610
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 7611
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    .line 7612
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 7613
    iput v7, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    goto :goto_0

    .line 7614
    :cond_2
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7616
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    if-eqz v2, :cond_4

    .line 7617
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 7621
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_3

    .line 7622
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 7624
    :cond_3
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    .line 7625
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    goto :goto_0

    .line 7619
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 7627
    :cond_5
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    .line 7628
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 7629
    iput v6, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    goto :goto_0
.end method

.method private updateMakeup(Ljava/lang/String;Lcom/android/camera/PreferenceGroup;)V
    .locals 7
    .param p1, "makeUp"    # Ljava/lang/String;
    .param p2, "mPreferenceGroup"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 7686
    move-object v4, p1

    .line 7687
    .local v4, "prefValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 7688
    .local v2, "mMakeupLevelPref":Lcom/android/camera/IconListPreference;
    const/4 v3, 0x0

    .line 7689
    .local v3, "makeupPref":Lcom/android/camera/IconListPreference;
    if-eqz p2, :cond_0

    .line 7690
    const-string v5, "pref_camera_tsmakeup_level_key"

    invoke-virtual {p2, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .end local v2    # "mMakeupLevelPref":Lcom/android/camera/IconListPreference;
    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 7691
    .restart local v2    # "mMakeupLevelPref":Lcom/android/camera/IconListPreference;
    const-string v5, "pref_camera_tsmakeup_key"

    invoke-virtual {p2, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .end local v3    # "makeupPref":Lcom/android/camera/IconListPreference;
    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 7693
    .restart local v3    # "makeupPref":Lcom/android/camera/IconListPreference;
    :cond_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    .line 7702
    :cond_1
    :goto_0
    return-void

    .line 7695
    :cond_2
    invoke-virtual {v3, v4}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 7696
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v0

    .line 7697
    .local v0, "index":I
    invoke-virtual {v2, v0}, Lcom/android/camera/IconListPreference;->setValueIndex(I)V

    .line 7698
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mTsMakeupSwitcher:Landroid/widget/ImageView;

    .line 7699
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v5

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7700
    invoke-virtual {v3, v4}, Lcom/android/camera/IconListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 7701
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_0
.end method

.method private updateRemainingPhotos()V
    .locals 4

    .prologue
    .line 4324
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    if-eqz v0, :cond_0

    .line 4325
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4326
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    .line 4331
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 4332
    return-void

    .line 4329
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    goto :goto_0
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 7078
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public autoFocus()V
    .locals 3

    .prologue
    .line 4608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 4609
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFCallback;)V

    .line 4610
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4611
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 4615
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 4616
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4617
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4618
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 4620
    :cond_0
    return-void
.end method

.method public cancelLongshot()V
    .locals 4

    .prologue
    .line 7661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCancelLongshot:Z

    .line 7662
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7663
    return-void
.end method

.method public capture()Z
    .locals 27

    .prologue
    .line 2908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2911
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2912
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsAILongShotDoMoreOne:Z

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_2

    .line 2914
    :cond_1
    const/4 v2, 0x0

    .line 3235
    :goto_0
    return v2

    .line 2918
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2919
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2920
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2922
    const/4 v2, 0x0

    sput v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2923
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 2924
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 2925
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 2928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_3

    .line 2929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    .line 2933
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v3, "hdr"

    if-ne v2, v3, :cond_c

    const/4 v9, 0x1

    .line 2934
    .local v9, "animateBefore":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v2, :cond_5

    .line 2935
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v2, v3, :cond_4

    .line 2936
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 2937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 2939
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/PhotoModule$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2948
    :cond_5
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsSingleBokehMode:Z

    if-eqz v2, :cond_7

    .line 2950
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 2953
    :cond_7
    if-eqz v9, :cond_8

    .line 2954
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    .line 2957
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2959
    .local v13, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 2960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshot(Z)V

    .line 2961
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v3, "hdr"

    if-ne v2, v3, :cond_1a

    .line 3049
    const-string v2, "CAM_PhotoModule"

    const-string v3, "hdr capture  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3053
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSIso:I

    .line 3055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;

    move-result-object v22

    .line 3056
    .local v22, "set_iso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3058
    .local v11, "currentISO":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSIso:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3062
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    .line 3063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3065
    const-wide/16 v14, 0x0

    .line 3066
    .local v14, "exp_time":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 3067
    .local v20, "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 3068
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 3069
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 3070
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    :goto_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 3071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "ae-bracket-hdr"

    const-string v4, "AE-Bracket"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCurrentBrightness:I

    sget-object v3, Lcom/android/camera/util/CustomParams;->HDR_LUX_LEVEL:[I

    sget-object v4, Lcom/android/camera/util/CustomParams;->HDR_PARAMS:[[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/PhotoModule;->getHDRBracketString(I[I[[I)Ljava/lang/String;

    move-result-object v19

    .line 3074
    .local v19, "p":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDR AEBracket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-exposures"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    sget v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 3078
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 3086
    .end local v11    # "currentISO":Ljava/lang/String;
    .end local v14    # "exp_time":D
    .end local v19    # "p":Ljava/lang/String;
    .end local v20    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v22    # "set_iso":Ljava/lang/String;
    :goto_6
    const-string v2, "On"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0228

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    if-eqz v2, :cond_1e

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1e

    .line 3088
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 3089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 3090
    .restart local v20    # "pic_size":Landroid/hardware/Camera$Size;
    sget v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x8

    sput v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 3091
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    if-eqz v2, :cond_1b

    .line 3104
    .end local v20    # "pic_size":Landroid/hardware/Camera$Size;
    :goto_7
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeatureMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v2, :cond_b

    .line 3106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v2}, Lcom/android/camera/MultiPPManager;->isInited()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    sget v3, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/MultiPPManager;->reset(III)Z

    .line 3111
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

    invoke-virtual {v2, v3}, Lcom/android/camera/MultiPPManager;->setPostProcCallback(Lcom/android/camera/MultiPPManager$PostProcCallback;)V

    .line 3113
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    if-eqz v2, :cond_21

    .line 3114
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_9
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_20

    .line 3115
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 3114
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 2933
    .end local v9    # "animateBefore":Z
    .end local v13    # "format":Ljava/lang/String;
    .end local v16    # "i":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2965
    .restart local v9    # "animateBefore":Z
    .restart local v13    # "format":Ljava/lang/String;
    :cond_d
    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2966
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const-string v2, "jpeg"

    .line 2968
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v2, :cond_10

    .line 2971
    :cond_f
    const-string v2, "CAM_PhotoModule"

    const-string v3, "mode conflict, don\'t open 3dnr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v2, :cond_9

    .line 2976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->hideRender()V

    goto/16 :goto_2

    .line 2980
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v2, :cond_12

    .line 2981
    :cond_11
    const-string v2, "CAM_PhotoModule"

    const-string v3, "mode conflict, don\'t open hdr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    .line 2983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "hdr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2986
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2987
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsoAboveLimited:Z

    .line 2988
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSIso:I

    .line 2989
    const-wide/16 v14, 0x0

    .line 2990
    .restart local v14    # "exp_time":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;

    move-result-object v22

    .line 2991
    .restart local v22    # "set_iso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2993
    .restart local v11    # "currentISO":Ljava/lang/String;
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSIso:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3001
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 3002
    .restart local v20    # "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 3003
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 3004
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    :goto_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 3005
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    :goto_c
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 3006
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    .line 3008
    const/4 v2, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_13
    :goto_d
    packed-switch v2, :pswitch_data_0

    .line 3040
    const-string v2, "CAM_PhotoModule"

    const-string v3, "ISO read fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 3004
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_b

    .line 3005
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_c

    .line 3008
    :sswitch_0
    const-string v3, "auto"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x0

    goto :goto_d

    :sswitch_1
    const-string v3, "ISO_HJR"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :sswitch_2
    const-string v3, "ISO100"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x2

    goto :goto_d

    :sswitch_3
    const-string v3, "ISO200"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x3

    goto :goto_d

    :sswitch_4
    const-string v3, "ISO400"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x4

    goto :goto_d

    :sswitch_5
    const-string v3, "ISO800"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x5

    goto :goto_d

    :sswitch_6
    const-string v3, "ISO1600"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x6

    goto :goto_d

    :sswitch_7
    const-string v3, "ISO3200"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x7

    goto/16 :goto_d

    .line 3011
    :pswitch_0
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto iso, current iso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSIso:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_17

    .line 3014
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSIso:I

    const/16 v3, 0xc80

    if-lt v2, v3, :cond_16

    .line 3015
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsoAboveLimited:Z

    .line 3017
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "enable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    sget v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x2

    sput v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 3019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3020
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 3022
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 3032
    :pswitch_1
    const-string v2, "CAM_PhotoModule"

    const-string v3, "need 3dnr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "enable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    sget v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x2

    sput v2, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 3035
    const-string v2, "CAM_PhotoModule"

    const-string v3, "set metadata cb"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3037
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 3069
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto/16 :goto_4

    .line 3070
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto/16 :goto_5

    .line 3080
    .end local v11    # "currentISO":Ljava/lang/String;
    .end local v14    # "exp_time":D
    .end local v20    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v22    # "set_iso":Ljava/lang/String;
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIshdrMode:Z

    .line 3081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "hdr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3094
    .restart local v20    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 3095
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 3096
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 3097
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    :goto_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 3098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    :goto_f
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 3099
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    goto/16 :goto_7

    .line 3097
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_e

    .line 3098
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_f

    .line 3102
    .end local v20    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    goto/16 :goto_7

    .line 3109
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    sget v4, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/MultiPPManager;->init(Lcom/android/camera/CameraActivity;III)Z

    goto/16 :goto_8

    .line 3119
    .restart local v16    # "i":I
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/PhotoModule;->adjustHDRParams(I)V

    .line 3120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isDeveloperMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3121
    const-string v2, "sys.hdrshot.toneLength"

    const/16 v3, 0x19

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 3122
    .local v24, "toneLength":I
    const-string v2, "sys.hdrshot.brightness"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 3123
    .local v10, "brightness":I
    const-string v2, "sys.hdrshot.toneSaturation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 3124
    .local v25, "toneSaturation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v24, v4, v5

    const/4 v5, 0x1

    aput v10, v4, v5

    const/4 v5, 0x2

    aput v25, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 3129
    .end local v10    # "brightness":I
    .end local v16    # "i":I
    .end local v24    # "toneLength":I
    .end local v25    # "toneSaturation":I
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    if-eqz v2, :cond_22

    .line 3130
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_10
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_22

    .line 3131
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 3130
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 3135
    .end local v16    # "i":I
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    if-eqz v2, :cond_23

    .line 3137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "tsmakeup_whiten"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 3138
    .local v26, "whiten":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "tsmakeup_clean"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 3139
    .local v23, "soften":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/16 v3, 0x8

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v26, v4, v5

    const/4 v5, 0x1

    aput v23, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 3145
    .end local v23    # "soften":I
    .end local v26    # "whiten":I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mOrientation:I

    move/from16 v18, v0

    .line 3146
    .local v18, "orientation":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3148
    .local v21, "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/PhotoModule;->getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v17

    .line 3150
    .local v17, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v3

    .line 3151
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 3154
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    if-eqz v2, :cond_26

    .line 3155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "snapshot-burst-num"

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3165
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 3166
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 3167
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 3169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3171
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3174
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3178
    :goto_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    .line 3179
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isPreviewRestartEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 3180
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 3182
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    const/4 v2, 0x1

    :goto_13
    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 3184
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v2, 0x1

    :goto_14
    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 3185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    const-string v3, "jpeg"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 3190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_24

    .line 3191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 3194
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->isShutterSoundOn()Z

    move-result v2

    if-nez v2, :cond_29

    .line 3195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    .line 3200
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    .line 3203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2d

    .line 3204
    const-string v2, "persist.sys.camera.longshot.shotnum"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCountLimit:I

    .line 3206
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    .line 3207
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    if-eqz v2, :cond_2c

    .line 3208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/camera/PhotoModule$LongshotPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/camera/PhotoModule$LongshotPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 3227
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 3229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v2, v3, :cond_25

    .line 3230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 3232
    :cond_25
    const-string v3, "Camera"

    const-string v4, "CaptureDone"

    const-string v5, "Photo"

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 3234
    invoke-static {v2}, Lcom/android/camera/PhotoModule$NamedImages;->access$12300(Lcom/android/camera/PhotoModule$NamedImages;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v2, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3232
    invoke-static/range {v3 .. v8}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 3235
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3158
    :cond_26
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "snapshot-burst-num"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3171
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 3175
    :catch_0
    move-exception v12

    .line 3176
    .local v12, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    goto/16 :goto_12

    .line 3182
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 3184
    :cond_28
    const/4 v2, 0x0

    goto/16 :goto_14

    .line 3197
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    if-nez v2, :cond_2a

    const/4 v2, 0x1

    :goto_18
    invoke-interface {v3, v2}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    goto/16 :goto_15

    :cond_2a
    const/4 v2, 0x0

    goto :goto_18

    .line 3200
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 3213
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    goto/16 :goto_17

    .line 3220
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$ShutterCallback;

    if-nez v9, :cond_2e

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 3224
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto/16 :goto_17

    .line 3220
    :cond_2e
    const/4 v5, 0x0

    goto :goto_19

    .line 3059
    .end local v17    # "loc":Landroid/location/Location;
    .end local v18    # "orientation":I
    .end local v21    # "pictureFormat":Ljava/lang/String;
    .restart local v11    # "currentISO":Ljava/lang/String;
    .restart local v22    # "set_iso":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 2994
    .restart local v14    # "exp_time":D
    :catch_2
    move-exception v2

    goto/16 :goto_a

    nop

    .line 3008
    :sswitch_data_0
    .sparse-switch
        -0x7eb7f494 -> :sswitch_2
        -0x7eb7f0d3 -> :sswitch_3
        -0x7eb7e951 -> :sswitch_4
        -0x7eb7da4d -> :sswitch_5
        -0x58468736 -> :sswitch_6
        -0x5845ad7c -> :sswitch_7
        -0x5831574a -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public enableRecordingLocation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1338
    return-void

    .line 1335
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method protected getCamera()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 4599
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 7020
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 7319
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method public getHDRBracketString(I[I[[I)Ljava/lang/String;
    .locals 7
    .param p1, "bright"    # I
    .param p2, "lux_table"    # [I
    .param p3, "hdr_param_table"    # [[I

    .prologue
    const/4 v6, 0x0

    .line 7667
    const/4 v3, 0x6

    .line 7668
    .local v3, "plus":I
    const/4 v1, -0x6

    .line 7669
    .local v1, "minus":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_3

    .line 7670
    aget v4, p2, v0

    if-ge p1, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    if-le p1, v4, :cond_1

    .line 7671
    aget-object v4, p3, v0

    aget v1, v4, v6

    .line 7672
    aget-object v4, p3, v0

    const/4 v5, 0x1

    aget v3, v4, v5

    .line 7669
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7674
    :cond_1
    aget v4, p2, v6

    if-ge p1, v4, :cond_2

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    aget v4, p2, v4

    if-gt p1, v4, :cond_0

    .line 7675
    :cond_2
    const-string v4, "CAM_PhotoModule"

    const-string v5, "brightness is outof range"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7676
    const-string v2, "-6, 6, 0"

    .line 7682
    :goto_1
    return-object v2

    .line 7681
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7682
    .local v2, "param":Ljava/lang/String;
    goto :goto_1
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getProParamChanged()Z
    .locals 3

    .prologue
    .line 4790
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4791
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "proParamChanged"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1203
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1204
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 1205
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1206
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v1, :cond_0

    .line 1207
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1210
    :cond_0
    const v1, 0x7f0e0043

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->proSceneMode:Ljava/lang/String;

    .line 1212
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 1213
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 1215
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-nez v1, :cond_1

    .line 1216
    new-instance v1, Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/PhotoModule$OpenCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1217
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;->start()V

    .line 1220
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 1224
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 1226
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1227
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1229
    new-instance v1, Lcom/android/camera/PhotoUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/PhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 1231
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-nez v1, :cond_2

    .line 1232
    new-instance v1, Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 1233
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;->start()V

    .line 1236
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 1238
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v1, :cond_3

    .line 1239
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getCameraControls()Lcom/android/camera/ui/CameraControls;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraControls;->setPhotoMode(Z)V

    .line 1242
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 1243
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 1244
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1246
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 1248
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    .line 1250
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_4

    .line 1251
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 1252
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1254
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1255
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_brightness_key"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 1258
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1259
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1260
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 1261
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1260
    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 1263
    new-instance v1, Lcom/android/camera/MultiPPManager;

    invoke-direct {v1}, Lcom/android/camera/MultiPPManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    .line 1266
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mTsMakeupSwitcher:Landroid/widget/ImageView;

    .line 1269
    new-instance v1, Lcom/asus/scenedetectlib/detector/SceneDetector;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/asus/scenedetectlib/detector/SceneDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mDetector:Lcom/asus/scenedetectlib/detector/SceneDetector;

    .line 1271
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 4167
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6307
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 6309
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 6315
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6316
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 6317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRefocus()Z
    .locals 1

    .prologue
    .line 7103
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 7039
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 4578
    packed-switch p1, :pswitch_data_0

    .line 4596
    :goto_0
    return-void

    .line 4580
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4581
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 4582
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4583
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4584
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4587
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 4588
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .line 4590
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4591
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 4578
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 4643
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 6914
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6923
    :cond_0
    :goto_0
    return-void

    .line 6916
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 6918
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to switch camera. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6922
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureCancelled()V
    .locals 3

    .prologue
    .line 3812
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3813
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3814
    return-void
.end method

.method public onCaptureDone()V
    .locals 17

    .prologue
    .line 3826
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v13, :cond_0

    .line 3905
    :goto_0
    return-void

    .line 3830
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3832
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 3837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_1

    .line 3838
    const/4 v9, 0x0

    .line 3840
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 3841
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 3842
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3849
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3846
    :catch_0
    move-exception v13

    .line 3849
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v13

    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 3852
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 3853
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v8

    .line 3854
    .local v8, "orientation":I
    const v13, 0xc800

    invoke-static {v4, v13}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3855
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    .line 3857
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    .line 3856
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 3862
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "orientation":I
    :cond_2
    const/4 v12, 0x0

    .line 3863
    .local v12, "tempUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 3865
    .local v11, "tempStream":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 3866
    .local v10, "path":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 3867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 3868
    invoke-virtual {v11, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 3869
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 3870
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 3880
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3883
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3884
    .local v7, "newExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3885
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3887
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_5

    .line 3888
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3892
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3893
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3897
    :cond_4
    const-string v1, "com.android.camera.action.CROP"

    .line 3898
    .local v1, "CROP_ACTION":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3900
    .local v3, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3901
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v3, v14}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3871
    .end local v1    # "CROP_ACTION":Ljava/lang/String;
    .end local v3    # "cropIntent":Landroid/content/Intent;
    .end local v7    # "newExtras":Landroid/os/Bundle;
    .end local v10    # "path":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 3872
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3873
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3880
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 3875
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 3876
    .local v5, "ex":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3880
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 3890
    .restart local v7    # "newExtras":Landroid/os/Bundle;
    .restart local v10    # "path":Ljava/io/File;
    :cond_5
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onCaptureRetake()V
    .locals 1

    .prologue
    .line 3818
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3822
    :goto_0
    return-void

    .line 3820
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 3821
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 6934
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4563
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 4565
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 4566
    return-void
.end method

.method public onCountDownFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6978
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 6979
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initiateSnap()V

    .line 6980
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    .line 6981
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_zsl_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 6982
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showUIAfterCountDown()V

    .line 6983
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 3808
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 7314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->enableRecordingLocation(Z)V

    .line 7315
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4648
    sparse-switch p1, :sswitch_data_0

    .line 4724
    :cond_0
    :goto_0
    return v1

    .line 4651
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4658
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v3, :cond_0

    .line 4659
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4660
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_1
    move v1, v2

    .line 4662
    goto :goto_0

    .line 4666
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 4667
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    :cond_2
    move v1, v2

    .line 4669
    goto :goto_0

    .line 4671
    :sswitch_3
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4672
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4673
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v5, :cond_0

    .line 4674
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    if-lez v3, :cond_3

    .line 4675
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 4676
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v3

    .line 4678
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4679
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "luma-adaptation"

    iget v6, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4681
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4683
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4684
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4685
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_brightness_key"

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4686
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4687
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4688
    sput-boolean v2, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    goto/16 :goto_0

    .line 4681
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4692
    :sswitch_4
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4693
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4694
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v5, :cond_0

    .line 4695
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 4696
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 4697
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v3

    .line 4699
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4700
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "luma-adaptation"

    iget v6, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4701
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4702
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4704
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4705
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4706
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_brightness_key"

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4707
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4708
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4709
    sput-boolean v2, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    goto/16 :goto_0

    .line 4702
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 4715
    :sswitch_5
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 4719
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 4720
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->pressShutterButton()V

    :cond_5
    move v1, v2

    .line 4722
    goto/16 :goto_0

    .line 4648
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
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

    .line 4729
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 4749
    :cond_0
    :goto_0
    return v0

    .line 4732
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4733
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4734
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4737
    goto :goto_0

    .line 4740
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 4744
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 4745
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 4729
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 7108
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 7109
    const-string v0, "CAM_PhotoModule"

    const-string v1, "MakeupLevel failed CameraDevice not yet initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7115
    :goto_0
    return-void

    .line 7112
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 7113
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/PhotoModule;->onMakeupLevelSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 7114
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMakeupLevelSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 7118
    const-string v10, "CAM_PhotoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhotoModule.onMakeupLevel(): key is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7251
    :goto_0
    return-void

    .line 7124
    :cond_0
    const-string v5, "On"

    .line 7126
    .local v5, "prefValue":Ljava/lang/String;
    const-string v10, "Off"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 7127
    const-string v5, "Off"

    .line 7128
    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v10, :cond_5

    .line 7130
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 7131
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 7138
    :goto_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 7140
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->enableFilterModeSwitcherView()V

    .line 7158
    :goto_2
    const-string v10, "CAM_PhotoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMakeupLevel(): prefValue is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7159
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup"

    invoke-virtual {v10, v11, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7161
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 7162
    const-string v10, "none"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 7163
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 7164
    .local v4, "pref":Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_2

    .line 7165
    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 7166
    .local v9, "whitenValue":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7167
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0229

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7169
    :cond_1
    invoke-virtual {v4, v9}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 7170
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_whiten"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 7173
    .end local v9    # "whitenValue":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera_tsmakeup_clean"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 7174
    if-eqz v4, :cond_4

    .line 7175
    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 7176
    .local v0, "cleanValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 7177
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0229

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7179
    :cond_3
    invoke-virtual {v4, v0}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 7180
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_clean"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 7220
    .end local v0    # "cleanValue":Ljava/lang/String;
    .end local v4    # "pref":Lcom/android/camera/ListPreference;
    :cond_4
    :goto_3
    iget v10, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-nez v10, :cond_12

    .line 7221
    const-string v10, "CAM_PhotoModule"

    const-string v11, "set low cost fb on."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7222
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "asus_beauty"

    const-string v12, "on"

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7223
    const-string v3, ""

    .line 7224
    .local v3, "defaultWhiten":Ljava/lang/String;
    const-string v2, ""

    .line 7225
    .local v2, "defaultSoften":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v11, "ZQL1820"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 7226
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e022b

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7227
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e022a

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7228
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_whiten"

    invoke-virtual {v10, v11, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7229
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_clean"

    invoke-virtual {v10, v11, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7241
    :goto_4
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 7249
    .end local v2    # "defaultSoften":Ljava/lang/String;
    .end local v3    # "defaultWhiten":Ljava/lang/String;
    :goto_5
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7250
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 7132
    :cond_5
    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v10, :cond_6

    .line 7133
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 7134
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_1

    .line 7136
    :cond_6
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_1

    .line 7143
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 7144
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 7145
    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v10, :cond_8

    .line 7147
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 7154
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDefaultFilterEffect()V

    goto/16 :goto_2

    .line 7148
    :cond_8
    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v10, :cond_9

    .line 7149
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_6

    .line 7151
    :cond_9
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_6

    .line 7184
    :cond_a
    const-string v10, "pref_camera_tsmakeup_level_key"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 7186
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera_tsmakeup_level_key"

    .line 7187
    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v7

    check-cast v7, Lcom/android/camera/IconListPreference;

    .line 7188
    .local v7, "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    const/4 v1, 0x0

    .line 7189
    .local v1, "currentIndex":I
    const-string v8, ""

    .line 7190
    .local v8, "whiten":Ljava/lang/String;
    const-string v6, ""

    .line 7191
    .local v6, "soften":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 7192
    invoke-virtual {v7}, Lcom/android/camera/IconListPreference;->getCurrentIndex()I

    move-result v1

    .line 7193
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->softenEntryValue:[Ljava/lang/String;

    aget-object v6, v10, v1

    .line 7194
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->whitenEntryValue:[Ljava/lang/String;

    aget-object v8, v10, v1

    .line 7196
    :cond_b
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v10, :cond_c

    .line 7197
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_whiten"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 7198
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_clean"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 7200
    :cond_c
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 7201
    .restart local v4    # "pref":Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_d

    .line 7202
    invoke-virtual {v4, v8}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 7205
    :cond_d
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v11, "pref_camera_tsmakeup_clean"

    invoke-virtual {v10, v11}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 7206
    if-eqz v4, :cond_4

    .line 7207
    invoke-virtual {v4, v6}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 7209
    .end local v1    # "currentIndex":I
    .end local v4    # "pref":Lcom/android/camera/ListPreference;
    .end local v6    # "soften":Ljava/lang/String;
    .end local v7    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    .end local v8    # "whiten":Ljava/lang/String;
    :cond_e
    const-string v10, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 7210
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v10, :cond_4

    .line 7211
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_whiten"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 7213
    :cond_f
    const-string v10, "pref_camera_tsmakeup_clean"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 7214
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v10, :cond_4

    .line 7215
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_clean"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 7230
    .restart local v2    # "defaultSoften":Ljava/lang/String;
    .restart local v3    # "defaultWhiten":Ljava/lang/String;
    :cond_10
    sget-object v10, Lcom/android/camera/PhotoModule;->PROJECT_NAME:Ljava/lang/String;

    const-string v11, "ZQL1830"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 7231
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e022d

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7232
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e022c

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7233
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_whiten"

    invoke-virtual {v10, v11, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7234
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_clean"

    invoke-virtual {v10, v11, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 7236
    :cond_11
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e022e

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7237
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e022e

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7238
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_whiten"

    invoke-virtual {v10, v11, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7239
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "tsmakeup_clean"

    invoke-virtual {v10, v11, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 7243
    .end local v2    # "defaultSoften":Ljava/lang/String;
    .end local v3    # "defaultWhiten":Ljava/lang/String;
    :cond_12
    const-string v10, "CAM_PhotoModule"

    const-string v11, "set low cost fb off."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7244
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "asus_beauty"

    const-string v12, "off"

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7245
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    goto/16 :goto_5
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 7032
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 7033
    invoke-virtual {p1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 7035
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 3767
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3798
    :cond_0
    :goto_0
    return-void

    .line 3768
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3769
    .local v0, "oldOrientation":I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3770
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    if-eq v0, v1, :cond_3

    .line 3771
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v1, v4, :cond_2

    .line 3772
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onOrientationChanged, update parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3774
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFlipValue()V

    .line 3775
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3776
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3778
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->tryToCloseSubList()V

    .line 3779
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 3780
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_3

    .line 3781
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/GraphView;->setRotation(F)V

    .line 3786
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3787
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3788
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    .line 3792
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GraphView;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    .line 3793
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_0

    .line 3794
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Lcom/android/camera/GraphView;->setAlpha(F)V

    .line 3795
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/GraphView;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    .line 3796
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1}, Lcom/android/camera/GraphView;->PreviewChanged()V

    goto :goto_0

    .line 3776
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 1

    .prologue
    .line 6954
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 6956
    :goto_0
    return-void

    .line 6955
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showPreferencesToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4439
    const-string v1, "CAM_PhotoModule"

    const-string v2, "On pause."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->showPreviewCover()V

    .line 4441
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->hideSurfaceView()V

    .line 4445
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v1, :cond_0

    .line 4446
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 4448
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v1, :cond_1

    .line 4449
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 4452
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    if-eqz v1, :cond_2

    .line 4453
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$SavingThread;->join()V

    .line 4454
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4460
    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 4461
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 4465
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_3

    .line 4466
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4468
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetManual3ASettings()V

    .line 4472
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 4478
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 4482
    :cond_4
    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 4485
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4489
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

    if-nez v1, :cond_5

    .line 4490
    new-instance v1, Lcom/android/camera/PhotoModule$CloseCameraThread;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/PhotoModule$CloseCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

    .line 4491
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCloseCameraThread:Lcom/android/camera/PhotoModule$CloseCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$CloseCameraThread;->start()V

    .line 4496
    :cond_5
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCurrentBrightness:I

    .line 4497
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCurrentCount:I

    .line 4498
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->isFrontAutoTorch:Z

    .line 4499
    iput v3, p0, Lcom/android/camera/PhotoModule;->mBrightnessAfterLightUp:I

    .line 4500
    iput v3, p0, Lcom/android/camera/PhotoModule;->mFrontAutoTorchState:I

    .line 4501
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->isFrontAutoOn:Z

    .line 4504
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 4505
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->onPause()V

    .line 4507
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 4508
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 4509
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    .line 4510
    .local v0, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v0, :cond_7

    .line 4511
    invoke-virtual {v0, v4}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 4513
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->removeDisplayChangeListener()V

    .line 4514
    return-void

    .line 4457
    .end local v0    # "s":Lcom/android/camera/MediaSaveService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4389
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 4390
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v4, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 4393
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    .line 4395
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4399
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mMediaReceiverHasRegister:Z

    .line 4404
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 4405
    .local v1, "gsensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    .line 4406
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4409
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 4410
    .local v2, "msensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_2

    .line 4411
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4414
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_3

    .line 4415
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4416
    iput-object v8, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    .line 4419
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    if-eqz v3, :cond_4

    .line 4420
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$SelfieThread;->interrupt()V

    .line 4424
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v3, :cond_6

    .line 4425
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v3}, Lcom/android/camera/MultiPPManager;->isInWork()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v3}, Lcom/android/camera/MultiPPManager;->getState()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 4426
    :cond_5
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v3}, Lcom/android/camera/MultiPPManager;->deinit()V

    .line 4427
    iput-object v8, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    .line 4431
    :cond_6
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->stopSelfieFlash()V

    .line 4433
    const-string v3, "CAM_PhotoModule"

    const-string v4, "remove idle handleer in onPause"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->removeIdleHandler()V

    .line 4435
    return-void

    .line 4396
    .end local v1    # "gsensor":Landroid/hardware/Sensor;
    .end local v2    # "msensor":Landroid/hardware/Sensor;
    :catch_0
    move-exception v0

    .line 4397
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterReceiver mMediaButtonReceiver e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4399
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mMediaReceiverHasRegister:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mMediaReceiverHasRegister:Z

    throw v3
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .prologue
    .line 7066
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->onPreviewFocusChanged(Z)V

    .line 7067
    return-void
.end method

.method public onPreviewFrame([BLcom/android/camera/CameraManager$CameraProxy;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 7707
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mNeedFirstPreviewFrame:Z

    if-eqz v4, :cond_0

    .line 7708
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->hidePreviewCover()V

    .line 7709
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNeedFirstPreviewFrame:Z

    .line 7712
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addPreviewBuffer()V

    .line 7714
    const-string v4, "CAM_PhotoModule"

    const-string v5, "onPreviewFrame, hidePreviewCover"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7763
    :goto_0
    return-void

    .line 7717
    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v4, :cond_1

    .line 7720
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addPreviewBuffer()V

    .line 7722
    const-string v4, "CAM_PhotoModule"

    const-string v5, "onPreviewFrame, mPaused"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7725
    :cond_1
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewFrame, length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7726
    const/4 v2, 0x0

    .line 7727
    .local v2, "ret":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 7729
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 7730
    .local v0, "isSceneDetect":Z
    :cond_2
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/android/camera/PhotoModule;->mFrameId:I

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_4

    .line 7733
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    if-eqz v4, :cond_3

    .line 7734
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$AISenceDetectThread;->join()V

    .line 7735
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7740
    :cond_3
    :goto_1
    new-instance v4, Lcom/android/camera/PhotoModule$AISenceDetectThread;

    invoke-direct {v4, p0, v7}, Lcom/android/camera/PhotoModule$AISenceDetectThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    .line 7741
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    invoke-virtual {v4, p1}, Lcom/android/camera/PhotoModule$AISenceDetectThread;->setYUVData([B)V

    .line 7743
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    add-int/lit8 v5, v5, 0x5a

    rem-int/lit16 v5, v5, 0x168

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoModule$AISenceDetectThread;->setOrientation(I)V

    .line 7745
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/PhotoModule;->mPreviewHeight:I

    iget v7, p0, Lcom/android/camera/PhotoModule;->mPreviewWidth:I

    iget v8, p0, Lcom/android/camera/PhotoModule;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/PhotoModule$AISenceDetectThread;->setSize(IIII)V

    .line 7746
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAISenceDetectThread:Lcom/android/camera/PhotoModule$AISenceDetectThread;

    invoke-virtual {v4}, Lcom/android/camera/PhotoModule$AISenceDetectThread;->start()V

    .line 7761
    :goto_2
    iget v4, p0, Lcom/android/camera/PhotoModule;->mFrameId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/PhotoModule;->mFrameId:I

    goto/16 :goto_0

    .line 7747
    :cond_4
    if-eqz v0, :cond_5

    .line 7750
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addPreviewBuffer()V

    goto :goto_2

    .line 7753
    :cond_5
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0321

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 7754
    .local v1, "otherSceneType":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v1}, Lcom/android/camera/PhotoUI;->updateSceneDetectIcon(Ljava/lang/String;)V

    .line 7757
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addPreviewBuffer()V

    goto :goto_2

    .line 7737
    .end local v1    # "otherSceneType":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 1538
    :goto_0
    return-void

    .line 1534
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusManagerNeedSet:Z

    .line 1535
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mFocusRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 6929
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6930
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1372
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v0, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 1374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPreviewUIReady()V
    .locals 4

    .prologue
    .line 1348
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onPreviewUIReady"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v1, :cond_2

    .line 1353
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    goto :goto_0

    .line 1355
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1357
    .local v0, "sh":Landroid/view/SurfaceHolder;
    if-nez v0, :cond_3

    .line 1358
    const-string v1, "CAM_PhotoModule"

    const-string v3, "startPreview: holder for preview are not ready."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    monitor-exit v2

    goto :goto_0

    .line 1362
    .end local v0    # "sh":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1361
    .restart local v0    # "sh":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1362
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 7025
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 7026
    return-void

    .line 7025
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 7070
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4262
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    .line 4263
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->showSurfaceView()V

    .line 4267
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4268
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 4269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4270
    :cond_0
    const-string v1, "CAM_PhotoModule"

    const-string v2, "On resume, from lock screen."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isInstantCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4275
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    .line 4280
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4290
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->registerMediaButtonReceiver()V

    .line 4293
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->setSwitcherIndex()V

    .line 4294
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 4295
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    invoke-direct {v1, v7, v2, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    .line 4296
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f070004

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mRefocusSound:I

    .line 4299
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4311
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-nez v1, :cond_3

    .line 4312
    new-instance v1, Lcom/android/camera/MultiPPManager;

    invoke-direct {v1}, Lcom/android/camera/MultiPPManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    .line 4315
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v1, :cond_4

    .line 4316
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2, v6, v6, v6}, Lcom/android/camera/MultiPPManager;->init(Lcom/android/camera/CameraActivity;III)Z

    .line 4319
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initialMakeupseekBar()V

    .line 4321
    return-void

    .line 4286
    :cond_5
    const-string v1, "CAM_PhotoModule"

    const-string v2, "On resume."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onResumeTasks()V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4178
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 4179
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->buttonBokeh(Z)V

    .line 4181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 4182
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 1527
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x3

    .line 7043
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 7045
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7046
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .line 7053
    .local v0, "data":[F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 7054
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 7053
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7047
    .end local v0    # "data":[F
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 7048
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    .restart local v0    # "data":[F
    goto :goto_0

    .line 7056
    .restart local v1    # "i":I
    :cond_1
    new-array v2, v5, [F

    .line 7057
    .local v2, "orientation":[F
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mR:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    invoke-static {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 7058
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mR:[F

    invoke-static {v4, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 7059
    const/4 v4, 0x0

    aget v4, v2, v4

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 7060
    iget v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    if-gez v4, :cond_2

    .line 7061
    iget v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 7063
    .end local v0    # "data":[F
    .end local v1    # "i":I
    .end local v2    # "orientation":[F
    :cond_2
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 6885
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 6910
    :goto_0
    return-void

    .line 6887
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 6889
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 6890
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->needRestart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6891
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Restarting Preview... Camera Mode Changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6892
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 6893
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 6894
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 6895
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 6902
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v1, v1, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v1, :cond_2

    .line 6903
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 6904
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 6909
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    goto :goto_0

    .line 6907
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 13
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 6801
    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v10, :cond_0

    .line 6880
    :goto_0
    return-void

    .line 6804
    :cond_0
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0371

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6805
    .local v6, "settingOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 6807
    const-string v10, "pref_camera_hdr_key"

    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "pref_camera_ae_bracket_hdr_key"

    .line 6808
    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6809
    :cond_1
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_zsl_key"

    invoke-virtual {v10, v11, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6816
    :cond_2
    :goto_1
    const-string v10, "pref_camera_manual_exp_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6817
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V

    goto :goto_0

    .line 6810
    :cond_3
    const-string v10, "pref_camera_zsl_key"

    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6811
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_hdr_key"

    invoke-virtual {v10, v11, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6812
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v10, v11, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6820
    :cond_4
    const-string v10, "pref_camera_manual_wb_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 6821
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V

    goto :goto_0

    .line 6824
    :cond_5
    const-string v10, "pref_camera_manual_focus_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6825
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V

    goto :goto_0

    .line 6829
    :cond_6
    const-string v10, "pref_camera_savepath_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 6830
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v11, "pref_camera_savepath_key"

    const-string v12, "0"

    .line 6831
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 6830
    invoke-static {v10}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 6832
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 6833
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    .line 6836
    :cond_7
    const-string v10, "chroma-flash"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 6837
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6840
    :cond_8
    const-string v10, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 6841
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "chroma-flash"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6842
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_scenemode_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6845
    :cond_9
    const-string v10, "pref_camera_hdr_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6846
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6849
    :cond_a
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004c

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6851
    .local v9, "ubiFocusOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004e

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6853
    .local v1, "chromaFlashOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004f

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6855
    .local v4, "optiZoomOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004d

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6857
    .local v5, "reFocusOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0050

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6859
    .local v2, "fssrOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0051

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6861
    .local v8, "truePortraitOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0052

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6863
    .local v3, "multiTouchFocusOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0053

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6865
    .local v7, "stillMoreOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0040

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6867
    .local v0, "advancedFeatureOff":Ljava/lang/String;
    const-string v10, "opti-zoom"

    invoke-static {p1, v10, v4}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "af-bracket"

    .line 6868
    invoke-static {p1, v10, v9}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "FSSR"

    .line 6869
    invoke-static {p1, v10, v2}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "true-portrait"

    .line 6870
    invoke-static {p1, v10, v8}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "multi-touch-focus"

    .line 6871
    invoke-static {p1, v10, v3}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "still-more"

    .line 6872
    invoke-static {p1, v10, v7}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "re-focus"

    .line 6873
    invoke-static {p1, v10, v5}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "pref_camera_advanced_features_key"

    .line 6874
    invoke-static {p1, v10, v0}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 6875
    :cond_b
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e03d1

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v10

    .line 6876
    invoke-virtual {v10}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 6879
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 6987
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 6988
    return-void
.end method

.method public declared-synchronized onShutterButtonClick()V
    .locals 8

    .prologue
    .line 3978
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3979
    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v4, v4, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 4075
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4001
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 4003
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 4004
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough space or storage not ready. remaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4005
    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4004
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3978
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 4008
    :cond_2
    :try_start_2
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShutterButtonClick: mCameraState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v5, "hdr"

    if-ne v4, v5, :cond_3

    .line 4014
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 4016
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->buttonBokeh(Z)V

    .line 4019
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 4020
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 4024
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_4

    .line 4025
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->hideTSMakeUp()V

    .line 4030
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_5

    .line 4031
    iget v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v5, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v4, v5, :cond_8

    .line 4032
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 4043
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    :cond_7
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_9

    .line 4046
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 4034
    :cond_8
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    goto :goto_1

    .line 4050
    :cond_9
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_timer_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0368

    .line 4052
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4050
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4053
    .local v2, "timer":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_timer_sound_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0369

    .line 4054
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4053
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0372

    .line 4055
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4057
    .local v0, "playSound":Z
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4060
    .local v1, "seconds":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4061
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 4063
    :cond_a
    if-lez v1, :cond_b

    .line 4064
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_zsl_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e002a

    .line 4065
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4064
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4066
    .local v3, "zsl":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pref_camera_zsl_key"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 4067
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v1, v0}, Lcom/android/camera/PhotoUI;->startCountDown(IZ)V

    .line 4073
    .end local v3    # "zsl":Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCancelLongshot:Z

    goto/16 :goto_0

    .line 4069
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 4070
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initiateSnap()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonFocus(Z)V
    .locals 6
    .param p1, "pressed"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3909
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3910
    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v1, :cond_2

    .line 3914
    :cond_0
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonFocus error case mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCameraDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mPaused ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    :cond_1
    :goto_0
    return-void

    .line 3919
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3921
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsAILongShotDoMoreOne:Z

    .line 3923
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_9

    .line 3924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 3925
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshot(Z)V

    .line 3926
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 3927
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    .line 3928
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3929
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 3952
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3954
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3956
    :cond_4
    if-eqz p1, :cond_a

    .line 3957
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    .line 3966
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_longshot_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0200

    .line 3967
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3966
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3968
    .local v0, "longshot_enable":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-nez v1, :cond_1

    .line 3969
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mIsAILongShotDoMoreOne:Z

    .line 3971
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setPreviewCallback()V

    goto :goto_0

    .line 3931
    .end local v0    # "longshot_enable":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3933
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3934
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 3939
    :goto_3
    const-string v1, "continuous-picture"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3940
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    .line 3939
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3941
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3943
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    goto :goto_1

    .line 3952
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3936
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    goto :goto_3

    .line 3947
    :cond_9
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3948
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 3949
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->capture()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 3961
    :cond_a
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3962
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto/16 :goto_2
.end method

.method public onShutterButtonLongClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 4116
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 4119
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x3c00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 4120
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough space or storage not ready. remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4121
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4120
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    :cond_0
    :goto_0
    return-void

    .line 4125
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4130
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCancelLongshot:Z

    if-nez v2, :cond_0

    .line 4133
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v2, v6, :cond_2

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4135
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_longshot_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0200

    .line 4137
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4135
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4139
    .local v1, "longshot_enable":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longshot_enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4141
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isLongSaveEnabled()Z

    move-result v0

    .line 4142
    .local v0, "enable":Z
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    .line 4145
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4146
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 4149
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isLongshotNeedCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4152
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 4153
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4154
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    goto :goto_0

    .line 4158
    .end local v0    # "enable":Z
    :cond_4
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 4625
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 4639
    :cond_0
    :goto_0
    return-void

    .line 4632
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z

    if-eqz v0, :cond_0

    .line 4636
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 4637
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4638
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 3801
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e020a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1631
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1632
    return-void

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    .line 1627
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1628
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 6938
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 6939
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 6993
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 7007
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 6994
    .restart local p1    # "index":I
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 6995
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 6996
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 6997
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6998
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 7001
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 7002
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 7003
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7004
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 7005
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    .end local p1    # "index":I
    monitor-exit v2

    goto :goto_0

    .line 7006
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "p":Landroid/hardware/Camera$Parameters;
    .restart local p1    # "index":I
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "requestedZoom"    # F

    .prologue
    .line 7012
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 7013
    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 7016
    :cond_0
    return-void
.end method

.method public reinit()V
    .locals 3

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1192
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 1196
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 1197
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1198
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1199
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 4

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 1612
    :cond_0
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Camera not yet initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :goto_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutCameraOrientation()V

    .line 1616
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1617
    .local v0, "size":Landroid/hardware/Camera$Size;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using preview width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "& height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->setAspectRatio(F)V

    goto :goto_0
.end method

.method public saveYUVtoPicture([BIIII)[B
    .locals 10
    .param p1, "data"    # [B
    .param p2, "strideW"    # I
    .param p3, "strideH"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 7358
    const/4 v7, 0x0

    .line 7359
    .local v7, "jpegData":[B
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 7361
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    .line 7363
    .local v8, "jpegQuality":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7364
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v8, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 7365
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 7366
    return-object v7
.end method

.method public sceneDetect(Landroid/graphics/Bitmap;I)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 9
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "ori"    # I

    .prologue
    .line 7787
    const-string v6, "CAM_PhotoModule"

    const-string v7, "sceneDetect bitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7788
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mDetector:Lcom/asus/scenedetectlib/detector/SceneDetector;

    invoke-virtual {v6, p1, p2}, Lcom/asus/scenedetectlib/detector/SceneDetector;->recognizeImage(Landroid/graphics/Bitmap;I)Ljava/util/List;

    move-result-object v2

    .line 7789
    .local v2, "mRecognitions":Ljava/util/List;, "Ljava/util/List<+Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;>;"
    if-nez v2, :cond_0

    .line 7790
    sget-object v4, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 7804
    :goto_0
    return-object v4

    .line 7792
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 7793
    .local v1, "length":I
    const/4 v3, 0x0

    .line 7794
    .local v3, "maxConfidence":F
    sget-object v4, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 7795
    .local v4, "maxType":Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7796
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    .line 7797
    .local v5, "sceneRecognition":Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", scene:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7798
    iget v6, v5, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    .line 7799
    iget-object v4, v5, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 7800
    iget v3, v5, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    .line 7795
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7803
    .end local v5    # "sceneRecognition":Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
    :cond_2
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sceneDetect result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sceneDetect([BIIIII)Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    .locals 13
    .param p1, "yuv"    # [B
    .param p2, "ori"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I
    .param p6, "scanline"    # I

    .prologue
    .line 7766
    const-string v0, "CAM_PhotoModule"

    const-string v1, "sceneDetect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetector:Lcom/asus/scenedetectlib/detector/SceneDetector;

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/asus/scenedetectlib/detector/SceneDetector;->recognizeImage([BIIIII)Ljava/util/List;

    move-result-object v9

    .line 7768
    .local v9, "mRecognitions":Ljava/util/List;, "Ljava/util/List<+Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/Recognition;>;"
    if-nez v9, :cond_0

    .line 7769
    sget-object v11, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 7783
    :goto_0
    return-object v11

    .line 7771
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 7772
    .local v8, "length":I
    const/4 v10, 0x0

    .line 7773
    .local v10, "maxConfidence":F
    sget-object v11, Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;->OTHERS:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 7774
    .local v11, "maxType":Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_2

    .line 7775
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;

    .line 7776
    .local v12, "sceneRecognition":Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    iget v0, v12, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    .line 7778
    iget-object v11, v12, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->sceneType:Lcom/asus/scenedetectlib/AISceneDetectInterface/SceneType;

    .line 7779
    iget v10, v12, Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;->confidence:F

    .line 7774
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7782
    .end local v12    # "sceneRecognition":Lcom/asus/scenedetectlib/AISceneDetectInterface/recognition/SceneRecognition;
    :cond_2
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sceneDetect result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1495
    .local v0, "pref":Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7083
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    .line 7084
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 3240
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 3241
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1344
    return-void
.end method

.method setPreviewFrameLayoutCameraOrientation()V
    .locals 3

    .prologue
    .line 1600
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v1, v2

    .line 1602
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->cameraOrientationPreviewResize(Z)V

    .line 1607
    :goto_0
    return-void

    .line 1605
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->cameraOrientationPreviewResize(Z)V

    goto :goto_0
.end method

.method public setProParamChanged(Z)V
    .locals 3
    .param p1, "changed"    # Z

    .prologue
    .line 4784
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4785
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4786
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "proParamChanged"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4787
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4788
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1723
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1725
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v2, v1, :cond_0

    .line 1727
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    .line 1728
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1729
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v2, v3

    .line 1730
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/PhotoUI;->onStartFaceDetection(IZ)V

    .line 1732
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1733
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 1730
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1739
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1742
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1743
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 1744
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1745
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onStopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4898
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4899
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 4902
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4903
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 4904
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 4906
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    if-eqz v0, :cond_2

    .line 4907
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer:[B

    .line 4909
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    if-eqz v0, :cond_3

    .line 4910
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewBuffer2:[B

    .line 4913
    :cond_3
    return-void
.end method

.method public switchInternalStorage()V
    .locals 3

    .prologue
    .line 7326
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 7327
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7329
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 7330
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 7331
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 7332
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    .line 7333
    return-void
.end method

.method public transYUVtoBitmap([BIIIII)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B
    .param p2, "strideW"    # I
    .param p3, "strideH"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "ori"    # I

    .prologue
    const/4 v8, 0x0

    .line 7808
    const/4 v7, 0x0

    .line 7809
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 7811
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7812
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 7813
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v1, v8, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 7814
    return-object v7
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 4570
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4571
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 4573
    :cond_0
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 4171
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 1331
    return-void
.end method
