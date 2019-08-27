.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
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
        Lcom/android/camera/PhotoModule$SavingThread;,
        Lcom/android/camera/PhotoModule$StartPreviewThread;,
        Lcom/android/camera/PhotoModule$OpenCameraThread;,
        Lcom/android/camera/PhotoModule$MultiPPCallback;
    }
.end annotation


# static fields
.field private static final ADD_NS_BUFFER:I = 0xf

.field private static final BEAUTY:I = 0x4

.field private static final CAMERA_DISABLED:I = 0xa

.field private static final CAMERA_OPEN_DONE:I = 0x8

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final DEFAULT_BRIGHTNESS:I = 0x3

.field private static final DEPTH_EFFECT_SUCCESS:I = 0x1

.field private static final DUAL_BEAUTY:I = 0x5

.field private static final DUAL_BOKEH:I = 0x2

.field private static final DUMP_3DNR:Z = false

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final GET_RESULT_3RD:I = 0x11

.field private static final GET_RESULT_FORCED:I = 0x10

.field private static final INSTANT_CAPTURE:I = 0xe

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_QC_RAW_PICUTRE_SIZE:Ljava/lang/String; = "raw-size"

.field private static final LONGSHOT_CANCEL_THRESHOLD:I = 0x2800000

.field private static final LOW_COST_BEAUTY_PARAM_SOFTEN:I = 0x14

.field private static final LOW_COST_BEAUTY_PARAM_WHITEN:I = 0x14

.field private static final LOW_LIGHT:I = 0x4

.field private static final LUX_IDX_TABLE_HI1333:[I

.field private static final LUX_IDX_TABLE_HI846:[I

.field private static final LUX_IDX_TABLE_OV13855:[I

.field private static final LUX_IDX_TABLE_OV16880:[I

.field private static final LUX_IDX_TABLE_OV16885:[I

.field private static final LUX_IDX_TABLE_OV8856:[I

.field private static final MANUAL_EXPOSURE:I = 0x4

.field private static final MANUAL_FOCUS:I = 0x1

.field private static final MANUAL_WB:I = 0x2

.field private static final MAXIMUM_BRIGHTNESS:I = 0x6

.field private static final MAX_SCE_FACTOR:I = 0xa

.field private static final MAX_SHARPNESS_LEVEL:I = 0x6

.field private static final MAX_ZOOM:I = 0xa

.field private static final MINIMUM_BRIGHTNESS:I = 0x0

.field private static final MIN_SCE_FACTOR:I = -0xa

.field private static final MSG_ENABLE_SHUTTER:I = 0x13

.field private static final MULTI_TIMEOUT:I = 0xbb8

.field private static final NO_DEPTH_EFFECT:I = 0x0

.field private static final NS_ALIGN:I = 0x40

.field private static final NS_MAX_NUM:I = 0x4

.field private static final NS_METADATA:I = 0x65

.field private static final NS_PARAMS_HI1333:[[I

.field private static final NS_PARAMS_HI846:[[I

.field private static final NS_PARAMS_OV13855:[[I

.field private static final NS_PARAMS_OV16880:[[I

.field private static final NS_PARAMS_OV16885:[[I

.field private static final NS_PARAMS_OV8856:[[I

.field private static final NS_STARTUP_THRESHOLD:I = 0x320

.field private static final ON_PREVIEW_STARTED:I = 0xd

.field private static final ON_RESUME_TASKS_DELAY_MSEC:I = 0x14

.field private static final OPEN_CAMERA_FAIL:I = 0x9

.field private static final PERSISI_BOKEH_DEBUG:Ljava/lang/String; = "persist.camera.bokeh.debug"

.field private static final PERSIST_BOKEH_DEBUG_CHECK:Z

.field private static final PERSIST_SKIP_MEM_CHECK:Z

.field public static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final REQUEST_CROP:I = 0x3e8

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

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"

.field public static statsdata:[I


# instance fields
.field private SCE_FACTOR_STEP:I

.field private SECONDARY_SERVER_MEM:J

.field private brightnessProgressBar:Landroid/widget/ProgressBar;

.field exifraw:Lcom/android/camera/exif/ExifInterface;

.field private isTNREnabled:Z

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

.field private mBurstSnapNum:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mCameraPreviewParamsReady:Z

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mCurrTouchAfAec:Ljava/lang/String;

.field private mDebugUri:Landroid/net/Uri;

.field private mDepthSuccess:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

.field private mDualBokeh:Z

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFeatureMask:I

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private mGData:[F

.field private mGraphView:Lcom/android/camera/GraphView;

.field private mHQAlgoManager:Lcom/android/camera/MultiPPManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeading:I

.field public mHiston:Z

.field private mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mInstantCaptureSnapShot:Z

.field private mIs3dnrMode:Z

.field private mIsBokehMode:Z

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegFileSizeEstimation:I

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastJpegData:[B

.field private mLastJpegOrientation:I

.field private mLastPhotoTakenWithRefocus:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mLocationPromptTriggered:Z

.field private mLongPressWithoutSnap:Z

.field private mLongShotCaptureCount:I

.field private mLongShotCaptureCountLimit:I

.field private mLongshotActive:Z

.field private mLongshotSave:Z

.field private mLowCostBeauty:Z

.field private mMData:[F

.field private mManual3AEnabled:I

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private final mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private final mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

.field private mNSBufferCount:I

.field private mNSCount:I

.field private mNSExifGot:Z

.field private mNSFlashFired:Z

.field private mNSHeight:I

.field private mNSStrideH:I

.field private mNSStrideW:I

.field private mNSWidth:I

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

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

.field private mPreviewRestartSupport:Z

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

.field private mTouchAfAecFlag:Z

.field private mUI:Lcom/android/camera/PhotoUI;

.field private mUpdateSet:I

.field private mZoomIdxTbl:[I

.field private mZoomValue:I

.field private mbrightness:I

.field private mbrightness_step:I

.field private mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

.field private selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    .line 171
    const/16 v1, 0x101

    new-array v1, v1, [I

    sput-object v1, Lcom/android/camera/PhotoModule;->statsdata:[I

    .line 262
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isSkipMemoryCheckEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/PhotoModule;->PERSIST_SKIP_MEM_CHECK:Z

    .line 265
    const-string v1, "persist.camera.bokeh.debug"

    .line 266
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/PhotoModule;->PERSIST_BOKEH_DEBUG_CHECK:Z

    .line 575
    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI1333:[I

    .line 576
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV13855:[I

    .line 577
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI846:[I

    .line 578
    const/16 v2, 0x8

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    sput-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV8856:[I

    .line 579
    new-array v3, v2, [I

    fill-array-data v3, :array_4

    sput-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16880:[I

    .line 580
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    sput-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16885:[I

    .line 581
    const/4 v3, 0x6

    new-array v4, v3, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v0

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    const/4 v7, 0x1

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    const/4 v8, 0x2

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_9

    const/4 v9, 0x3

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_b

    const/4 v10, 0x5

    aput-object v6, v4, v10

    sput-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI1333:[[I

    .line 589
    new-array v4, v3, [[I

    new-array v6, v5, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v0

    new-array v6, v5, [I

    fill-array-data v6, :array_d

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_e

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_f

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_10

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v10

    sput-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV13855:[[I

    .line 597
    new-array v4, v3, [[I

    new-array v6, v5, [I

    fill-array-data v6, :array_12

    aput-object v6, v4, v0

    new-array v6, v5, [I

    fill-array-data v6, :array_13

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_14

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_15

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_16

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_17

    aput-object v6, v4, v10

    sput-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI846:[[I

    .line 605
    new-array v4, v1, [[I

    new-array v6, v5, [I

    fill-array-data v6, :array_18

    aput-object v6, v4, v0

    new-array v6, v5, [I

    fill-array-data v6, :array_19

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_1a

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_1b

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_1c

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_1d

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_1e

    aput-object v6, v4, v3

    sput-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV8856:[[I

    .line 614
    new-array v4, v1, [[I

    new-array v6, v5, [I

    fill-array-data v6, :array_1f

    aput-object v6, v4, v0

    new-array v6, v5, [I

    fill-array-data v6, :array_20

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_21

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_22

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_23

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_24

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_25

    aput-object v6, v4, v3

    sput-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16880:[[I

    .line 623
    new-array v2, v2, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_26

    aput-object v4, v2, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_27

    aput-object v0, v2, v7

    new-array v0, v5, [I

    fill-array-data v0, :array_28

    aput-object v0, v2, v8

    new-array v0, v5, [I

    fill-array-data v0, :array_29

    aput-object v0, v2, v9

    new-array v0, v5, [I

    fill-array-data v0, :array_2a

    aput-object v0, v2, v5

    new-array v0, v5, [I

    fill-array-data v0, :array_2b

    aput-object v0, v2, v10

    new-array v0, v5, [I

    fill-array-data v0, :array_2c

    aput-object v0, v2, v3

    new-array v0, v5, [I

    fill-array-data v0, :array_2d

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16885:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x122
        0x140
        0x15e
        0x177
        0x190
        0x1ae
        0x1fe
    .end array-data

    :array_1
    .array-data 4
        0x12c
        0x145
        0x163
        0x172
        0x190
        0x1cc
        0x1fe
    .end array-data

    :array_2
    .array-data 4
        0x127
        0x131
        0x139
        0x147
        0x168
        0x190
        0x1e0
    .end array-data

    :array_3
    .array-data 4
        0x140
        0x14a
        0x154
        0x15e
        0x174
        0x190
        0x1ae
        0x1f4
    .end array-data

    :array_4
    .array-data 4
        0x143
        0x154
        0x16b
        0x17d
        0x18e
        0x1a6
        0x1cc
        0x208
    .end array-data

    :array_5
    .array-data 4
        0x127
        0x140
        0x154
        0x16b
        0x17d
        0x18e
        0x1a6
        0x1cc
        0x1f4
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x1
        0x20
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x5
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

    :array_b
    .array-data 4
        0x6
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
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x0
        0x20
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x0
        0x1e
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x0
        0x1e
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x3
        0x20
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x3
        0x20
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x2
        0x20
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1
        0x1c
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x9
        0x1
        0x1a
        0x1
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x7
        0x3
        0x20
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x7
        0x3
        0x20
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x8
        0x3
        0x1e
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x9
        0x2
        0x1c
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0xf
        0x20
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0xf
        0x20
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x3
        0xf
        0x21
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x4
        0xf
        0x23
        0x1
    .end array-data

    :array_23
    .array-data 4
        0x5
        0x10
        0x26
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x10
        0x27
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x7
        0x10
        0x27
        0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x5
        0x20
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x7
        0x5
        0x20
        0x1
    .end array-data

    :array_28
    .array-data 4
        0x7
        0x6
        0x20
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x7
        0x7
        0x20
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x7
        0x9
        0x20
        0x1
    .end array-data

    :array_2b
    .array-data 4
        0x8
        0xb
        0x22
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x8
        0xc
        0x24
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x8
        0xd
        0x24
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 164
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    .line 165
    iput v0, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    .line 166
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 226
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 245
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    .line 247
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    .line 248
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    .line 253
    iput v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 260
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 270
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 271
    iput v1, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    .line 280
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/camera/PhotoModule;->SCE_FACTOR_STEP:I

    .line 282
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 295
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 305
    iput v0, p0, Lcom/android/camera/PhotoModule;->mLastJpegOrientation:I

    .line 307
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 309
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    .line 310
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    .line 312
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 320
    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSCount:I

    .line 321
    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 322
    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 323
    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 324
    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 325
    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 326
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 327
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    .line 330
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 333
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 336
    iput v0, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 337
    new-instance v5, Lcom/android/camera/PhotoModule$MultiPPCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$MultiPPCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

    .line 374
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 377
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 391
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 460
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    .line 486
    iput v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 487
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 492
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    .line 494
    new-instance v5, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 496
    new-instance v5, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 498
    new-instance v5, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 500
    nop

    .line 501
    sget-boolean v5, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v5, :cond_0

    .line 502
    new-instance v5, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    goto :goto_0

    .line 503
    :cond_0
    move-object v5, v6

    :goto_0
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 505
    new-instance v5, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v5}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 506
    new-instance v5, Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$StatsCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

    .line 507
    new-instance v5, Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/PhotoModule$MetaDataCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    .line 528
    sget-object v5, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 529
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 531
    new-instance v5, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 532
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 538
    new-array v5, v3, [F

    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .line 539
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    .line 540
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mR:[F

    .line 541
    iput v2, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 544
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    .line 546
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 548
    iput v0, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 552
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    .line 554
    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    .line 555
    iput v2, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    .line 559
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 560
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 561
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 571
    iput-object v6, p0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 688
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 2311
    new-instance v0, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2321
    new-instance v0, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2341
    new-instance v0, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 6394
    new-instance v0, Lcom/android/camera/PhotoModule$37;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$37;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    return-void

    nop

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
.end method

.method private UpdateManualExposureSettings()V
    .locals 32

    .line 5763
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 5764
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 5765
    .local v9, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 5766
    .local v10, "linear":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5767
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 5768
    .local v11, "ISOtext":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 5769
    .local v12, "ISOinput":Landroid/widget/EditText;
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 5770
    .local v13, "ExpTimeText":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 5771
    .local v14, "ExpTimeInput":Landroid/widget/EditText;
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 5772
    const/16 v15, 0x2002

    .line 5773
    .local v15, "floatType":I
    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 5774
    const-string v0, "Manual Exposure Settings"

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5775
    const-string v0, "Cancel"

    new-instance v1, Lcom/android/camera/PhotoModule$33;

    invoke-direct {v1, v8}, Lcom/android/camera/PhotoModule$33;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5783
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5784
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "min-iso"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 5785
    .local v7, "minISO":I
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "max-iso"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 5786
    .local v6, "maxISO":I
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v16

    .line 5787
    .local v16, "isoMode":Ljava/lang/String;
    const-string v17, "manual"

    .line 5788
    .local v17, "isoManual":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "cur-iso"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5789
    .local v5, "currentISO":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 5790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current ISO is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5793
    :cond_0
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "min-exposure-time"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5794
    .local v4, "minExpTime":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "max-exposure-time"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5795
    .local v3, "maxExpTime":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "cur-exposure-time"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5796
    .local v2, "currentExpTime":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 5797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current exposure time is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5800
    :cond_1
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5802
    .local v1, "isoPriority":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v2

    const v2, 0x7f0e0058

    .end local v2    # "currentExpTime":Ljava/lang/String;
    .local v18, "currentExpTime":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5804
    .local v2, "expTimePriority":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v19, v5

    const v5, 0x7f0e0059

    .end local v5    # "currentISO":Ljava/lang/String;
    .local v19, "currentISO":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5806
    .local v5, "userSetting":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move/from16 v20, v15

    const-string v15, "pref_camera_manual_exp_key"

    .end local v15    # "floatType":I
    .local v20, "floatType":I
    move-object/from16 v21, v5

    iget-object v5, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v5    # "userSetting":Ljava/lang/String;
    .local v21, "userSetting":Ljava/lang/String;
    move-object/from16 v22, v13

    const v13, 0x7f0e0056

    .line 5808
    .end local v13    # "ExpTimeText":Landroid/widget/TextView;
    .local v22, "ExpTimeText":Landroid/widget/TextView;
    invoke-virtual {v5, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5806
    invoke-virtual {v0, v15, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5809
    .local v13, "manualExposureMode":Ljava/lang/String;
    const-string v0, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "manual Exposure Mode selected = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter ISO in the range of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5812
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5813
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5814
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5815
    const-string v0, "Ok"

    new-instance v5, Lcom/android/camera/PhotoModule$34;

    invoke-direct {v5, v8, v12, v6, v7}, Lcom/android/camera/PhotoModule$34;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V

    invoke-virtual {v9, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5838
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5937
    move-object/from16 v23, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v30, v6

    move/from16 v31, v7

    move-object/from16 v29, v10

    move-object/from16 v25, v21

    move-object/from16 v15, v22

    .end local v1    # "isoPriority":Ljava/lang/String;
    .end local v2    # "expTimePriority":Ljava/lang/String;
    .end local v3    # "maxExpTime":Ljava/lang/String;
    .end local v4    # "minExpTime":Ljava/lang/String;
    .end local v6    # "maxISO":I
    .end local v7    # "minISO":I
    .end local v10    # "linear":Landroid/widget/LinearLayout;
    .end local v22    # "ExpTimeText":Landroid/widget/TextView;
    .local v15, "ExpTimeText":Landroid/widget/TextView;
    .local v21, "isoPriority":Ljava/lang/String;
    .local v23, "expTimePriority":Ljava/lang/String;
    .local v25, "userSetting":Ljava/lang/String;
    .local v27, "maxExpTime":Ljava/lang/String;
    .local v28, "minExpTime":Ljava/lang/String;
    .local v29, "linear":Landroid/widget/LinearLayout;
    .local v30, "maxISO":I
    .local v31, "minISO":I
    :goto_0
    move-object/from16 v21, v1

    goto/16 :goto_1

    .line 5839
    .end local v15    # "ExpTimeText":Landroid/widget/TextView;
    .end local v23    # "expTimePriority":Ljava/lang/String;
    .end local v25    # "userSetting":Ljava/lang/String;
    .end local v27    # "maxExpTime":Ljava/lang/String;
    .end local v28    # "minExpTime":Ljava/lang/String;
    .end local v29    # "linear":Landroid/widget/LinearLayout;
    .end local v30    # "maxISO":I
    .end local v31    # "minISO":I
    .restart local v1    # "isoPriority":Ljava/lang/String;
    .restart local v2    # "expTimePriority":Ljava/lang/String;
    .restart local v3    # "maxExpTime":Ljava/lang/String;
    .restart local v4    # "minExpTime":Ljava/lang/String;
    .restart local v6    # "maxISO":I
    .restart local v7    # "minISO":I
    .restart local v10    # "linear":Landroid/widget/LinearLayout;
    .local v21, "userSetting":Ljava/lang/String;
    .restart local v22    # "ExpTimeText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter exposure time in the range of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ms to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5842
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5843
    move-object/from16 v15, v22

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5844
    .end local v22    # "ExpTimeText":Landroid/widget/TextView;
    .restart local v15    # "ExpTimeText":Landroid/widget/TextView;
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5845
    const-string v0, "Ok"

    new-instance v5, Lcom/android/camera/PhotoModule$35;

    invoke-direct {v5, v8, v14, v3, v4}, Lcom/android/camera/PhotoModule$35;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5875
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5937
    move-object/from16 v23, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v30, v6

    move/from16 v31, v7

    move-object/from16 v29, v10

    move-object/from16 v25, v21

    goto :goto_0

    .line 5876
    .end local v15    # "ExpTimeText":Landroid/widget/TextView;
    .restart local v22    # "ExpTimeText":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v15, v22

    .end local v22    # "ExpTimeText":Landroid/widget/TextView;
    .restart local v15    # "ExpTimeText":Landroid/widget/TextView;
    move-object/from16 v5, v21

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v21    # "userSetting":Ljava/lang/String;
    .restart local v5    # "userSetting":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 5877
    const-string v0, "Full manual mode - Enter both ISO and Exposure Time"

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5878
    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v23, v1

    iget-object v1, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v1    # "isoPriority":Ljava/lang/String;
    .local v23, "isoPriority":Ljava/lang/String;
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 5879
    .local v1, "ISORangeText":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v24, v2

    iget-object v2, v8, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v2    # "expTimePriority":Ljava/lang/String;
    .local v24, "expTimePriority":Ljava/lang/String;
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 5880
    .local v2, "ExpTimeRangeText":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v5

    const-string v5, "Enter ISO in the range of "

    .end local v5    # "userSetting":Ljava/lang/String;
    .restart local v25    # "userSetting":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter exposure time in the range of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ms to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5883
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5884
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5885
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5886
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5887
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5888
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5889
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5890
    const-string v5, "Ok"

    new-instance v0, Lcom/android/camera/PhotoModule$36;

    move-object/from16 v26, v0

    move-object/from16 v22, v1

    move-object/from16 v21, v23

    move-object v1, v8

    .end local v1    # "ISORangeText":Landroid/widget/TextView;
    .end local v23    # "isoPriority":Ljava/lang/String;
    .local v21, "isoPriority":Ljava/lang/String;
    .local v22, "ISORangeText":Landroid/widget/TextView;
    move-object/from16 v23, v24

    move-object/from16 v24, v2

    move-object v2, v12

    .end local v2    # "ExpTimeRangeText":Landroid/widget/TextView;
    .local v23, "expTimePriority":Ljava/lang/String;
    .local v24, "ExpTimeRangeText":Landroid/widget/TextView;
    move-object/from16 v27, v3

    move-object v3, v14

    .end local v3    # "maxExpTime":Ljava/lang/String;
    .restart local v27    # "maxExpTime":Ljava/lang/String;
    move-object/from16 v28, v4

    move-object/from16 v4, v27

    .end local v4    # "minExpTime":Ljava/lang/String;
    .restart local v28    # "minExpTime":Ljava/lang/String;
    move-object/from16 v29, v10

    move-object v10, v5

    move v5, v6

    .end local v10    # "linear":Landroid/widget/LinearLayout;
    .restart local v29    # "linear":Landroid/widget/LinearLayout;
    move/from16 v30, v6

    move v6, v7

    .end local v6    # "maxISO":I
    .restart local v30    # "maxISO":I
    move/from16 v31, v7

    move-object/from16 v7, v28

    .end local v7    # "minISO":I
    .restart local v31    # "minISO":I
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/PhotoModule$36;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5928
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5929
    .end local v22    # "ISORangeText":Landroid/widget/TextView;
    .end local v24    # "ExpTimeRangeText":Landroid/widget/TextView;
    goto :goto_1

    .line 5930
    .end local v21    # "isoPriority":Ljava/lang/String;
    .end local v23    # "expTimePriority":Ljava/lang/String;
    .end local v25    # "userSetting":Ljava/lang/String;
    .end local v27    # "maxExpTime":Ljava/lang/String;
    .end local v28    # "minExpTime":Ljava/lang/String;
    .end local v29    # "linear":Landroid/widget/LinearLayout;
    .end local v30    # "maxISO":I
    .end local v31    # "minISO":I
    .local v1, "isoPriority":Ljava/lang/String;
    .local v2, "expTimePriority":Ljava/lang/String;
    .restart local v3    # "maxExpTime":Ljava/lang/String;
    .restart local v4    # "minExpTime":Ljava/lang/String;
    .restart local v5    # "userSetting":Ljava/lang/String;
    .restart local v6    # "maxISO":I
    .restart local v7    # "minISO":I
    .restart local v10    # "linear":Landroid/widget/LinearLayout;
    :cond_4
    move-object/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move-object/from16 v29, v10

    .end local v1    # "isoPriority":Ljava/lang/String;
    .end local v2    # "expTimePriority":Ljava/lang/String;
    .end local v3    # "maxExpTime":Ljava/lang/String;
    .end local v4    # "minExpTime":Ljava/lang/String;
    .end local v5    # "userSetting":Ljava/lang/String;
    .end local v6    # "maxISO":I
    .end local v7    # "minISO":I
    .end local v10    # "linear":Landroid/widget/LinearLayout;
    .restart local v21    # "isoPriority":Ljava/lang/String;
    .restart local v23    # "expTimePriority":Ljava/lang/String;
    .restart local v25    # "userSetting":Ljava/lang/String;
    .restart local v27    # "maxExpTime":Ljava/lang/String;
    .restart local v28    # "minExpTime":Ljava/lang/String;
    .restart local v29    # "linear":Landroid/widget/LinearLayout;
    .restart local v30    # "maxISO":I
    .restart local v31    # "minISO":I
    iget v0, v8, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v8, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5932
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "exposure-time"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5933
    iget-object v0, v8, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_iso_key"

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5934
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 5935
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5937
    :goto_1
    return-void
.end method

.method private UpdateManualFocusSettings()V
    .locals 25

    .line 5479
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 5480
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 5481
    .local v8, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 5482
    .local v9, "linear":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5483
    const-string v0, "Manual Focus Settings"

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5484
    const-string v0, "Cancel"

    new-instance v1, Lcom/android/camera/PhotoModule$26;

    invoke-direct {v1, v7}, Lcom/android/camera/PhotoModule$26;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5491
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 5492
    .local v10, "focusPositionText":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0068

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5494
    .local v11, "scaleMode":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5496
    .local v12, "diopterMode":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_manual_focus_key"

    iget-object v2, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 5498
    const v3, 0x7f0e0067

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5496
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5500
    .local v13, "manualFocusMode":Ljava/lang/String;
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualFocusMode selected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5502
    new-instance v0, Landroid/widget/SeekBar;

    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 5503
    .local v0, "focusbar":Landroid/widget/SeekBar;
    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "min-focus-pos-ratio"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5504
    .local v1, "minFocusPos":I
    iget-object v2, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "max-focus-pos-ratio"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 5506
    .local v2, "maxFocusPos":I
    iget-object v3, v7, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5507
    iget-object v3, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "cur-focus-scale"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5508
    .local v3, "CurFocusPos":I
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current focus position is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter focus position in the range of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5514
    new-instance v4, Lcom/android/camera/PhotoModule$27;

    invoke-direct {v4, v7, v10}, Lcom/android/camera/PhotoModule$27;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 5528
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5529
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5530
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5531
    const-string v4, "Ok"

    new-instance v5, Lcom/android/camera/PhotoModule$28;

    invoke-direct {v5, v7, v0}, Lcom/android/camera/PhotoModule$28;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/SeekBar;)V

    invoke-virtual {v8, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5545
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5546
    .end local v0    # "focusbar":Landroid/widget/SeekBar;
    .end local v1    # "minFocusPos":I
    .end local v2    # "maxFocusPos":I
    .end local v3    # "CurFocusPos":I
    nop

    .line 5605
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    goto/16 :goto_0

    .line 5546
    :cond_0
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5547
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "min-focus-pos-diopter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5548
    .local v14, "minFocusStr":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "max-focus-pos-diopter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 5549
    .local v15, "maxFocusStr":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 5550
    .local v5, "minFocusPos":D
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 5551
    .local v3, "maxFocusPos":D
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 5552
    .local v2, "input":Landroid/widget/EditText;
    const/16 v1, 0x2002

    .line 5553
    .local v1, "floatType":I
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 5554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    const-string v1, "Enter focus position in the range of "

    .end local v1    # "floatType":I
    .local v16, "floatType":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5557
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5558
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "cur-focus-diopter"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5559
    .local v1, "CurFocusPos":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v3

    const-string v3, "Current focus position is "

    .end local v3    # "maxFocusPos":D
    .local v17, "maxFocusPos":D
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5560
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5561
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5562
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5563
    const-string v3, "Ok"

    new-instance v4, Lcom/android/camera/PhotoModule$29;

    move-object v0, v4

    move-object/from16 v19, v1

    move-object v1, v7

    .end local v1    # "CurFocusPos":Ljava/lang/String;
    .local v19, "CurFocusPos":Ljava/lang/String;
    move-object/from16 v20, v2

    .end local v2    # "input":Landroid/widget/EditText;
    .local v20, "input":Landroid/widget/EditText;
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v9, v3

    move-object v10, v4

    move-wide/from16 v3, v17

    .end local v9    # "linear":Landroid/widget/LinearLayout;
    .end local v10    # "focusPositionText":Landroid/widget/TextView;
    .local v21, "linear":Landroid/widget/LinearLayout;
    .local v22, "focusPositionText":Landroid/widget/TextView;
    move-wide/from16 v23, v5

    .end local v5    # "minFocusPos":D
    .local v23, "minFocusPos":D
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/PhotoModule$29;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;DD)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5597
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5598
    .end local v14    # "minFocusStr":Ljava/lang/String;
    .end local v15    # "maxFocusStr":Ljava/lang/String;
    .end local v16    # "floatType":I
    .end local v17    # "maxFocusPos":D
    .end local v19    # "CurFocusPos":Ljava/lang/String;
    .end local v20    # "input":Landroid/widget/EditText;
    .end local v23    # "minFocusPos":D
    goto :goto_0

    .line 5599
    .end local v21    # "linear":Landroid/widget/LinearLayout;
    .end local v22    # "focusPositionText":Landroid/widget/TextView;
    .restart local v9    # "linear":Landroid/widget/LinearLayout;
    .restart local v10    # "focusPositionText":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v9    # "linear":Landroid/widget/LinearLayout;
    .end local v10    # "focusPositionText":Landroid/widget/TextView;
    .restart local v21    # "linear":Landroid/widget/LinearLayout;
    .restart local v22    # "focusPositionText":Landroid/widget/TextView;
    iget v0, v7, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v7, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5600
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, v7, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5601
    iget-object v0, v7, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_focusmode_key"

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5602
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 5603
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5605
    :goto_0
    return-void
.end method

.method private UpdateManualWBSettings()V
    .locals 30

    .line 5609
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 5610
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 5611
    .local v10, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 5612
    .local v11, "linear":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5613
    const-string v0, "Manual White Balance Settings"

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5614
    const-string v0, "Cancel"

    new-instance v1, Lcom/android/camera/PhotoModule$30;

    invoke-direct {v1, v9}, Lcom/android/camera/PhotoModule$30;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5622
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0060

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5624
    .local v12, "cctMode":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 5626
    .local v13, "rgbGainMode":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_manual_wb_key"

    iget-object v2, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 5628
    const v3, 0x7f0e005f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5626
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5629
    .local v14, "manualWBMode":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 5631
    const v3, 0x7f0e0388

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5629
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 5632
    .local v15, "wbPref":Ljava/lang/String;
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualWBMode selected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5634
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5635
    .local v0, "CCTtext":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5636
    .local v1, "CCTinput":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 5637
    iget-object v2, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "min-wb-cct"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 5638
    .local v2, "minCCT":I
    iget-object v3, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "max-wb-cct"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5641
    .local v3, "maxCCT":I
    iget-object v4, v9, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5642
    iget-object v4, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "wb-manual-cct"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5643
    .local v4, "currentCCT":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 5644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current CCT is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5646
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter CCT value in the range of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5647
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5648
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5649
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5650
    const-string v5, "Ok"

    new-instance v6, Lcom/android/camera/PhotoModule$31;

    invoke-direct {v6, v9, v1, v3, v2}, Lcom/android/camera/PhotoModule$31;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V

    invoke-virtual {v10, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5674
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5675
    .end local v0    # "CCTtext":Landroid/widget/TextView;
    .end local v1    # "CCTinput":Landroid/widget/EditText;
    .end local v2    # "minCCT":I
    .end local v3    # "maxCCT":I
    .end local v4    # "currentCCT":Ljava/lang/String;
    nop

    .line 5759
    move-object/from16 v25, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto/16 :goto_1

    .line 5675
    :cond_1
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5676
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 5677
    .local v7, "RGBtext":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 5678
    .local v8, "Rinput":Landroid/widget/EditText;
    const-string v0, "Enter R gain here"

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5679
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 5680
    .local v5, "Ginput":Landroid/widget/EditText;
    const-string v0, "Enter G gain here"

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5681
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, v9, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 5682
    .local v6, "Binput":Landroid/widget/EditText;
    const-string v0, "Enter B gain here"

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5684
    const/16 v4, 0x2002

    .line 5685
    .local v4, "floatType":I
    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 5686
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 5687
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 5689
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "min-wb-gain"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5690
    .local v3, "minGainStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 5691
    .local v1, "minGain":D
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v3

    const-string v3, "max-wb-gain"

    .end local v3    # "minGainStr":Ljava/lang/String;
    .local v16, "minGainStr":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5692
    .local v3, "maxGainStr":Ljava/lang/String;
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 5695
    .end local v13    # "rgbGainMode":Ljava/lang/String;
    .local v12, "maxGain":D
    .local v17, "cctMode":Ljava/lang/String;
    .local v18, "rgbGainMode":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5696
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v3

    const-string v3, "manual-wb-gains"

    .end local v3    # "maxGainStr":Ljava/lang/String;
    .local v19, "maxGainStr":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5697
    .local v3, "currentGains":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 5698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "Current RGB gains are "

    .end local v4    # "floatType":I
    .local v20, "floatType":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5701
    .end local v20    # "floatType":I
    .restart local v4    # "floatType":I
    :cond_2
    move/from16 v20, v4

    .end local v4    # "floatType":I
    .restart local v20    # "floatType":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter RGB gains in the range of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5703
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5704
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5705
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5706
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5707
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5708
    const-string v4, "Ok"

    new-instance v0, Lcom/android/camera/PhotoModule$32;

    move-object/from16 v21, v0

    move-wide/from16 v22, v1

    move-object v1, v9

    .end local v1    # "minGain":D
    .local v22, "minGain":D
    move-object v2, v8

    move-object/from16 v24, v3

    move-object v3, v5

    .end local v3    # "currentGains":Ljava/lang/String;
    .local v24, "currentGains":Ljava/lang/String;
    move-object/from16 v25, v11

    move-object v11, v4

    move-object v4, v6

    .end local v11    # "linear":Landroid/widget/LinearLayout;
    .local v25, "linear":Landroid/widget/LinearLayout;
    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-wide v5, v12

    .end local v5    # "Ginput":Landroid/widget/EditText;
    .end local v6    # "Binput":Landroid/widget/EditText;
    .local v26, "Ginput":Landroid/widget/EditText;
    .local v27, "Binput":Landroid/widget/EditText;
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-wide/from16 v7, v22

    .end local v7    # "RGBtext":Landroid/widget/TextView;
    .end local v8    # "Rinput":Landroid/widget/EditText;
    .local v28, "RGBtext":Landroid/widget/TextView;
    .local v29, "Rinput":Landroid/widget/EditText;
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/PhotoModule$32;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;DD)V

    invoke-virtual {v10, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5751
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5752
    .end local v12    # "maxGain":D
    .end local v16    # "minGainStr":Ljava/lang/String;
    .end local v19    # "maxGainStr":Ljava/lang/String;
    .end local v20    # "floatType":I
    .end local v22    # "minGain":D
    .end local v24    # "currentGains":Ljava/lang/String;
    .end local v26    # "Ginput":Landroid/widget/EditText;
    .end local v27    # "Binput":Landroid/widget/EditText;
    .end local v28    # "RGBtext":Landroid/widget/TextView;
    .end local v29    # "Rinput":Landroid/widget/EditText;
    goto :goto_1

    .line 5754
    .end local v17    # "cctMode":Ljava/lang/String;
    .end local v18    # "rgbGainMode":Ljava/lang/String;
    .end local v25    # "linear":Landroid/widget/LinearLayout;
    .restart local v11    # "linear":Landroid/widget/LinearLayout;
    .local v12, "cctMode":Ljava/lang/String;
    .restart local v13    # "rgbGainMode":Ljava/lang/String;
    :cond_3
    move-object/from16 v25, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v11    # "linear":Landroid/widget/LinearLayout;
    .end local v12    # "cctMode":Ljava/lang/String;
    .end local v13    # "rgbGainMode":Ljava/lang/String;
    .restart local v17    # "cctMode":Ljava/lang/String;
    .restart local v18    # "rgbGainMode":Ljava/lang/String;
    .restart local v25    # "linear":Landroid/widget/LinearLayout;
    iget v0, v9, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v9, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5755
    iget-object v0, v9, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_whitebalance_key"

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5756
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 5757
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 5759
    :goto_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->savePPPic([B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    return v0
.end method

.method static synthetic access$10300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$10500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10676(Lcom/android/camera/PhotoModule;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    return v0
.end method

.method static synthetic access$10700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;[BII)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->flipJpeg([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mLastJpegOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$SelfieThread;)Lcom/android/camera/PhotoModule$SelfieThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$SelfieThread;

    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onCameraOpened()V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    return p1
.end method

.method static synthetic access$5102(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isLongshotNeedCancel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    return v0
.end method

.method static synthetic access$5908(Lcom/android/camera/PhotoModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCountLimit:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isShutterSoundOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mRefocusSound:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/PhotoModule;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/DrawAutoHDR;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/camera/PhotoModule;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$7672(Lcom/android/camera/PhotoModule;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$7700(Lcom/android/camera/PhotoModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->adjustNSParams(II)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7802(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7902(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    return p1
.end method

.method static synthetic access$8100()Z
    .locals 1

    .line 146
    sget-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_BOKEH_DEBUG_CHECK:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    return v0
.end method

.method static synthetic access$8502(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    return p1
.end method

.method static synthetic access$8600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$8800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    return v0
.end method

.method static synthetic access$8802(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    return p1
.end method

.method static synthetic access$8900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$9102(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    return v0
.end method

.method static synthetic access$9406(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    return v0
.end method

.method static synthetic access$9500(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$9600(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/camera/PhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->saveToDebugUri([B)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    return v0
.end method

.method static synthetic access$9900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method public static addExifTags([BI)[B
    .locals 5
    .param p0, "jpeg"    # [B
    .param p1, "orientationInDegree"    # I

    .line 1787
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 1788
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifInterface;->addOrientationTag(I)Z

    .line 1789
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1791
    .local v1, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    goto :goto_0

    .line 1792
    :catch_0
    move-exception v2

    .line 1793
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1795
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private addIdleHandler()V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1360
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1361
    .local v0, "queue":Landroid/os/MessageQueue;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1363
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    return-void
.end method

.method private addNSCallbackBuffer()V
    .locals 3

    .line 6495
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNSCallbackBuffer, buffer count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6496
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v1}, Lcom/android/camera/MultiPPManager;->getNumOfShot()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 6497
    const-string v0, "CAM_PhotoModule"

    const-string v1, "NS buffer is enough"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    return-void

    .line 6500
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 6501
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x800

    .line 6502
    .local v0, "bufferSize":I
    new-array v1, v0, [B

    .line 6504
    .local v1, "buffer":[B
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1

    .line 6505
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    .line 6508
    :cond_1
    return-void
.end method

.method private adjustNSParams(II)V
    .locals 6
    .param p1, "lux"    # I
    .param p2, "cameraID"    # I

    .line 6435
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cameraModuleInfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 6436
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 6437
    .local v1, "line_one":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 6439
    .local v2, "line_two":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 6440
    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    .line 6441
    const-string v3, "ov13855"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 6442
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV13855:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV13855:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto/16 :goto_0

    .line 6443
    :cond_0
    const-string v3, "hi1333"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 6444
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI1333:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI1333:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto/16 :goto_0

    .line 6445
    :cond_1
    const-string v3, "ov16885"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 6446
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16885:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16885:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6448
    :cond_2
    const-string v3, "CAM_PhotoModule"

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6450
    :cond_3
    const/4 v3, 0x1

    if-ne p2, v3, :cond_7

    if-eqz v2, :cond_7

    .line 6451
    const-string v3, "ov8856"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 6452
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV8856:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV8856:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6453
    :cond_4
    const-string v3, "hi846"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 6454
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI846:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI846:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6455
    :cond_5
    const-string v3, "ov16880"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 6456
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16880:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16880:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6458
    :cond_6
    const-string v3, "CAM_PhotoModule"

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6461
    :cond_7
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6464
    :goto_0
    goto :goto_1

    .line 6463
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "line_one":Ljava/lang/String;
    .end local v2    # "line_two":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6465
    :goto_1
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .line 2451
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->animateFlash()V

    .line 2454
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .line 3901
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

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkDisplayRotation()V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 716
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    :cond_1
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .line 4053
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Close camera device."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4055
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4056
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 4057
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4059
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4063
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_1

    .line 4061
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    .line 4066
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 4067
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 4068
    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4069
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_2

    .line 4070
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 4074
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 4076
    return-void
.end method

.method private estimateJpegFileSize(Landroid/hardware/Camera$Size;Ljava/lang/String;)I
    .locals 5
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "quality"    # Ljava/lang/String;

    .line 4961
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 4962
    .local v0, "ratios":[I
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4964
    .local v1, "qualities":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 4965
    .local v2, "ratio":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 4966
    aget-object v4, v1, v3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4967
    aget v2, v0, v3

    .line 4968
    goto :goto_1

    .line 4965
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4972
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 4973
    const/4 v3, 0x0

    return v3

    .line 4975
    :cond_2
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/2addr v3, v2

    return v3
.end method

.method private flipJpeg([BII)[B
    .locals 9
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "jpegOrientation"    # I

    .line 1767
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1768
    .local v0, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1769
    .local v1, "m":Landroid/graphics/Matrix;
    const/16 v2, 0x10e

    if-eq p2, v2, :cond_0

    const/16 v2, 0x5a

    if-ne p2, v2, :cond_3

    .line 1771
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_2

    const/16 v4, 0xb4

    if-ne p3, v4, :cond_1

    goto :goto_0

    .line 1774
    :cond_1
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 1772
    :cond_2
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1777
    :cond_3
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object v2, v0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1778
    .local v2, "dstBitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1779
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 1780
    .local v3, "size":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1781
    .local v4, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1783
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "pictureFormat"    # Ljava/lang/String;

    .line 2730
    if-eqz p1, :cond_0

    const-string v0, "jpeg"

    .line 2731
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 2734
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .line 2738
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2739
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2742
    return v0

    .line 2744
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    return v1
.end method

.method private initializeCapabilities()V
    .locals 2

    .line 6114
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 6115
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 6116
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 6117
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 6118
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    .line 6120
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->initializeControlByIntent()V

    .line 947
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 948
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 950
    :cond_0
    return-void
.end method

.method private initializeFirstTime()V
    .locals 4

    .line 1290
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1297
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1299
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->initializeFirstTime()V

    .line 1300
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1303
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_1

    .line 1304
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1307
    :cond_1
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1308
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/GraphView;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    .line 1309
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/DrawAutoHDR;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    .line 1310
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    if-nez v2, :cond_2

    goto :goto_0

    .line 1313
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/GraphView;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    .line 1314
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    invoke-virtual {v2, p0}, Lcom/android/camera/DrawAutoHDR;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    goto :goto_1

    .line 1311
    :cond_3
    :goto_0
    const-string v2, "CAM_PhotoModule"

    const-string v3, "mGraphView or mDrawAutoHDR is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 1318
    const-string v2, "CAM_PhotoModule"

    const-string v3, "addIdleHandler in first time initialization"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    .line 1321
    return-void

    .line 1291
    .end local v0    # "recordLocation":Z
    .end local v1    # "s":Lcom/android/camera/MediaSaveService;
    :cond_4
    :goto_2
    return-void
.end method

.method private initializeFocusManager()V
    .locals 11

    .line 3828
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 3829
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    goto :goto_1

    .line 3831
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 3832
    .local v0, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v1, v0, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 3833
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3835
    .local v1, "defaultFocusModes":[Ljava/lang/String;
    new-instance v2, Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-boolean v8, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3837
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object v3, v2

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3839
    .end local v0    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    .end local v1    # "defaultFocusModes":[Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private initializeSecondTime()V
    .locals 4

    .line 1327
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1329
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1330
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1331
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_0

    .line 1332
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1334
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1335
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->showSwitcher()V

    .line 1338
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->initializeSecondTime(Landroid/hardware/Camera$Parameters;)V

    .line 1339
    return-void
.end method

.method private initiateSnap()V
    .locals 4

    .line 3481
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_selfie_flash_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3482
    const v3, 0x7f0e009f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3481
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 3483
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 3484
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3485
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->startSelfieFlash()V

    .line 3486
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    if-nez v0, :cond_1

    .line 3487
    new-instance v0, Lcom/android/camera/PhotoModule$SelfieThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$SelfieThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    .line 3488
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SelfieThread;->start()V

    goto :goto_0

    .line 3491
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 3493
    :cond_1
    :goto_0
    return-void
.end method

.method private isInstantCaptureEnabled()Z
    .locals 4

    .line 4232
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_instant_capture_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4234
    const v3, 0x7f0e006f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4232
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4235
    .local v0, "instantCapture":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4237
    const/4 v1, 0x0

    return v1

    .line 4239
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isLongshotNeedCancel()Z
    .locals 22

    .line 1404
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/camera/PhotoModule;->PERSIST_SKIP_MEM_CHECK:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1405
    return v2

    .line 1408
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 1409
    const-string v1, "CAM_PhotoModule"

    const-string v2, "current storage is full"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return v3

    .line 1412
    :cond_1
    iget-wide v4, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 1413
    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1415
    .local v1, "am":Landroid/app/ActivityManager;
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1416
    .local v4, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1417
    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v5, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    .line 1420
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v4    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 1421
    .local v4, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 1422
    .local v6, "maxMemory":J
    sub-long v8, v6, v4

    .line 1424
    .local v8, "remainMemory":J
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1425
    .local v1, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1426
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v10

    .line 1427
    .local v10, "info":[J
    aget-wide v11, v10, v3

    const/4 v13, 0x3

    aget-wide v14, v10, v13

    add-long/2addr v11, v14

    const-wide/16 v14, 0x400

    mul-long/2addr v11, v14

    .line 1429
    .local v11, "availMem":J
    iget-wide v13, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    cmp-long v13, v11, v13

    if-lez v13, :cond_4

    const-wide/32 v13, 0x2800000

    cmp-long v13, v8, v13

    if-gtz v13, :cond_3

    goto :goto_0

    .line 1439
    :cond_3
    return v2

    .line 1430
    :cond_4
    :goto_0
    const-string v13, "CAM_PhotoModule"

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

    iget-wide v3, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 1434
    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e01ff

    invoke-static {v3, v4, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1435
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1436
    const/4 v2, 0x1

    return v2
.end method

.method private isShutterSoundOn()Z
    .locals 3

    .line 3470
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_shuttersound_key"

    .line 3471
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 3472
    .local v0, "shutterSoundPref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3473
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3474
    const/4 v1, 0x0

    return v1

    .line 3476
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .line 6093
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6094
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 6095
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6096
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 12

    .line 3149
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 3150
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Lcom/android/camera/CameraHolder$CameraInfo;)V

    .line 3151
    .local v0, "settings":Lcom/android/camera/CameraSettings;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 3153
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    .line 3155
    .local v1, "numOfCams":I
    const-string v2, "CAM_PhotoModule"

    const-string v3, "loadCameraPreferences() updating camera_id pref"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_id_key"

    .line 3158
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 3162
    .local v2, "switchIconPref":Lcom/android/camera/IconListPreference;
    if-nez v2, :cond_0

    .line 3163
    return-void

    .line 3165
    :cond_0
    new-array v3, v1, [I

    .line 3166
    .local v3, "iconIds":[I
    new-array v4, v1, [Ljava/lang/String;

    .line 3167
    .local v4, "entries":[Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/String;

    .line 3168
    .local v5, "labels":[Ljava/lang/String;
    new-array v6, v1, [I

    .line 3170
    .local v6, "largeIconIds":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_2

    .line 3171
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v8

    aget-object v8, v8, v7

    .line 3172
    .local v8, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v9, v8, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 3173
    const v9, 0x7f0200f4

    aput v9, v3, v7

    .line 3174
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0344

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    .line 3175
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e03bf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 3176
    aput v9, v6, v7

    goto :goto_1

    .line 3178
    :cond_1
    const v9, 0x7f0200f6

    aput v9, v3, v7

    .line 3179
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0345

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    .line 3180
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e03c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 3181
    aput v9, v6, v7

    .line 3170
    .end local v8    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3185
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->setIconIds([I)V

    .line 3186
    invoke-virtual {v2, v4}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3187
    invoke-virtual {v2, v5}, Lcom/android/camera/IconListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 3188
    invoke-virtual {v2, v6}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    .line 3190
    return-void
.end method

.method private locationFirstRun()V
    .locals 3

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "enableRecordingLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 980
    const/4 v0, 0x1

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 986
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 990
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    .line 991
    .local v1, "backCameraId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 993
    return-void

    .line 996
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->enableRecordingLocation(Z)V

    .line 1002
    return-void

    .line 987
    .end local v1    # "backCameraId":I
    :cond_4
    :goto_0
    return-void
.end method

.method private needRestart()Z
    .locals 4

    .line 4211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4212
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_zsl_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4213
    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4212
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4214
    .local v0, "zsl":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 4217
    const-string v1, "CAM_PhotoModule"

    const-string v3, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4219
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    return v1

    .line 4221
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_1

    .line 4224
    const-string v1, "CAM_PhotoModule"

    const-string v3, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4226
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    return v1

    .line 4228
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    return v1
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5941
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

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCameraOpened()V
    .locals 2

    .line 1084
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1085
    return-void

    .line 1087
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 1089
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 1090
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateFocusManager(Lcom/android/camera/PhotoUI;)V

    .line 1091
    return-void
.end method

.method private onPreviewStarted()V
    .locals 4

    .line 953
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 954
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 957
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 958
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 959
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    .line 961
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v2, "hdr"

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v1, :cond_2

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 967
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 972
    return-void
.end method

.method private onResumeTasks()V
    .locals 5

    .line 3671
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Executing onResumeTasks."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3674
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3675
    new-instance v0, Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 3676
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->start()V

    .line 3679
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-nez v0, :cond_2

    .line 3680
    new-instance v0, Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 3681
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$StartPreviewThread;->start()V

    .line 3684
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v1, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 3686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 3687
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 3691
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 3692
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3694
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    .line 3696
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->initDisplayChangeListener()V

    .line 3697
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 3698
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 3701
    const-string v0, "Camera"

    const-string v2, "PhotoModule"

    invoke-static {v0, v2}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3705
    .local v0, "gsensor":Landroid/hardware/Sensor;
    const/4 v2, 0x3

    if-eqz v0, :cond_4

    .line 3706
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3709
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 3710
    .local v1, "msensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_5

    .line 3711
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3714
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    .line 3715
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    .line 3717
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isCaptureAnimationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    .line 3718
    return-void

    .line 3672
    .end local v0    # "gsensor":Landroid/hardware/Sensor;
    .end local v1    # "msensor":Landroid/hardware/Sensor;
    :cond_6
    :goto_1
    return-void
.end method

.method private openCamera()V
    .locals 5

    .line 3558
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3559
    return-void

    .line 3561
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Open camera device."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3564
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v3

    .line 3562
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3565
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3566
    const-string v0, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 3570
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3571
    const-string v0, "CAM_PhotoModule"

    const-string v1, "camera paused, don\'t send fail message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3573
    return-void

    .line 3576
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3577
    return-void

    .line 3580
    :cond_2
    const/4 v0, 0x0

    .line 3581
    .local v0, "isKeyguardSecure":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "facelock_unlock_device"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v1, v3

    nop

    :cond_3
    move v0, v1

    .line 3584
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 3585
    const-string v1, "CAM_PhotoModule"

    const-string v2, "camera paused, finish activity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3590
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3591
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 3592
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3593
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v1, :cond_5

    .line 3594
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    goto :goto_0

    .line 3596
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3598
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 3600
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 3602
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3603
    return-void
.end method

.method private openCameraCommon()V
    .locals 6

    .line 1169
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 1171
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/PhotoUI;->onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    .line 1172
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_hdr_plus_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0353

    .line 1174
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1173
    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 1176
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraSettings()V

    .line 1177
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 1178
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetManual3ASettings()V

    .line 1179
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetMiscSettings()V

    .line 1180
    return-void
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
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

    .line 3132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_flashmode_key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "pref_camera_whitebalance_key"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const-string v3, "pref_camera_focusmode_key"

    const/4 v6, 0x4

    aput-object v3, v2, v6

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const-string v3, "pref_camera_exposure_key"

    const/4 v7, 0x6

    aput-object v3, v2, v7

    const/4 v3, 0x7

    aput-object p4, v2, v3

    const-string v3, "pref_camera_touchafaec_key"

    const/16 v8, 0x8

    aput-object v3, v2, v8

    const/16 v3, 0x9

    aput-object p5, v2, v3

    const-string v3, "pref_camera_autoexposure_key"

    const/16 v9, 0xa

    aput-object v3, v2, v9

    const/16 v3, 0xb

    aput-object p6, v2, v3

    const-string v3, "pref_camera_saturation_key"

    const/16 v10, 0xc

    aput-object v3, v2, v10

    const/16 v3, 0xd

    aput-object p7, v2, v3

    const-string v3, "pref_camera_contrast_key"

    const/16 v11, 0xe

    aput-object v3, v2, v11

    const/16 v3, 0xf

    aput-object p8, v2, v3

    const-string v3, "pref_camera_sharpness_key"

    const/16 v12, 0x10

    aput-object v3, v2, v12

    const/16 v3, 0x11

    aput-object p9, v2, v3

    const-string v3, "pref_camera_coloreffect_key"

    const/16 v13, 0x12

    aput-object v3, v2, v13

    const/16 v3, 0x13

    aput-object p10, v2, v3

    const-string v3, "pref_camera_scenemode_key"

    const/16 v14, 0x14

    aput-object v3, v2, v14

    const/16 v3, 0x15

    aput-object p11, v2, v3

    const-string v3, "pref_camera_redeyereduction_key"

    const/16 v15, 0x16

    aput-object v3, v2, v15

    const/16 v3, 0x17

    aput-object p12, v2, v3

    const-string v3, "pref_camera_ae_bracket_hdr_key"

    const/16 v16, 0x18

    aput-object v3, v2, v16

    const/16 v3, 0x19

    aput-object p13, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3146
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

    .line 4250
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4251
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedAFBracketingModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4250
    invoke-static {p1, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4252
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "af-bracket"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4254
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4255
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedChromaFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4254
    invoke-static {p2, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4256
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "chroma-flash"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4259
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedOptiZoomModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4258
    invoke-static {p4, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4260
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "opti-zoom"

    invoke-virtual {v0, v1, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4262
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4263
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedRefocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4262
    invoke-static {p3, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4264
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "re-focus"

    invoke-virtual {v0, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4267
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedFSSRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4266
    invoke-static {p5, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4268
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "FSSR"

    invoke-virtual {v0, v1, p5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4270
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4271
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedTruePortraitModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4270
    invoke-static {p6, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4272
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "true-portrait"

    invoke-virtual {v0, v1, p6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4275
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedMultiTouchFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4274
    invoke-static {p7, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4276
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "multi-touch-focus"

    invoke-virtual {v0, v1, p7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4278
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4279
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedStillMoreModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4278
    invoke-static {p8, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4280
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "still-more"

    invoke-virtual {v0, v1, p8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    :cond_7
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 49

    .line 4288
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "luma-adaptation"

    iget v2, v10, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_longshot_key"

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4292
    const v3, 0x7f0e01fd

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4290
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4293
    .local v11, "longshot_enable":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "long-shot"

    invoke-virtual {v0, v1, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4297
    .local v12, "optizoomOn":Ljava/lang/String;
    const-string v0, "auto"

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hdr"

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4298
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sports"

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4300
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flowers"

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4301
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4303
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4314
    :cond_0
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4315
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    goto :goto_1

    .line 4305
    :cond_1
    :goto_0
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_touchafaec_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0112

    .line 4307
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4305
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4308
    .local v0, "touchAfAec":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4309
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 4308
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4310
    iput-object v0, v10, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 4311
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4313
    .end local v0    # "touchAfAec":Ljava/lang/String;
    :cond_2
    nop

    .line 4318
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_0
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4319
    iput-boolean v14, v10, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z

    goto :goto_2

    .line 4321
    :cond_3
    iput-boolean v13, v10, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4324
    :goto_2
    goto :goto_3

    .line 4322
    :catch_0
    move-exception v0

    .line 4323
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Handled NULL pointer Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_pictureformat_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0144

    .line 4331
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4329
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4334
    .local v0, "pictureFormat":Ljava/lang/String;
    iget-boolean v2, v10, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_4

    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4335
    const-string v0, "jpeg"

    .line 4336
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4337
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_pictureformat_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e018d

    .line 4338
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4337
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4339
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4341
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picture format value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4345
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_jpegquality_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0143

    .line 4347
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4345
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4349
    .local v15, "jpegQuality":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 4350
    .local v9, "pic_size":Landroid/hardware/Camera$Size;
    if-nez v9, :cond_5

    .line 4351
    const-string v2, "CAM_PhotoModule"

    const-string v3, "error getPictureSize: size is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4354
    :cond_5
    const-string v2, "100"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v9, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0xc80

    if-lt v2, v3, :cond_6

    .line 4356
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PhotoModule$12;

    invoke-direct {v3, v10}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 4363
    :cond_6
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PhotoModule$13;

    invoke-direct {v3, v10}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4369
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v15}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 4370
    invoke-direct {v10, v9, v15}, Lcom/android/camera/PhotoModule;->estimateJpegFileSize(Landroid/hardware/Camera$Size;Ljava/lang/String;)I

    move-result v2

    .line 4371
    .local v2, "jpegFileSize":I
    iget v3, v10, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    if-eq v2, v3, :cond_7

    .line 4372
    iput v2, v10, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    .line 4373
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$14;

    invoke-direct {v4, v10}, Lcom/android/camera/PhotoModule$14;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4384
    .end local v2    # "jpegFileSize":I
    :cond_7
    :goto_4
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_selectablezoneaf_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e002b

    .line 4386
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4384
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4387
    .local v8, "selectableZoneAf":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v16

    .line 4388
    .local v16, "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4389
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 4388
    invoke-static {v8, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4390
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSelectableZoneAf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4394
    :cond_8
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4395
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_denoise_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00e5

    .line 4396
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4395
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4397
    .local v2, "Denoise":Ljava/lang/String;
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4400
    .end local v2    # "Denoise":Ljava/lang/String;
    :cond_9
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_redeyereduction_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00a3

    .line 4402
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4400
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4403
    .local v7, "redeyeReduction":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4404
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedRedeyeReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 4403
    invoke-static {v7, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4405
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setRedeyeReductionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4408
    :cond_a
    iget v2, v10, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_b

    .line 4409
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_iso_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00e8

    .line 4411
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4409
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4412
    .local v2, "iso":Ljava/lang/String;
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4413
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4412
    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4414
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4418
    .end local v2    # "iso":Ljava/lang/String;
    :cond_b
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_coloreffect_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00fe

    .line 4420
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4418
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4421
    .local v6, "colorEffect":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Color effect value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4423
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4427
    :cond_c
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_saturation_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0141

    .line 4429
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4427
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4431
    .local v5, "saturationStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4433
    .local v4, "saturation":I
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saturation value ="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    if-ltz v4, :cond_d

    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-gt v4, v1, :cond_d

    .line 4435
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v4}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 4438
    :cond_d
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_contrast_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e013f

    .line 4440
    invoke-virtual {v3, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4438
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4441
    .local v13, "contrastStr":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4442
    .local v3, "contrast":I
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Contrast value ="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    if-ltz v3, :cond_e

    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-gt v3, v1, :cond_e

    .line 4444
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setContrast(Landroid/hardware/Camera$Parameters;I)V

    .line 4447
    :cond_e
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_sharpness_key"

    iget-object v14, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move/from16 v17, v3

    const v3, 0x7f0e013d

    .line 4449
    .end local v3    # "contrast":I
    .local v17, "contrast":I
    invoke-virtual {v14, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4447
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4450
    .local v14, "sharpnessStr":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4451
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    mul-int v3, v1, v2

    .line 4452
    .local v3, "sharpness":I
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "Sharpness value ="

    .end local v4    # "saturation":I
    .local v18, "saturation":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    if-ltz v3, :cond_f

    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-gt v3, v1, :cond_f

    .line 4454
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSharpness(Landroid/hardware/Camera$Parameters;I)V

    .line 4457
    :cond_f
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_facerc_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move/from16 v19, v3

    const v3, 0x7f0e011d

    .line 4459
    .end local v3    # "sharpness":I
    .local v19, "sharpness":I
    invoke-virtual {v4, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4457
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4460
    .local v4, "faceRC":Ljava/lang/String;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face Recognition value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4461
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4462
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedFaceRecognitionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 4461
    invoke-static {v4, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4463
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "face-recognition"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4466
    :cond_10
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v4

    const v4, 0x7f0e00bb

    .line 4468
    .end local v4    # "faceRC":Ljava/lang/String;
    .local v20, "faceRC":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4466
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4469
    .local v4, "aeBracketing":Ljava/lang/String;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AE Bracketing value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4471
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedAEBracketingModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 4470
    invoke-static {v4, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4472
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "ae-bracket-hdr"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    :cond_11
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_cds_mode_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v21, v4

    const v4, 0x7f0e0095

    .line 4478
    .end local v4    # "aeBracketing":Ljava/lang/String;
    .local v21, "aeBracketing":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4476
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4479
    .local v4, "cds":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    if-nez v1, :cond_12

    if-eqz v4, :cond_12

    .line 4480
    iput-object v4, v10, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    .line 4482
    :cond_12
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4483
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedCDSModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 4482
    invoke-static {v4, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4484
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "cds-mode"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    :cond_13
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_tnr_mode_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v22, v5

    const v5, 0x7f0e0099

    .line 4490
    .end local v5    # "saturationStr":Ljava/lang/String;
    .local v22, "saturationStr":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4488
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4491
    .local v5, "tnr":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4492
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedTNRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 4491
    invoke-static {v5, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4493
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e008b

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 4495
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "cds-mode"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v6

    const v6, 0x7f0e0080

    .line 4496
    .end local v6    # "colorEffect":Ljava/lang/String;
    .local v23, "colorEffect":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4495
    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4497
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/PhotoModule$15;

    invoke-direct {v2, v10}, Lcom/android/camera/PhotoModule$15;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4504
    if-eqz v4, :cond_14

    .line 4505
    iput-object v4, v10, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    .line 4507
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    goto :goto_5

    .line 4508
    .end local v23    # "colorEffect":Ljava/lang/String;
    .restart local v6    # "colorEffect":Ljava/lang/String;
    :cond_15
    move-object/from16 v23, v6

    .end local v6    # "colorEffect":Ljava/lang/String;
    .restart local v23    # "colorEffect":Ljava/lang/String;
    iget-boolean v1, v10, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    if-eqz v1, :cond_16

    .line 4509
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "cds-mode"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/PhotoModule$16;

    invoke-direct {v2, v10}, Lcom/android/camera/PhotoModule$16;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4517
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    .line 4519
    :cond_16
    :goto_5
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "tnr-mode"

    invoke-virtual {v1, v2, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4523
    .end local v23    # "colorEffect":Ljava/lang/String;
    .restart local v6    # "colorEffect":Ljava/lang/String;
    :cond_17
    move-object/from16 v23, v6

    .end local v6    # "colorEffect":Ljava/lang/String;
    .restart local v23    # "colorEffect":Ljava/lang/String;
    :goto_6
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_hdr_mode_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0208

    .line 4525
    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4523
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4526
    .local v6, "hdrMode":Ljava/lang/String;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDR Mode value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4528
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedHDRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 4527
    invoke-static {v6, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4529
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "hdr-mode"

    invoke-virtual {v1, v2, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4533
    :cond_18
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_hdr_need_1x_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v24, v4

    const v4, 0x7f0e020e

    .line 4535
    .end local v4    # "cds":Ljava/lang/String;
    .local v24, "cds":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4533
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4536
    .local v4, "hdrNeed1x":Ljava/lang/String;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDR need 1x value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4538
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedHDRNeed1x(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 4537
    invoke-static {v4, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4539
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "hdr-need-1x"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    :cond_19
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_advanced_features_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v4

    const v4, 0x7f0e0035

    .line 4545
    .end local v4    # "hdrNeed1x":Ljava/lang/String;
    .local v25, "hdrNeed1x":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4543
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4546
    .local v4, "advancedFeature":Ljava/lang/String;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " advancedFeature value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/camera/PhotoModule;->mRefocus:Z

    .line 4549
    const v3, 0x7f0e0046

    if-eqz v4, :cond_22

    .line 4550
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 4552
    .local v26, "ubiFocusOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 4554
    .local v27, "chromaFlashOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4556
    .local v28, "optiZoomOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e004a

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 4558
    .local v29, "reFocusOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e004d

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 4560
    .local v30, "fssrOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 4562
    .local v31, "truePortraitOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e004f

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 4564
    .local v32, "multiTouchFocusOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0050

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 4567
    .local v33, "stillMoreOff":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0041

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4569
    move-object v1, v10

    move-object v2, v4

    move-object/from16 v34, v11

    move v11, v3

    move-object/from16 v3, v27

    .end local v11    # "longshot_enable":Ljava/lang/String;
    .local v34, "longshot_enable":Ljava/lang/String;
    move-object v11, v4

    move-object/from16 v4, v29

    .end local v4    # "advancedFeature":Ljava/lang/String;
    .local v11, "advancedFeature":Ljava/lang/String;
    move-object/from16 v35, v5

    move-object/from16 v5, v28

    .end local v5    # "tnr":Ljava/lang/String;
    .local v35, "tnr":Ljava/lang/String;
    move-object/from16 v36, v6

    move-object/from16 v6, v30

    .end local v6    # "hdrMode":Ljava/lang/String;
    .local v36, "hdrMode":Ljava/lang/String;
    move-object/from16 v37, v7

    move-object/from16 v7, v31

    .end local v7    # "redeyeReduction":Ljava/lang/String;
    .local v37, "redeyeReduction":Ljava/lang/String;
    move-object/from16 v38, v8

    move-object/from16 v8, v32

    .end local v8    # "selectableZoneAf":Ljava/lang/String;
    .local v38, "selectableZoneAf":Ljava/lang/String;
    move-object/from16 v39, v9

    move-object/from16 v9, v33

    .end local v9    # "pic_size":Landroid/hardware/Camera$Size;
    .local v39, "pic_size":Landroid/hardware/Camera$Size;
    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4577
    .end local v34    # "longshot_enable":Ljava/lang/String;
    .end local v35    # "tnr":Ljava/lang/String;
    .end local v36    # "hdrMode":Ljava/lang/String;
    .end local v37    # "redeyeReduction":Ljava/lang/String;
    .end local v38    # "selectableZoneAf":Ljava/lang/String;
    .end local v39    # "pic_size":Landroid/hardware/Camera$Size;
    .restart local v4    # "advancedFeature":Ljava/lang/String;
    .restart local v5    # "tnr":Ljava/lang/String;
    .restart local v6    # "hdrMode":Ljava/lang/String;
    .restart local v7    # "redeyeReduction":Ljava/lang/String;
    .restart local v8    # "selectableZoneAf":Ljava/lang/String;
    .restart local v9    # "pic_size":Landroid/hardware/Camera$Size;
    .local v11, "longshot_enable":Ljava/lang/String;
    :cond_1a
    move-object/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v34, v11

    move-object v11, v4

    .end local v4    # "advancedFeature":Ljava/lang/String;
    .end local v5    # "tnr":Ljava/lang/String;
    .end local v6    # "hdrMode":Ljava/lang/String;
    .end local v7    # "redeyeReduction":Ljava/lang/String;
    .end local v8    # "selectableZoneAf":Ljava/lang/String;
    .end local v9    # "pic_size":Landroid/hardware/Camera$Size;
    .local v11, "advancedFeature":Ljava/lang/String;
    .restart local v34    # "longshot_enable":Ljava/lang/String;
    .restart local v35    # "tnr":Ljava/lang/String;
    .restart local v36    # "hdrMode":Ljava/lang/String;
    .restart local v37    # "redeyeReduction":Ljava/lang/String;
    .restart local v38    # "selectableZoneAf":Ljava/lang/String;
    .restart local v39    # "pic_size":Landroid/hardware/Camera$Size;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0043

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4579
    move-object v1, v10

    move-object/from16 v2, v26

    move-object v3, v11

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4587
    :cond_1b
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0042

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4589
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object v4, v11

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4597
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/camera/PhotoModule;->mRefocus:Z

    goto/16 :goto_7

    .line 4598
    :cond_1c
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0044

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4600
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object v5, v11

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4608
    :cond_1d
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0045

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4610
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object v6, v11

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4618
    :cond_1e
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4620
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object v7, v11

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4628
    :cond_1f
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0047

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4630
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v8, v11

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 4638
    :cond_20
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4640
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 4649
    :cond_21
    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v26    # "ubiFocusOff":Ljava/lang/String;
    .end local v27    # "chromaFlashOff":Ljava/lang/String;
    .end local v28    # "optiZoomOff":Ljava/lang/String;
    .end local v29    # "reFocusOff":Ljava/lang/String;
    .end local v30    # "fssrOff":Ljava/lang/String;
    .end local v31    # "truePortraitOff":Ljava/lang/String;
    .end local v32    # "multiTouchFocusOff":Ljava/lang/String;
    .end local v33    # "stillMoreOff":Ljava/lang/String;
    goto :goto_7

    .line 4660
    .end local v34    # "longshot_enable":Ljava/lang/String;
    .end local v35    # "tnr":Ljava/lang/String;
    .end local v36    # "hdrMode":Ljava/lang/String;
    .end local v37    # "redeyeReduction":Ljava/lang/String;
    .end local v38    # "selectableZoneAf":Ljava/lang/String;
    .end local v39    # "pic_size":Landroid/hardware/Camera$Size;
    .restart local v4    # "advancedFeature":Ljava/lang/String;
    .restart local v5    # "tnr":Ljava/lang/String;
    .restart local v6    # "hdrMode":Ljava/lang/String;
    .restart local v7    # "redeyeReduction":Ljava/lang/String;
    .restart local v8    # "selectableZoneAf":Ljava/lang/String;
    .restart local v9    # "pic_size":Landroid/hardware/Camera$Size;
    .local v11, "longshot_enable":Ljava/lang/String;
    :cond_22
    move-object/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v34, v11

    move-object v11, v4

    .end local v4    # "advancedFeature":Ljava/lang/String;
    .end local v5    # "tnr":Ljava/lang/String;
    .end local v6    # "hdrMode":Ljava/lang/String;
    .end local v7    # "redeyeReduction":Ljava/lang/String;
    .end local v8    # "selectableZoneAf":Ljava/lang/String;
    .end local v9    # "pic_size":Landroid/hardware/Camera$Size;
    .local v11, "advancedFeature":Ljava/lang/String;
    .restart local v34    # "longshot_enable":Ljava/lang/String;
    .restart local v35    # "tnr":Ljava/lang/String;
    .restart local v36    # "hdrMode":Ljava/lang/String;
    .restart local v37    # "redeyeReduction":Ljava/lang/String;
    .restart local v38    # "selectableZoneAf":Ljava/lang/String;
    .restart local v39    # "pic_size":Landroid/hardware/Camera$Size;
    :goto_7
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4661
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4663
    sget-object v1, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4664
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 4663
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 4665
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/PhotoModule$17;

    invoke-direct {v2, v10}, Lcom/android/camera/PhotoModule$17;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4673
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4675
    iget-boolean v1, v10, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-nez v1, :cond_25

    .line 4676
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 4677
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    goto :goto_8

    .line 4683
    :cond_23
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/PhotoModule$18;

    invoke-direct {v2, v10}, Lcom/android/camera/PhotoModule$18;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4690
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_facedetection_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e009b

    .line 4692
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4690
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4694
    .local v1, "faceDetection":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4695
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 4694
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4696
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4697
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, v10, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-nez v2, :cond_24

    .line 4698
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 4699
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 4701
    :cond_24
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, v10, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 4702
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 4703
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 4709
    .end local v1    # "faceDetection":Ljava/lang/String;
    :cond_25
    :goto_8
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_autoexposure_key"

    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e000a

    .line 4711
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4709
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4712
    .local v1, "autoExposure":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoExposure value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4714
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 4713
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4715
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4719
    :cond_26
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_antibanding_key"

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00f9

    .line 4721
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4719
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4722
    .local v2, "antiBanding":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "antiBanding value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4724
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 4727
    :cond_27
    iget-object v3, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_zsl_key"

    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e002a

    .line 4728
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4727
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4729
    .local v3, "zsl":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_auto_hdr_key"

    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e03bc

    .line 4730
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4729
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4731
    .local v4, "auto_hdr":Ljava/lang/String;
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/android/camera/util/CameraUtil;->isAutoHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 4732
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "auto-hdr-enable"

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    const-string v5, "enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 4734
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v6, Lcom/android/camera/PhotoModule$19;

    invoke-direct {v6, v10}, Lcom/android/camera/PhotoModule$19;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4741
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "asd"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4742
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v5, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    goto :goto_9

    .line 4745
    :cond_28
    const/4 v5, 0x0

    iput-boolean v5, v10, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 4746
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v6, Lcom/android/camera/PhotoModule$20;

    invoke-direct {v6, v10}, Lcom/android/camera/PhotoModule$20;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4755
    :cond_29
    :goto_9
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5, v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4756
    const-string v5, "on"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2c

    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedZSLModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 4758
    sget v5, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    iput v5, v10, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    .line 4759
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 4760
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v5, v7}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 4763
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "picture-format"

    const-string v8, "jpeg"

    invoke-virtual {v5, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    const-string v5, "continuous-picture"

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4767
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v7

    .line 4766
    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4767
    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 4768
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const-string v7, "continuous-picture"

    invoke-virtual {v5, v7}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4769
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "continuous-picture"

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_a

    .line 4770
    :cond_2a
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v5}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 4771
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v5, v6}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4772
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_a

    .line 4775
    :cond_2b
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4778
    :goto_a
    const-string v5, "jpeg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 4779
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v7, Lcom/android/camera/PhotoModule$21;

    invoke-direct {v7, v10}, Lcom/android/camera/PhotoModule$21;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v5, v7}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 4786
    :cond_2c
    const-string v5, "off"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 4787
    sget v5, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    iput v5, v10, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    .line 4788
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 4789
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v5, v7}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 4790
    iget v5, v10, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    const/4 v7, 0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_2d

    .line 4791
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v5, v6}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4792
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4797
    :cond_2d
    :goto_b
    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_instant_capture_key"

    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e006f

    .line 4799
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4797
    invoke-virtual {v5, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4801
    .local v5, "instantCapture":Ljava/lang/String;
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0072

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 4803
    const-string v7, "on"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0040

    .line 4804
    invoke-virtual {v7, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 4805
    iget-boolean v7, v10, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    if-nez v7, :cond_2f

    .line 4807
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 4811
    :cond_2e
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "instant-capture"

    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4812
    invoke-virtual {v6, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4811
    invoke-virtual {v7, v9, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4813
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4815
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v7, Lcom/android/camera/PhotoModule$22;

    invoke-direct {v7, v10}, Lcom/android/camera/PhotoModule$22;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4824
    :cond_2f
    :goto_c
    const-string v6, "CAM_PhotoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instant capture = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mInstantCaptureSnapShot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v10, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "instant-capture"

    invoke-virtual {v6, v7, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4829
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_histogram_key"

    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e01d8

    .line 4831
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4829
    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4832
    .local v6, "histogram":Ljava/lang/String;
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4833
    invoke-static {v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHistogramModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    .line 4832
    invoke-static {v6, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_31

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v7, :cond_31

    .line 4835
    const-string v7, "enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 4836
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v8, Lcom/android/camera/PhotoModule$23;

    invoke-direct {v8, v10}, Lcom/android/camera/PhotoModule$23;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4844
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-interface {v7, v8}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 4845
    const/4 v7, 0x1

    iput-boolean v7, v10, Lcom/android/camera/PhotoModule;->mHiston:Z

    goto :goto_d

    .line 4847
    :cond_30
    const/4 v7, 0x0

    iput-boolean v7, v10, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 4848
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v8, Lcom/android/camera/PhotoModule$24;

    invoke-direct {v8, v10}, Lcom/android/camera/PhotoModule$24;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4854
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 4858
    :cond_31
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFlipValue()V

    .line 4861
    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "ae-bracket-hdr"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4862
    .local v7, "aeBracket":Ljava/lang/String;
    if-eqz v7, :cond_32

    const-string v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_32

    .line 4863
    const-string v8, "off"

    .line 4864
    .local v8, "fMode":Ljava/lang/String;
    iget-object v9, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v8}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4867
    .end local v8    # "fMode":Ljava/lang/String;
    :cond_32
    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v8}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "continuous-picture"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4868
    invoke-virtual {v8}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v8

    if-nez v8, :cond_33

    .line 4869
    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v8}, Lcom/android/camera/PhotoUI;->clearFocus()V

    .line 4872
    :cond_33
    iget-object v8, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_bokeh_mode_key"

    .line 4876
    move-object/from16 v40, v0

    iget v0, v10, Lcom/android/camera/PhotoModule;->mCameraId:I

    .end local v0    # "pictureFormat":Ljava/lang/String;
    .local v40, "pictureFormat":Ljava/lang/String;
    move-object/from16 v41, v1

    const/4 v1, 0x3

    .end local v1    # "autoExposure":Ljava/lang/String;
    .local v41, "autoExposure":Ljava/lang/String;
    move-object/from16 v42, v2

    const v2, 0x7f0e02d4

    .end local v2    # "antiBanding":Ljava/lang/String;
    .local v42, "antiBanding":Ljava/lang/String;
    if-ne v0, v1, :cond_34

    .line 4877
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e02d8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 4878
    :cond_34
    iget-object v0, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4872
    :goto_e
    invoke-virtual {v8, v9, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4880
    .local v0, "bokehMode":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_bokeh_mpo_key"

    iget-object v9, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e02da

    .line 4882
    invoke-virtual {v9, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4880
    invoke-virtual {v1, v8, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4883
    .local v1, "bokehMpo":Ljava/lang/String;
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4884
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "pref_camera_bokeh_blur_degree_key"

    const/16 v9, 0x32

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 4885
    .local v8, "bokehBlurDegree":I
    iget-object v9, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->isBokehModeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v9

    .line 4886
    .local v9, "supportBokeh":Z
    move-object/from16 v43, v4

    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v4    # "auto_hdr":Ljava/lang/String;
    .local v43, "auto_hdr":Ljava/lang/String;
    move-object/from16 v44, v5

    new-instance v5, Lcom/android/camera/PhotoModule$25;

    .end local v5    # "instantCapture":Ljava/lang/String;
    .local v44, "instantCapture":Ljava/lang/String;
    invoke-direct {v5, v10}, Lcom/android/camera/PhotoModule$25;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4895
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e02d9

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 4897
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 4898
    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 4899
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "on"

    invoke-static {v4, v5}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4901
    :cond_35
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    if-eq v4, v5, :cond_36

    .line 4902
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4904
    :cond_36
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    if-eq v4, v5, :cond_37

    .line 4905
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "off"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4907
    :cond_37
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "long-shot"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v45, v6

    const v6, 0x7f0e0354

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v6    # "histogram":Ljava/lang/String;
    .local v45, "histogram":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4908
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "long-shot"

    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v46, v7

    const v7, 0x7f0e0353

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v7    # "aeBracket":Ljava/lang/String;
    .local v46, "aeBracket":Ljava/lang/String;
    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 4910
    .end local v46    # "aeBracket":Ljava/lang/String;
    .restart local v7    # "aeBracket":Ljava/lang/String;
    :cond_38
    move-object/from16 v46, v7

    .end local v7    # "aeBracket":Ljava/lang/String;
    .restart local v46    # "aeBracket":Ljava/lang/String;
    :goto_f
    iget v4, v10, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-eqz v4, :cond_3a

    .line 4911
    const/4 v4, 0x0

    iput v4, v10, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    goto :goto_10

    .line 4914
    .end local v45    # "histogram":Ljava/lang/String;
    .end local v46    # "aeBracket":Ljava/lang/String;
    .restart local v6    # "histogram":Ljava/lang/String;
    .restart local v7    # "aeBracket":Ljava/lang/String;
    :cond_39
    move-object/from16 v45, v6

    move-object/from16 v46, v7

    const/4 v4, 0x0

    .end local v6    # "histogram":Ljava/lang/String;
    .end local v7    # "aeBracket":Ljava/lang/String;
    .restart local v45    # "histogram":Ljava/lang/String;
    .restart local v46    # "aeBracket":Ljava/lang/String;
    iput-boolean v4, v10, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 4916
    :cond_3a
    :goto_10
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "bokeh-mode"

    invoke-virtual {v4, v5, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4917
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "bokeh-mpo-mode"

    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4918
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "bokeh-blur-value"

    invoke-virtual {v4, v5, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4921
    iget-object v4, v10, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_asus_single_bokeh_mode_key"

    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4923
    const v7, 0x7f0e02d4

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4921
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4925
    .local v4, "singleBokehMode":Ljava/lang/String;
    const-string v5, "pref_asus_single_bokeh_blur_degree_key"

    const/16 v6, 0x32

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4935
    .local v5, "singleBokehBlurDegree":I
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e02d9

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 4937
    const-string v6, "on"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 4938
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "on"

    invoke-static {v6, v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4940
    :cond_3b
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "auto"

    if-eq v6, v7, :cond_3c

    .line 4941
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4943
    :cond_3c
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "off"

    if-eq v6, v7, :cond_3d

    .line 4944
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "off"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4946
    :cond_3d
    iget-object v6, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "long-shot"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v47, v2

    const v2, 0x7f0e0354

    invoke-virtual {v7, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .local v47, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 4947
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "long-shot"

    iget-object v7, v10, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v48, v3

    const v3, 0x7f0e0353

    invoke-virtual {v7, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "zsl":Ljava/lang/String;
    .local v48, "zsl":Ljava/lang/String;
    invoke-virtual {v2, v6, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 4949
    .end local v48    # "zsl":Ljava/lang/String;
    .restart local v3    # "zsl":Ljava/lang/String;
    :cond_3e
    move-object/from16 v48, v3

    .end local v3    # "zsl":Ljava/lang/String;
    .restart local v48    # "zsl":Ljava/lang/String;
    :goto_11
    iget v2, v10, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-eqz v2, :cond_40

    .line 4950
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    goto :goto_12

    .line 4953
    .end local v47    # "prefs":Landroid/content/SharedPreferences;
    .end local v48    # "zsl":Ljava/lang/String;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v3    # "zsl":Ljava/lang/String;
    :cond_3f
    move-object/from16 v47, v2

    move-object/from16 v48, v3

    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "zsl":Ljava/lang/String;
    .restart local v47    # "prefs":Landroid/content/SharedPreferences;
    .restart local v48    # "zsl":Ljava/lang/String;
    :cond_40
    :goto_12
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "asus_bokeh"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4954
    iget-object v2, v10, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "asus_bokeh_value"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4956
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bokeh Mode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bokehMpo = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bokehBlurDegree = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    return-void
.end method

.method private registerMediaButtonReceiver()V
    .locals 3

    .line 6404
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6405
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6406
    return-void
.end method

.method private removeIdleHandler()V
    .locals 2

    .line 1366
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1368
    .local v0, "queue":Landroid/os/MessageQueue;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1371
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 4

    .line 1193
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "value":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1197
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1200
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetManual3ASettings()V
    .locals 8

    .line 1203
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0056

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "manualExposureDefault":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_manual_exp_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1207
    .local v1, "manualExposureMode":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_manual_exp_key"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V

    .line 1212
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0067

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1214
    .local v2, "manualFocusDefault":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_manual_focus_key"

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, "manualFocusMode":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1217
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v5, "pref_camera_manual_focus_key"

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V

    .line 1221
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e005f

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1223
    .local v4, "manualWBDefault":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_manual_wb_key"

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1225
    .local v5, "manualWBMode":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1226
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_wb_key"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V

    .line 1230
    :cond_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 1231
    return-void
.end method

.method private resetMiscSettings()V
    .locals 4

    .line 1234
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDisableQcomMiscSetting()Z

    move-result v0

    .line 1235
    .local v0, "disableQcomMiscSetting":Z
    if-eqz v0, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_zsl_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_facedetection_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_touchafaec_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_focusmode_key"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_flashmode_key"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_denoise_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DENOISE_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1249
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .line 6088
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6089
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6090
    return-void
.end method

.method private savePPPic([B)V
    .locals 2
    .param p1, "result"    # [B

    .line 6513
    new-instance v0, Lcom/android/camera/PhotoModule$SavingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$SavingThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    .line 6514
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule$SavingThread;->setYUVData([B)V

    .line 6515
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SavingThread;->start()V

    .line 6516
    return-void
.end method

.method private saveToDebugUri([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 6240
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 6241
    const/4 v0, 0x0

    .line 6243
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 6244
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 6245
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6249
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6246
    :catch_0
    move-exception v1

    .line 6247
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6249
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 6250
    goto :goto_2

    .line 6249
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 6252
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_2
    return-void
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 5024
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 5025
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5027
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 5031
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 5032
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5034
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 5
    .param p1, "updateSet"    # I

    .line 5394
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 5395
    return-void

    .line 5397
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 5398
    const/4 v1, 0x0

    .line 5400
    .local v1, "doModeSwitch":Z
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 5401
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    goto :goto_0

    .line 5422
    .end local v1    # "doModeSwitch":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5404
    .restart local v1    # "doModeSwitch":Z
    :cond_1
    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 5405
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 5408
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 5409
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()Z

    move-result v2

    move v1, v2

    .line 5413
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "enable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5419
    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_4

    .line 5420
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5422
    .end local v1    # "doModeSwitch":Z
    :cond_4
    monitor-exit v0

    .line 5423
    return-void

    .line 5422
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .param p1, "additionalUpdateSet"    # I

    .line 5428
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 5429
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5432
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 5433
    return-void

    .line 5434
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5435
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 5436
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 5437
    const-string v0, "CAM_PhotoModule"

    const-string v2, "Restarting Preview..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 5439
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 5440
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 5441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5443
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5444
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraSettings()V

    .line 5445
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 5447
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5448
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5452
    :cond_3
    :goto_0
    return-void
.end method

.method private setCameraState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 2433
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 2434
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2442
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 2439
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    .line 2440
    nop

    .line 2445
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .line 4079
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 4080
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 4081
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 4084
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 4085
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4094
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 4095
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 4098
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 4099
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 4101
    :cond_2
    return-void
.end method

.method private setFlipValue()V
    .locals 9

    .line 4985
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPreviewFlip()I

    move-result v0

    .line 4986
    .local v0, "preview_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getVideoFlip()I

    move-result v1

    .line 4987
    .local v1, "video_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPictureFlip()I

    move-result v2

    .line 4988
    .local v2, "picture_flip_value":I
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->getJpegRotationForCamera1(II)I

    move-result v3

    .line 4989
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 4990
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    .line 4992
    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 4993
    const/4 v0, 0x2

    goto :goto_0

    .line 4994
    :cond_1
    if-ne v0, v4, :cond_2

    .line 4995
    const/4 v0, 0x1

    .line 4997
    :cond_2
    :goto_0
    if-ne v1, v5, :cond_3

    .line 4998
    const/4 v1, 0x2

    goto :goto_1

    .line 4999
    :cond_3
    if-ne v1, v4, :cond_4

    .line 5000
    const/4 v1, 0x1

    .line 5002
    :cond_4
    :goto_1
    if-ne v2, v5, :cond_5

    .line 5003
    const/4 v2, 0x2

    goto :goto_2

    .line 5004
    :cond_5
    if-ne v2, v4, :cond_6

    .line 5005
    const/4 v2, 0x1

    .line 5008
    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v4

    .line 5009
    .local v4, "preview_flip":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v5

    .line 5010
    .local v5, "video_flip":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v6

    .line 5011
    .local v6, "picture_flip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5012
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "preview-flip"

    invoke-virtual {v7, v8, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5014
    :cond_7
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5015
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "video-flip"

    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5017
    :cond_8
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5018
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "snapshot-picture-flip"

    invoke-virtual {v7, v8, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5020
    :cond_9
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .line 5037
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5038
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 5040
    :cond_0
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1073
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    .line 1074
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1078
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1081
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .line 5043
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5044
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 5046
    :cond_0
    return-void
.end method

.method private setNSParam(I[I[[I)V
    .locals 11
    .param p1, "lux"    # I
    .param p2, "lux_table"    # [I
    .param p3, "ns_params_table"    # [[I

    .line 6468
    const/4 v0, 0x5

    .line 6469
    .local v0, "intensity":I
    const/4 v1, 0x0

    .line 6470
    .local v1, "light":I
    const/16 v2, 0x20

    .line 6471
    .local v2, "saturation":I
    const/4 v3, 0x0

    .line 6472
    .local v3, "sharpness":I
    array-length v4, p2

    .line 6473
    .local v4, "size":I
    const/4 v5, 0x0

    aget v6, p2, v5

    if-ge p1, v6, :cond_0

    .line 6474
    const/4 v0, 0x1

    .line 6475
    const/16 v1, 0xa

    .line 6476
    const/16 v2, 0x20

    .line 6477
    const/4 v3, 0x1

    goto :goto_0

    .line 6478
    :cond_0
    add-int/lit8 v6, v4, -0x1

    aget v6, p2, v6

    if-le p1, v6, :cond_1

    .line 6479
    const/4 v1, 0x0

    .line 6481
    :cond_1
    :goto_0
    move v6, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, v5

    .local v0, "i":I
    .local v1, "intensity":I
    .local v2, "light":I
    .local v3, "saturation":I
    .local v6, "sharpness":I
    :goto_1
    array-length v7, p2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ge v0, v7, :cond_3

    .line 6482
    aget v7, p2, v0

    if-lt p1, v7, :cond_2

    add-int/lit8 v7, v0, 0x1

    aget v7, p2, v7

    if-ge p1, v7, :cond_2

    .line 6483
    aget-object v7, p3, v0

    aget v1, v7, v5

    .line 6484
    aget-object v7, p3, v0

    aget v2, v7, v8

    .line 6485
    aget-object v7, p3, v0

    aget v3, v7, v10

    .line 6486
    aget-object v7, p3, v0

    aget v6, v7, v9

    .line 6481
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6489
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v0, :cond_4

    .line 6490
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v7, 0x4

    new-array v7, v7, [I

    aput v1, v7, v5

    aput v2, v7, v8

    aput v3, v7, v10

    aput v6, v7, v9

    invoke-virtual {v0, v10, v7}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 6492
    :cond_4
    return-void
.end method

.method private setZoomMenuValue()V
    .locals 13

    .line 5048
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_zoom_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 5049
    const v3, 0x7f0e02e2

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5048
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5050
    .local v0, "zoomMenuValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5051
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5052
    .local v1, "zoomValue":I
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 5054
    const-string v2, "CAM_PhotoModule"

    const-string v5, "Update the zoom index table."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    .line 5056
    .local v2, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 5057
    .local v5, "lastZoomIdx":I
    const/4 v6, 0x1

    move v7, v5

    move v5, v6

    .local v5, "zoom":I
    .local v7, "lastZoomIdx":I
    :goto_0
    const/16 v8, 0xa

    if-gt v5, v8, :cond_2

    .line 5058
    mul-int/lit8 v8, v5, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 5059
    .local v8, "zoomIdx":I
    if-ne v8, v4, :cond_1

    .line 5060
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find matching zoom value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    move v9, v8

    move v8, v7

    move v7, v3

    .line 5062
    .local v7, "nextZoom":I
    .local v8, "lastZoomIdx":I
    .local v9, "zoomIdx":I
    :goto_1
    add-int/2addr v8, v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_0

    mul-int/lit8 v10, v5, 0x64

    if-ge v7, v10, :cond_0

    .line 5064
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5065
    move v9, v8

    goto :goto_1

    .line 5067
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2

    .line 5068
    add-int/lit8 v7, v8, -0x1

    .end local v9    # "zoomIdx":I
    .local v7, "zoomIdx":I
    goto :goto_2

    .line 5073
    .local v7, "lastZoomIdx":I
    .local v8, "zoomIdx":I
    :cond_1
    move v12, v8

    move v8, v7

    move v7, v12

    .local v7, "zoomIdx":I
    .local v8, "lastZoomIdx":I
    :goto_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v5, -0x1

    aput v7, v9, v10

    .line 5074
    nop

    .line 5057
    .end local v8    # "lastZoomIdx":I
    .local v7, "lastZoomIdx":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5078
    .end local v2    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "zoom":I
    .end local v7    # "lastZoomIdx":I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    array-length v2, v2

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-eq v2, v4, :cond_5

    .line 5080
    const/4 v2, 0x1

    .line 5081
    .local v2, "step":I
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    .line 5082
    .local v3, "cur_zoom":I
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zoom index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cur index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-le v3, v4, :cond_3

    .line 5084
    const/4 v2, -0x1

    .line 5088
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-eq v3, v4, :cond_4

    .line 5089
    add-int/2addr v3, v2

    .line 5090
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5092
    const-wide/16 v4, 0x19

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5094
    :goto_4
    goto :goto_3

    .line 5093
    :catch_0
    move-exception v4

    goto :goto_4

    .line 5096
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5097
    .end local v2    # "step":I
    .end local v3    # "cur_zoom":I
    goto :goto_5

    .line 5098
    :cond_5
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zoom value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    .end local v1    # "zoomValue":I
    :cond_6
    :goto_5
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .line 5470
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5471
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 5472
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 5473
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 5475
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .line 4105
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 4106
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 4107
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .line 6106
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    const v3, 0x7f0e03cf

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 6108
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6109
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6111
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .line 1343
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    .line 1344
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1348
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 4

    .line 4112
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 4117
    const/4 v1, 0x0

    .line 4118
    .local v1, "sh":Landroid/view/SurfaceHolder;
    :try_start_0
    const-string v2, "CAM_PhotoModule"

    const-string v3, "startPreview: SurfaceHolder (MDP path)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v2, :cond_1

    .line 4120
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object v1, v2

    .line 4124
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4125
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4127
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v0, :cond_2

    .line 4128
    const-string v0, "CAM_PhotoModule"

    const-string v1, "startPreview: parameters for preview are not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    return-void

    .line 4131
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 4132
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4136
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v1, :cond_3

    .line 4137
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 4140
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_4

    .line 4141
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 4144
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 4145
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PhotoModule$11;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-interface {v0, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 4152
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 4154
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4156
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 4158
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    if-nez v0, :cond_5

    .line 4161
    const-string v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v1, :cond_6

    .line 4162
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    goto :goto_0

    .line 4165
    :cond_5
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Trigger snapshot from start preview."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4168
    :cond_6
    :goto_0
    return-void

    .line 4125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4113
    :cond_7
    :goto_1
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .line 1094
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v1, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 1097
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to switch camera. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 1099
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1101
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraId(I)V

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1106
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 1107
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1110
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v1, :cond_2

    .line 1111
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 1112
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :cond_2
    goto :goto_0

    .line 1123
    :catch_0
    move-exception v1

    .line 1126
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 1127
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 1128
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 1129
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1132
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1133
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1134
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1136
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v4

    .line 1134
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1138
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_4

    .line 1139
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void

    .line 1142
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1143
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1144
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 1145
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 1146
    .local v1, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v2, v1, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 1147
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 1148
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1149
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 1151
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v3, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 1153
    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1154
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 1155
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1160
    return-void
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 5382
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    goto :goto_0

    .line 5386
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    .line 5388
    :goto_0
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .line 4185
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 4186
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 4187
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 4192
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "recording-hint"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4196
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4197
    .local v1, "vstabSupported":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4198
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "video-stabilization"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()Z
    .locals 30

    .line 5105
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 5106
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 5107
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 5108
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 5111
    iget v0, v1, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 5112
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5113
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5117
    :cond_0
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5119
    .local v4, "pictureSize":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 5120
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 5122
    :cond_1
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5123
    .local v0, "old_size":Landroid/hardware/Camera$Size;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old picture_size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 5125
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 5127
    iget-object v6, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5128
    .local v6, "size":Landroid/hardware/Camera$Size;
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new picture_size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 5130
    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget v7, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v7, :cond_2

    .line 5131
    const-string v7, "CAM_PhotoModule"

    const-string v8, "Picture Size changed. Restart Preview"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5136
    .end local v0    # "old_size":Landroid/hardware/Camera$Size;
    .end local v5    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5140
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 5141
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v6, v5, v7, v8}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5144
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v7

    .line 5145
    .local v7, "previewSize":Landroid/graphics/Point;
    if-eqz v7, :cond_3

    .line 5146
    iget v8, v7, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/hardware/Camera$Size;->width:I

    .line 5147
    iget v8, v7, Landroid/graphics/Point;->y:I

    iput v8, v6, Landroid/hardware/Camera$Size;->height:I

    .line 5150
    :cond_3
    const-string v8, "CAM_PhotoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCameraParametersPreference final preview size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    iget-object v8, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Lcom/android/camera/PhotoUI;->setlocationy(I)V

    .line 5155
    iget-object v8, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 5156
    .local v8, "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v6}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 5157
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 5161
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    if-ne v9, v10, :cond_4

    .line 5163
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_1

    .line 5165
    :cond_4
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v10, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v9, v10}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5167
    :goto_1
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v9}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    iput-object v9, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5168
    const-string v9, "CAM_PhotoModule"

    const-string v10, "Preview Size changed. Restart Preview"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5172
    :cond_5
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preview size is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 5178
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    .local v9, "size":Landroid/hardware/Camera$Size;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v10

    .line 5179
    .local v10, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    invoke-static {v10, v11, v12}, Lcom/android/camera/util/CameraUtil;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5181
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 5182
    invoke-virtual {v8, v6}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5183
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v11, v12}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 5186
    :cond_6
    const-string v0, "CAM_PhotoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Thumbnail size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0354

    invoke-virtual {v0, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5192
    .local v11, "onValue":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_hdr_key"

    iget-object v13, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e03bc

    .line 5193
    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 5192
    invoke-virtual {v0, v12, v13}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5194
    .local v12, "hdr":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v13, "pref_camera_hdr_plus_key"

    iget-object v14, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e03bd

    .line 5195
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5194
    invoke-virtual {v0, v13, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5196
    .local v13, "hdrPlus":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 5197
    .local v14, "hdrOn":Z
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 5199
    .local v15, "hdrPlusOn":Z
    const/4 v0, 0x0

    .line 5200
    .local v0, "doGcamModeSwitch":Z
    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 5202
    const/4 v0, 0x1

    .line 5219
    .end local v0    # "doGcamModeSwitch":Z
    .end local v4    # "pictureSize":Ljava/lang/String;
    .local v17, "doGcamModeSwitch":Z
    .local v18, "pictureSize":Ljava/lang/String;
    :cond_7
    :goto_2
    move/from16 v17, v0

    move-object/from16 v18, v4

    goto :goto_3

    .line 5204
    .end local v17    # "doGcamModeSwitch":Z
    .end local v18    # "pictureSize":Ljava/lang/String;
    .restart local v0    # "doGcamModeSwitch":Z
    .restart local v4    # "pictureSize":Ljava/lang/String;
    :cond_8
    if-eqz v14, :cond_9

    .line 5205
    const-string v3, "hdr"

    iput-object v3, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5206
    const-string v3, "auto"

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "hdr"

    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5207
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5208
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5209
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5210
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_2

    .line 5213
    :cond_9
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_scenemode_key"

    move/from16 v17, v0

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v0    # "doGcamModeSwitch":Z
    .restart local v17    # "doGcamModeSwitch":Z
    move-object/from16 v18, v4

    const v4, 0x7f0e0395

    .line 5215
    .end local v4    # "pictureSize":Ljava/lang/String;
    .restart local v18    # "pictureSize":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5213
    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5219
    :goto_3
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0042

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5221
    .local v2, "refocusOn":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0044

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5223
    .local v3, "optizoomOn":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5224
    .local v4, "scenModeStr":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5226
    :try_start_0
    const-string v0, "auto"

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5227
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v5

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .end local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-ne v0, v5, :cond_a

    .line 5228
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v5, "pref_camera_advanced_features_key"

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5229
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showRefocusDialog()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 5231
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    .line 5232
    .end local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    :goto_4
    goto :goto_6

    .line 5233
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_b
    move-object/from16 v19, v5

    .end local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5235
    :try_start_2
    const-string v0, "auto"

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5236
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v0, v5, :cond_c

    .line 5237
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v5, "pref_camera_advanced_features_key"

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 5239
    :catch_2
    move-exception v0

    .line 5240
    :cond_c
    :goto_5
    goto :goto_6

    .line 5241
    :cond_d
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 5242
    const-string v0, "auto"

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5245
    :cond_e
    :goto_6
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5246
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 5247
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v0, v5, :cond_f

    .line 5248
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v5, "pref_camera_advanced_features_key"

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5250
    :cond_f
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5255
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5256
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5262
    :cond_10
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v5, 0x1

    if-le v0, v5, :cond_11

    .line 5263
    const/16 v0, 0x5f

    .local v0, "jpegQuality":I
    goto :goto_7

    .line 5265
    .end local v0    # "jpegQuality":I
    :cond_11
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 5269
    .restart local v0    # "jpegQuality":I
    :goto_7
    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 5275
    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v5

    .line 5276
    .local v5, "value":I
    move/from16 v20, v0

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local v0    # "jpegQuality":I
    .local v20, "jpegQuality":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 5277
    .local v0, "max":I
    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local v2    # "refocusOn":Ljava/lang/String;
    .local v21, "refocusOn":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 5278
    .local v2, "min":I
    if-lt v5, v2, :cond_12

    if-gt v5, v0, :cond_12

    .line 5279
    move/from16 v22, v0

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .end local v0    # "max":I
    .local v22, "max":I
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 5284
    move/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_8

    .line 5281
    .end local v22    # "max":I
    .restart local v0    # "max":I
    :cond_12
    move/from16 v22, v0

    .end local v0    # "max":I
    .restart local v22    # "max":I
    const-string v0, "CAM_PhotoModule"

    move/from16 v23, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "min":I
    .local v23, "min":I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    const-string v3, "invalid exposure range: "

    .end local v3    # "optizoomOn":Ljava/lang/String;
    .local v24, "optizoomOn":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    :goto_8
    const-string v0, "auto"

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5287
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 5288
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_flashmode_key"

    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v4

    const v4, 0x7f0e037e

    .line 5290
    .end local v4    # "scenModeStr":Ljava/lang/String;
    .local v25, "scenModeStr":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5288
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "flashMode":Ljava/lang/String;
    goto :goto_9

    .line 5292
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v25    # "scenModeStr":Ljava/lang/String;
    .restart local v4    # "scenModeStr":Ljava/lang/String;
    :cond_13
    move-object/from16 v25, v4

    .end local v4    # "scenModeStr":Ljava/lang/String;
    .restart local v25    # "scenModeStr":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 5295
    .restart local v0    # "flashMode":Ljava/lang/String;
    :goto_9
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 5296
    .local v2, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5297
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_a

    .line 5299
    :cond_14
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 5300
    if-nez v0, :cond_15

    .line 5301
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e037f

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5307
    :cond_15
    :goto_a
    iget v3, v1, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-nez v3, :cond_17

    .line 5308
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_whitebalance_key"

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .end local v0    # "flashMode":Ljava/lang/String;
    .local v26, "flashMode":Ljava/lang/String;
    move-object/from16 v27, v2

    const v2, 0x7f0e0388

    .line 5310
    .end local v2    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5308
    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5311
    .local v0, "whiteBalance":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5312
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    .line 5311
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5313
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_b

    .line 5315
    :cond_16
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 5316
    if-nez v0, :cond_18

    .line 5317
    nop

    .end local v0    # "whiteBalance":Ljava/lang/String;
    goto :goto_b

    .line 5323
    .end local v26    # "flashMode":Ljava/lang/String;
    .end local v27    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "flashMode":Ljava/lang/String;
    .restart local v2    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v26, v0

    move-object/from16 v27, v2

    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v2    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "flashMode":Ljava/lang/String;
    .restart local v27    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    :goto_b
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 5324
    const-string v0, "CAM_PhotoModule"

    const-string v2, "Change the focuse mode to infinity"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5326
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_c

    .line 5327
    :cond_19
    iget v0, v1, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_1a

    .line 5328
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5329
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5331
    .end local v26    # "flashMode":Ljava/lang/String;
    .end local v27    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    :goto_c
    goto :goto_d

    .line 5332
    .end local v25    # "scenModeStr":Ljava/lang/String;
    .restart local v4    # "scenModeStr":Ljava/lang/String;
    :cond_1b
    move-object/from16 v25, v4

    .end local v4    # "scenModeStr":Ljava/lang/String;
    .restart local v25    # "scenModeStr":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5333
    const-string v0, "off"

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5334
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 5333
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5335
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5337
    :cond_1c
    const-string v0, "auto"

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5338
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    .line 5337
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5339
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5343
    :cond_1d
    :goto_d
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_1e

    .line 5344
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 5347
    :cond_1e
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_tsmakeup_key"

    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0225

    .line 5348
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5347
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5349
    .local v0, "makeupParamValue":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "tsmakeup"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5350
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCameraParametersPreference(): TSMakeup tsmakeup value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    iget v2, v1, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    const-string v2, "On"

    .line 5353
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 5354
    const-string v2, "CAM_PhotoModule"

    const-string v3, "set low cost fb on."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "asus_beauty"

    const-string v4, "on"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    goto :goto_e

    .line 5358
    :cond_1f
    const-string v2, "CAM_PhotoModule"

    const-string v3, "set low cost fb off."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5359
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "asus_beauty"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5360
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 5364
    :goto_e
    const-string v2, "On"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5365
    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_tsmakeup_whiten"

    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 5366
    move-object/from16 v28, v0

    const v0, 0x7f0e0226

    .end local v0    # "makeupParamValue":Ljava/lang/String;
    .local v28, "makeupParamValue":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5365
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5367
    .local v2, "makeupWhitenValue":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_tsmakeup_clean"

    move/from16 v29, v5

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 5368
    .end local v5    # "value":I
    .local v29, "value":I
    invoke-virtual {v5, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5367
    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5369
    .local v0, "makeupCleanValue":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup_whiten"

    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5370
    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup_clean"

    invoke-virtual {v3, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "makeupCleanValue":Ljava/lang/String;
    .end local v2    # "makeupWhitenValue":Ljava/lang/String;
    goto :goto_f

    .line 5373
    .end local v28    # "makeupParamValue":Ljava/lang/String;
    .end local v29    # "value":I
    .local v0, "makeupParamValue":Ljava/lang/String;
    .restart local v5    # "value":I
    :cond_20
    move-object/from16 v28, v0

    move/from16 v29, v5

    .end local v0    # "makeupParamValue":Ljava/lang/String;
    .end local v5    # "value":I
    .restart local v28    # "makeupParamValue":Ljava/lang/String;
    .restart local v29    # "value":I
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setZoomMenuValue()V

    .line 5376
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->qcomUpdateCameraParametersPreference()V

    .line 5377
    return v17
.end method

.method private updateCameraParametersZoom()V
    .locals 3

    .line 4204
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4205
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4206
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 4207
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4209
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method private updateCameraSettings()V
    .locals 45

    .line 2802
    move-object/from16 v14, p0

    const/4 v0, 0x0

    .line 2803
    .local v0, "sceneMode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2804
    .local v1, "flashMode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2805
    .local v2, "redeyeReduction":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2806
    .local v3, "aeBracketing":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2807
    .local v4, "focusMode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2808
    .local v5, "colorEffect":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2809
    .local v6, "exposureCompensation":Ljava/lang/String;
    const/4 v15, 0x0

    .line 2810
    .local v15, "touchAfAec":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2812
    .local v7, "disableLongShot":Z
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0041

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2814
    .local v16, "ubiFocusOn":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2815
    const v9, 0x7f0e0354

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2816
    .local v13, "continuousShotOn":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0042

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2818
    .local v12, "reFocusOn":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0043

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2820
    .local v11, "chromaFlashOn":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0044

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2822
    .local v10, "optiZoomOn":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0045

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2824
    .local v9, "fssrOn":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v17, v0

    const v0, 0x7f0e0046

    .end local v0    # "sceneMode":Ljava/lang/String;
    .local v17, "sceneMode":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2826
    .local v8, "truPortraitOn":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v1

    const v1, 0x7f0e0047

    .end local v1    # "flashMode":Ljava/lang/String;
    .local v18, "flashMode":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2828
    .local v1, "multiTouchFocusOn":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v2

    const-string v2, "opti-zoom"

    .line 2829
    .end local v2    # "redeyeReduction":Ljava/lang/String;
    .local v19, "redeyeReduction":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2830
    .local v2, "optiZoom":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v3

    const-string v3, "chroma-flash"

    .line 2831
    .end local v3    # "aeBracketing":Ljava/lang/String;
    .local v20, "aeBracketing":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2832
    .local v3, "chromaFlash":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v4

    const-string v4, "af-bracket"

    .line 2833
    .end local v4    # "focusMode":Ljava/lang/String;
    .local v21, "focusMode":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2834
    .local v22, "ubiFocus":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "FSSR"

    .line 2835
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2836
    .local v4, "fssr":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v23, v5

    const-string v5, "true-portrait"

    .line 2837
    .end local v5    # "colorEffect":Ljava/lang/String;
    .local v23, "colorEffect":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2838
    .local v5, "truePortrait":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v6

    const-string v6, "multi-touch-focus"

    .line 2839
    .end local v6    # "exposureCompensation":Ljava/lang/String;
    .local v24, "exposureCompensation":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2840
    .local v6, "multiTouchFocus":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move/from16 v25, v7

    const v7, 0x7f0e0048

    .end local v7    # "disableLongShot":Z
    .local v25, "disableLongShot":Z
    invoke-virtual {v0, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2842
    .local v7, "stillMoreOn":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v15

    const-string v15, "still-more"

    .line 2843
    .end local v15    # "touchAfAec":Ljava/lang/String;
    .local v26, "touchAfAec":Ljava/lang/String;
    invoke-virtual {v0, v15}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2844
    .local v15, "stillMore":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v7

    const-string v7, "long-shot"

    .line 2845
    .end local v7    # "stillMoreOn":Ljava/lang/String;
    .local v27, "stillMoreOn":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2847
    .local v7, "continuousShot":Ljava/lang/String;
    iget v0, v14, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v0, :cond_0

    .line 2848
    const/4 v0, 0x1

    .line 2851
    .end local v25    # "disableLongShot":Z
    .local v0, "disableLongShot":Z
    move/from16 v25, v0

    .end local v0    # "disableLongShot":Z
    .restart local v25    # "disableLongShot":Z
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 2852
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v34, v7

    const v7, 0x7f0e018d

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2854
    .end local v7    # "continuousShot":Ljava/lang/String;
    .local v0, "pictureFormat":Ljava/lang/String;
    .local v34, "continuousShot":Ljava/lang/String;
    iget-object v7, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v35, v13

    move-object/from16 v36, v15

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/String;

    .end local v13    # "continuousShotOn":Ljava/lang/String;
    .end local v15    # "stillMore":Ljava/lang/String;
    .local v35, "continuousShotOn":Ljava/lang/String;
    .local v36, "stillMore":Ljava/lang/String;
    const-string v13, "pref_camera_pictureformat_key"

    const/16 v31, 0x0

    aput-object v13, v15, v31

    const/4 v13, 0x1

    aput-object v0, v15, v13

    invoke-virtual {v7, v15}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2855
    .end local v0    # "pictureFormat":Ljava/lang/String;
    goto :goto_0

    .line 2856
    .end local v34    # "continuousShot":Ljava/lang/String;
    .end local v35    # "continuousShotOn":Ljava/lang/String;
    .end local v36    # "stillMore":Ljava/lang/String;
    .restart local v7    # "continuousShot":Ljava/lang/String;
    .restart local v13    # "continuousShotOn":Ljava/lang/String;
    .restart local v15    # "stillMore":Ljava/lang/String;
    :cond_1
    move-object/from16 v34, v7

    move-object/from16 v35, v13

    move-object/from16 v36, v15

    .end local v7    # "continuousShot":Ljava/lang/String;
    .end local v13    # "continuousShotOn":Ljava/lang/String;
    .end local v15    # "stillMore":Ljava/lang/String;
    .restart local v34    # "continuousShot":Ljava/lang/String;
    .restart local v35    # "continuousShotOn":Ljava/lang/String;
    .restart local v36    # "stillMore":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_pictureformat_key"

    const/4 v13, 0x0

    filled-new-array {v7, v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2858
    :goto_0
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "re-focus"

    .line 2859
    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2861
    .local v15, "reFocus":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2862
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e018d

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2864
    .restart local v0    # "pictureFormat":Ljava/lang/String;
    iget-object v7, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v37, v8

    const/4 v13, 0x2

    new-array v8, v13, [Ljava/lang/String;

    .end local v8    # "truPortraitOn":Ljava/lang/String;
    .local v37, "truPortraitOn":Ljava/lang/String;
    const-string v28, "pref_camera_pictureformat_key"

    const/16 v30, 0x0

    aput-object v28, v8, v30

    const/16 v28, 0x1

    aput-object v0, v8, v28

    invoke-virtual {v7, v8}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2865
    .end local v0    # "pictureFormat":Ljava/lang/String;
    nop

    .line 2868
    const/4 v8, 0x0

    goto :goto_1

    .line 2866
    .end local v37    # "truPortraitOn":Ljava/lang/String;
    .restart local v8    # "truPortraitOn":Ljava/lang/String;
    :cond_2
    move-object/from16 v37, v8

    const/4 v13, 0x2

    const/16 v28, 0x1

    const/16 v30, 0x0

    .end local v8    # "truPortraitOn":Ljava/lang/String;
    .restart local v37    # "truPortraitOn":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_pictureformat_key"

    const/4 v8, 0x0

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2868
    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 2875
    :cond_3
    move-object/from16 v39, v9

    move-object/from16 v8, v27

    move-object/from16 v9, v36

    move-object/from16 v0, v37

    goto :goto_4

    .line 2868
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 2869
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    if-eqz v2, :cond_6

    .line 2870
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_6
    if-eqz v15, :cond_7

    .line 2871
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_7
    if-eqz v4, :cond_8

    .line 2872
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    if-eqz v5, :cond_a

    .line 2873
    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .end local v37    # "truPortraitOn":Ljava/lang/String;
    .local v0, "truPortraitOn":Ljava/lang/String;
    if-nez v29, :cond_9

    goto :goto_3

    .line 2875
    :cond_9
    move-object/from16 v39, v9

    move-object/from16 v8, v27

    move-object/from16 v9, v36

    goto :goto_4

    .line 2873
    .end local v0    # "truPortraitOn":Ljava/lang/String;
    .restart local v37    # "truPortraitOn":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v37

    .end local v37    # "truPortraitOn":Ljava/lang/String;
    .restart local v0    # "truPortraitOn":Ljava/lang/String;
    :goto_3
    if-eqz v36, :cond_f

    .line 2874
    move-object/from16 v39, v9

    move-object/from16 v8, v27

    move-object/from16 v9, v36

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .end local v27    # "stillMoreOn":Ljava/lang/String;
    .end local v36    # "stillMore":Ljava/lang/String;
    .local v8, "stillMoreOn":Ljava/lang/String;
    .local v9, "stillMore":Ljava/lang/String;
    .local v39, "fssrOn":Ljava/lang/String;
    if-eqz v27, :cond_e

    .line 2875
    :goto_4
    if-eqz v2, :cond_b

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_c

    :cond_b
    if-eqz v15, :cond_d

    .line 2876
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 2877
    :cond_c
    const/16 v17, 0x0

    goto :goto_5

    .line 2879
    :cond_d
    const-string v13, "auto"

    move-object/from16 v17, v13

    iput-object v13, v14, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2881
    :goto_5
    const-string v18, "off"

    .line 2882
    const-string v21, "infinity"

    .line 2883
    iget-object v13, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e00a3

    invoke-virtual {v13, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2885
    iget-object v7, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e00bb

    invoke-virtual {v7, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2887
    iget-object v7, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f0e00fe

    invoke-virtual {v7, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2889
    const-string v24, "0"

    .line 2891
    const/4 v7, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v0

    move-object v0, v14

    .end local v0    # "truPortraitOn":Ljava/lang/String;
    .local v28, "truPortraitOn":Ljava/lang/String;
    move-object/from16 v30, v1

    move-object v1, v7

    .end local v1    # "multiTouchFocusOn":Ljava/lang/String;
    .local v30, "multiTouchFocusOn":Ljava/lang/String;
    move-object/from16 v36, v2

    move-object/from16 v2, v27

    .end local v2    # "optiZoom":Ljava/lang/String;
    .local v36, "optiZoom":Ljava/lang/String;
    move-object/from16 v27, v3

    move-object/from16 v3, v21

    .end local v3    # "chromaFlash":Ljava/lang/String;
    .local v27, "chromaFlash":Ljava/lang/String;
    move-object/from16 v37, v4

    move-object/from16 v4, v24

    .end local v4    # "fssr":Ljava/lang/String;
    .local v37, "fssr":Ljava/lang/String;
    move-object/from16 v38, v5

    move-object/from16 v5, v26

    .end local v5    # "truePortrait":Ljava/lang/String;
    .local v38, "truePortrait":Ljava/lang/String;
    move-object/from16 v40, v6

    move-object/from16 v6, v29

    .end local v6    # "multiTouchFocus":Ljava/lang/String;
    .local v40, "multiTouchFocus":Ljava/lang/String;
    move-object/from16 v29, v8

    move-object/from16 v7, v31

    .end local v8    # "stillMoreOn":Ljava/lang/String;
    .local v29, "stillMoreOn":Ljava/lang/String;
    move-object/from16 v8, v32

    move-object/from16 v32, v9

    move-object/from16 v31, v39

    move-object/from16 v9, v33

    .end local v9    # "stillMore":Ljava/lang/String;
    .end local v39    # "fssrOn":Ljava/lang/String;
    .local v31, "fssrOn":Ljava/lang/String;
    .local v32, "stillMore":Ljava/lang/String;
    move-object/from16 v33, v10

    move-object/from16 v10, v23

    .end local v10    # "optiZoomOn":Ljava/lang/String;
    .local v33, "optiZoomOn":Ljava/lang/String;
    move-object/from16 v39, v11

    move-object/from16 v11, v17

    .end local v11    # "chromaFlashOn":Ljava/lang/String;
    .local v39, "chromaFlashOn":Ljava/lang/String;
    move-object/from16 v41, v12

    move-object/from16 v12, v19

    .end local v12    # "reFocusOn":Ljava/lang/String;
    .local v41, "reFocusOn":Ljava/lang/String;
    move-object/from16 v42, v15

    move v15, v13

    move-object/from16 v13, v20

    .end local v15    # "reFocus":Ljava/lang/String;
    .local v42, "reFocus":Ljava/lang/String;
    invoke-direct/range {v0 .. v13}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const/16 v25, 0x1

    goto :goto_6

    .line 2900
    .end local v27    # "chromaFlash":Ljava/lang/String;
    .end local v28    # "truPortraitOn":Ljava/lang/String;
    .end local v29    # "stillMoreOn":Ljava/lang/String;
    .end local v30    # "multiTouchFocusOn":Ljava/lang/String;
    .end local v31    # "fssrOn":Ljava/lang/String;
    .end local v32    # "stillMore":Ljava/lang/String;
    .end local v33    # "optiZoomOn":Ljava/lang/String;
    .end local v36    # "optiZoom":Ljava/lang/String;
    .end local v37    # "fssr":Ljava/lang/String;
    .end local v38    # "truePortrait":Ljava/lang/String;
    .end local v40    # "multiTouchFocus":Ljava/lang/String;
    .end local v41    # "reFocusOn":Ljava/lang/String;
    .end local v42    # "reFocus":Ljava/lang/String;
    .restart local v0    # "truPortraitOn":Ljava/lang/String;
    .restart local v1    # "multiTouchFocusOn":Ljava/lang/String;
    .restart local v2    # "optiZoom":Ljava/lang/String;
    .restart local v3    # "chromaFlash":Ljava/lang/String;
    .restart local v4    # "fssr":Ljava/lang/String;
    .restart local v5    # "truePortrait":Ljava/lang/String;
    .restart local v6    # "multiTouchFocus":Ljava/lang/String;
    .restart local v8    # "stillMoreOn":Ljava/lang/String;
    .restart local v9    # "stillMore":Ljava/lang/String;
    .restart local v10    # "optiZoomOn":Ljava/lang/String;
    .restart local v11    # "chromaFlashOn":Ljava/lang/String;
    .restart local v12    # "reFocusOn":Ljava/lang/String;
    .restart local v15    # "reFocus":Ljava/lang/String;
    .local v39, "fssrOn":Ljava/lang/String;
    :cond_e
    move-object/from16 v28, v0

    move-object/from16 v30, v1

    move-object/from16 v36, v2

    move-object/from16 v27, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v40, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v41, v12

    move-object/from16 v42, v15

    move-object/from16 v31, v39

    const v15, 0x7f0e00fe

    move-object/from16 v39, v11

    .end local v0    # "truPortraitOn":Ljava/lang/String;
    .end local v1    # "multiTouchFocusOn":Ljava/lang/String;
    .end local v2    # "optiZoom":Ljava/lang/String;
    .end local v3    # "chromaFlash":Ljava/lang/String;
    .end local v4    # "fssr":Ljava/lang/String;
    .end local v5    # "truePortrait":Ljava/lang/String;
    .end local v6    # "multiTouchFocus":Ljava/lang/String;
    .end local v8    # "stillMoreOn":Ljava/lang/String;
    .end local v9    # "stillMore":Ljava/lang/String;
    .end local v10    # "optiZoomOn":Ljava/lang/String;
    .end local v11    # "chromaFlashOn":Ljava/lang/String;
    .end local v12    # "reFocusOn":Ljava/lang/String;
    .end local v15    # "reFocus":Ljava/lang/String;
    .restart local v27    # "chromaFlash":Ljava/lang/String;
    .restart local v28    # "truPortraitOn":Ljava/lang/String;
    .restart local v29    # "stillMoreOn":Ljava/lang/String;
    .restart local v30    # "multiTouchFocusOn":Ljava/lang/String;
    .restart local v31    # "fssrOn":Ljava/lang/String;
    .restart local v32    # "stillMore":Ljava/lang/String;
    .restart local v33    # "optiZoomOn":Ljava/lang/String;
    .restart local v36    # "optiZoom":Ljava/lang/String;
    .restart local v37    # "fssr":Ljava/lang/String;
    .restart local v38    # "truePortrait":Ljava/lang/String;
    .local v39, "chromaFlashOn":Ljava/lang/String;
    .restart local v40    # "multiTouchFocus":Ljava/lang/String;
    .restart local v41    # "reFocusOn":Ljava/lang/String;
    .restart local v42    # "reFocus":Ljava/lang/String;
    goto :goto_6

    .end local v28    # "truPortraitOn":Ljava/lang/String;
    .end local v29    # "stillMoreOn":Ljava/lang/String;
    .end local v30    # "multiTouchFocusOn":Ljava/lang/String;
    .end local v31    # "fssrOn":Ljava/lang/String;
    .end local v32    # "stillMore":Ljava/lang/String;
    .end local v33    # "optiZoomOn":Ljava/lang/String;
    .end local v37    # "fssr":Ljava/lang/String;
    .end local v38    # "truePortrait":Ljava/lang/String;
    .end local v39    # "chromaFlashOn":Ljava/lang/String;
    .end local v40    # "multiTouchFocus":Ljava/lang/String;
    .end local v41    # "reFocusOn":Ljava/lang/String;
    .end local v42    # "reFocus":Ljava/lang/String;
    .restart local v0    # "truPortraitOn":Ljava/lang/String;
    .restart local v1    # "multiTouchFocusOn":Ljava/lang/String;
    .restart local v2    # "optiZoom":Ljava/lang/String;
    .restart local v3    # "chromaFlash":Ljava/lang/String;
    .restart local v4    # "fssr":Ljava/lang/String;
    .restart local v5    # "truePortrait":Ljava/lang/String;
    .restart local v6    # "multiTouchFocus":Ljava/lang/String;
    .local v9, "fssrOn":Ljava/lang/String;
    .restart local v10    # "optiZoomOn":Ljava/lang/String;
    .restart local v11    # "chromaFlashOn":Ljava/lang/String;
    .restart local v12    # "reFocusOn":Ljava/lang/String;
    .restart local v15    # "reFocus":Ljava/lang/String;
    .local v27, "stillMoreOn":Ljava/lang/String;
    .local v36, "stillMore":Ljava/lang/String;
    :cond_f
    move-object/from16 v28, v0

    move-object/from16 v30, v1

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v40, v6

    move-object/from16 v31, v9

    move-object/from16 v33, v10

    move-object/from16 v39, v11

    move-object/from16 v41, v12

    move-object/from16 v42, v15

    move-object/from16 v29, v27

    move-object/from16 v32, v36

    const v15, 0x7f0e00fe

    move-object/from16 v36, v2

    move-object/from16 v27, v3

    .end local v0    # "truPortraitOn":Ljava/lang/String;
    .end local v1    # "multiTouchFocusOn":Ljava/lang/String;
    .end local v2    # "optiZoom":Ljava/lang/String;
    .end local v3    # "chromaFlash":Ljava/lang/String;
    .end local v4    # "fssr":Ljava/lang/String;
    .end local v5    # "truePortrait":Ljava/lang/String;
    .end local v6    # "multiTouchFocus":Ljava/lang/String;
    .end local v9    # "fssrOn":Ljava/lang/String;
    .end local v10    # "optiZoomOn":Ljava/lang/String;
    .end local v11    # "chromaFlashOn":Ljava/lang/String;
    .end local v12    # "reFocusOn":Ljava/lang/String;
    .end local v15    # "reFocus":Ljava/lang/String;
    .local v27, "chromaFlash":Ljava/lang/String;
    .restart local v28    # "truPortraitOn":Ljava/lang/String;
    .restart local v29    # "stillMoreOn":Ljava/lang/String;
    .restart local v30    # "multiTouchFocusOn":Ljava/lang/String;
    .restart local v31    # "fssrOn":Ljava/lang/String;
    .restart local v32    # "stillMore":Ljava/lang/String;
    .restart local v33    # "optiZoomOn":Ljava/lang/String;
    .local v36, "optiZoom":Ljava/lang/String;
    .restart local v37    # "fssr":Ljava/lang/String;
    .restart local v38    # "truePortrait":Ljava/lang/String;
    .restart local v39    # "chromaFlashOn":Ljava/lang/String;
    .restart local v40    # "multiTouchFocus":Ljava/lang/String;
    .restart local v41    # "reFocusOn":Ljava/lang/String;
    .restart local v42    # "reFocus":Ljava/lang/String;
    :goto_6
    const-string v0, "auto"

    iget-object v1, v14, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2901
    const-string v18, "off"

    .line 2902
    const-string v43, "auto"

    .line 2903
    .local v43, "whiteBalance":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v21

    .line 2904
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 2905
    .end local v23    # "colorEffect":Ljava/lang/String;
    .local v0, "colorEffect":Ljava/lang/String;
    iget-object v1, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2907
    .local v15, "defaultEffect":Ljava/lang/String;
    const-string v1, "auto"

    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2909
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isZzhdrEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2910
    const/16 v25, 0x1

    .line 2912
    :cond_10
    if-eqz v0, :cond_11

    const/4 v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x1

    xor-int/2addr v2, v13

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 2914
    move-object v0, v15

    .line 2915
    iget-object v1, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_coloreffect_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    iget-object v1, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2917
    iget-object v1, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2918
    iget-object v1, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_8

    .line 2921
    :cond_12
    const/4 v13, 0x1

    .end local v0    # "colorEffect":Ljava/lang/String;
    .restart local v23    # "colorEffect":Ljava/lang/String;
    :cond_13
    :goto_8
    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2922
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 2923
    iget-object v12, v14, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 2925
    .end local v26    # "touchAfAec":Ljava/lang/String;
    .local v12, "touchAfAec":Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2927
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2928
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2929
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2930
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 2925
    move-object v0, v14

    move-object/from16 v2, v43

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    move-object v5, v12

    move-object/from16 v10, v23

    move-object/from16 v11, v17

    move-object/from16 v26, v12

    move-object/from16 v12, v19

    .end local v12    # "touchAfAec":Ljava/lang/String;
    .restart local v26    # "touchAfAec":Ljava/lang/String;
    move-object/from16 v44, v15

    move v15, v13

    move-object/from16 v13, v20

    .end local v15    # "defaultEffect":Ljava/lang/String;
    .local v44, "defaultEffect":Ljava/lang/String;
    invoke-direct/range {v0 .. v13}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    .end local v43    # "whiteBalance":Ljava/lang/String;
    .end local v44    # "defaultEffect":Ljava/lang/String;
    goto :goto_9

    :cond_14
    const/4 v15, 0x1

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2934
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v21

    .line 2935
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    move-object/from16 v5, v26

    move-object/from16 v10, v23

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 2940
    :cond_15
    iget v0, v14, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v0, :cond_16

    .line 2941
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    goto :goto_9

    .line 2943
    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    move-object/from16 v5, v26

    move-object/from16 v10, v23

    move-object/from16 v11, v17

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    :goto_9
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "ae-bracket-hdr"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2951
    .local v0, "aeBracket":Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2952
    const-string v1, "off"

    .line 2953
    .end local v18    # "flashMode":Ljava/lang/String;
    .local v1, "flashMode":Ljava/lang/String;
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_a

    .line 2955
    .end local v1    # "flashMode":Ljava/lang/String;
    .restart local v18    # "flashMode":Ljava/lang/String;
    :cond_17
    move-object/from16 v1, v18

    .end local v18    # "flashMode":Ljava/lang/String;
    .restart local v1    # "flashMode":Ljava/lang/String;
    :goto_a
    if-nez v25, :cond_19

    iget-boolean v2, v14, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v2, :cond_18

    goto :goto_b

    .line 2959
    :cond_18
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_longshot_key"

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2962
    const/4 v3, 0x2

    const/4 v7, 0x0

    goto :goto_c

    .line 2956
    :cond_19
    :goto_b
    const/4 v4, 0x0

    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "pref_camera_longshot_key"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0353

    .line 2957
    invoke-virtual {v6, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v15

    .line 2956
    invoke-virtual {v2, v5}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2962
    :goto_c
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    const/4 v5, 0x6

    const/4 v6, 0x5

    if-eqz v2, :cond_1d

    .line 2963
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_tsmakeup_level_key"

    .line 2964
    invoke-virtual {v2, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IconListPreference;

    .line 2966
    .local v2, "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    if-eqz v2, :cond_1c

    .line 2967
    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Off"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 2968
    iput-boolean v15, v14, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 2969
    iget-boolean v8, v14, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v8, :cond_1a

    .line 2971
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v8, v15}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2972
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v8, v6}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_d

    .line 2973
    :cond_1a
    iget-boolean v8, v14, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v8, :cond_1b

    .line 2974
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v8, v15}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2975
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v8, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_d

    .line 2977
    :cond_1b
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v8, v15}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2978
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2980
    :goto_d
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v9, v3, [Ljava/lang/String;

    const-string v10, "pref_camera_facedetection_key"

    aput-object v10, v9, v7

    sget-object v10, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    aput-object v10, v9, v15

    invoke-virtual {v8, v9}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto :goto_e

    .line 2983
    :cond_1c
    iput-boolean v7, v14, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 2988
    .end local v2    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_1d
    :goto_e
    const v2, 0x7f0e037e

    if-nez v1, :cond_1f

    .line 2990
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v8, :cond_1e

    .line 2991
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_flashmode_key"

    iget-object v10, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2993
    invoke-virtual {v10, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2991
    invoke-virtual {v8, v9, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 2995
    :cond_1e
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v8, "pref_camera_flashmode_key"

    iget-object v9, v14, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iput-object v4, v14, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    goto :goto_f

    .line 2999
    :cond_1f
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v8, :cond_20

    .line 3000
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_flashmode_key"

    iget-object v10, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3002
    invoke-virtual {v10, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3000
    invoke-virtual {v8, v9, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 3004
    :cond_20
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v8, v3, [Ljava/lang/String;

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v8, v7

    aput-object v1, v8, v15

    invoke-virtual {v2, v8}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3007
    :goto_f
    iget v2, v14, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v8

    if-eq v2, v8, :cond_21

    .line 3011
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_selfiemirror_key"

    invoke-static {v2, v8}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    goto :goto_10

    .line 3013
    :cond_21
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_selfiemirror_key"

    invoke-virtual {v2, v8}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 3014
    .local v2, "prefSelfieMirror":Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_22

    .line 3015
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "enable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 3016
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v9, "pref_camera_longshot_key"

    const-string v10, "off"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3021
    .end local v2    # "prefSelfieMirror":Lcom/android/camera/ListPreference;
    :cond_22
    :goto_10
    const-string v2, "ro.config.versatility"

    const-string v8, "WW"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "JP"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3022
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v8, "pref_camera_shuttersound_key"

    invoke-static {v2, v8}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 3026
    :cond_23
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_bokeh_mode_key"

    .line 3030
    iget v9, v14, Lcom/android/camera/PhotoModule;->mCameraId:I

    const v10, 0x7f0e02d4

    const/4 v11, 0x3

    if-ne v9, v11, :cond_24

    .line 3031
    iget-object v9, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02d8

    invoke-virtual {v9, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    .line 3032
    :cond_24
    iget-object v9, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3026
    :goto_11
    invoke-virtual {v2, v8, v9}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3035
    .local v2, "bokehMode":Ljava/lang/String;
    iget-object v8, v14, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_asus_single_bokeh_mode_key"

    iget-object v12, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3037
    invoke-virtual {v12, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3035
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3038
    .local v8, "singleBokehMode":Ljava/lang/String;
    iget-object v9, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e02d9

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 3040
    iput-boolean v15, v14, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 3042
    iput-boolean v15, v14, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 3043
    iput-boolean v7, v14, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3045
    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v15}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3048
    iget-boolean v4, v14, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-eqz v4, :cond_25

    .line 3050
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_12

    .line 3052
    :cond_25
    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3056
    :goto_12
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_26

    .line 3057
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3059
    :cond_26
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v4, "pref_camera_flashmode_key"

    const-string v5, "off"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3060
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v4, "pref_camera_scenemode_key"

    const-string v5, "auto"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3061
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3062
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "pref_camera_bokeh_blur_degree_key"

    const/16 v5, 0x32

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3063
    .local v4, "degree":I
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3064
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, v14, Lcom/android/camera/PhotoModule;->mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3065
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5, v15}, Lcom/android/camera/PhotoUI;->enableBokehRender(Z)V

    .line 3066
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5, v4}, Lcom/android/camera/PhotoUI;->setBokehRenderDegree(I)V

    .line 3070
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "degree":I
    goto/16 :goto_14

    :cond_27
    iget-object v6, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 3072
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_28

    .line 3073
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3076
    :cond_28
    iput-boolean v7, v14, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 3077
    iput-boolean v15, v14, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3079
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3, v15}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3082
    iget-boolean v3, v14, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-eqz v3, :cond_29

    .line 3084
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_13

    .line 3086
    :cond_29
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3, v11}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3090
    :goto_13
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v4, "pref_camera_flashmode_key"

    const-string v5, "off"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3091
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v4, "pref_camera_scenemode_key"

    const-string v5, "auto"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3092
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3093
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    const-string v4, "pref_asus_single_bokeh_blur_degree_key"

    const/16 v5, 0x50

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3094
    .restart local v4    # "degree":I
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3095
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, v14, Lcom/android/camera/PhotoModule;->mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3098
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "degree":I
    goto :goto_14

    .line 3099
    :cond_2a
    iput-boolean v7, v14, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 3101
    iput-boolean v7, v14, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 3102
    iput-boolean v7, v14, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3104
    iget-boolean v5, v14, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-nez v5, :cond_2b

    .line 3106
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5, v7}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3110
    :cond_2b
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v5, :cond_2c

    .line 3111
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v5, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3113
    :cond_2c
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v6, v3, [Ljava/lang/String;

    const-string v9, "pref_camera_bokeh_mpo_key"

    aput-object v9, v6, v7

    iget-object v9, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e02da

    .line 3114
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v15

    .line 3113
    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3115
    iget-object v5, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "pref_camera_bokeh_blur_degree_key"

    aput-object v6, v3, v7

    iget-object v6, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02e0

    .line 3116
    invoke-virtual {v6, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v15

    .line 3115
    invoke-virtual {v5, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3117
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3118
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3119
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/PhotoUI;->enableBokehRender(Z)V

    .line 3120
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3123
    :goto_14
    return-void
.end method

.method private updateCommonManual3ASettings()V
    .locals 24

    .line 2749
    move-object/from16 v14, p0

    sget-object v15, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    .line 2750
    .local v15, "touchAfAec":Ljava/lang/String;
    const-string v0, "auto"

    iput-object v0, v14, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2751
    const-string v16, "off"

    .line 2752
    .local v16, "flashMode":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2754
    .local v17, "redeyeReduction":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00bb

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2756
    .local v18, "aeBracketing":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e00fe

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2758
    .local v19, "colorEffect":Ljava/lang/String;
    const-string v20, "0"

    .line 2759
    .local v20, "exposureCompensation":Ljava/lang/String;
    iget v0, v14, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/4 v13, 0x2

    if-lez v0, :cond_0

    .line 2760
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2762
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2763
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2764
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2765
    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v14, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2760
    move-object v0, v14

    move-object/from16 v1, v16

    move-object/from16 v4, v20

    move-object v5, v15

    move-object/from16 v10, v19

    move-object/from16 v12, v17

    move-object/from16 v23, v15

    move v15, v13

    move-object/from16 v13, v18

    .end local v15    # "touchAfAec":Ljava/lang/String;
    .local v23, "touchAfAec":Ljava/lang/String;
    invoke-direct/range {v0 .. v13}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v1, v15, [Ljava/lang/String;

    const-string v2, "pref_camera_longshot_key"

    aput-object v2, v1, v21

    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0353

    .line 2769
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v22

    .line 2768
    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 2772
    .end local v23    # "touchAfAec":Ljava/lang/String;
    .restart local v15    # "touchAfAec":Ljava/lang/String;
    :cond_0
    move-object/from16 v23, v15

    move v15, v13

    .end local v15    # "touchAfAec":Ljava/lang/String;
    .restart local v23    # "touchAfAec":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0112

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2774
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_longshot_key"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2781
    :goto_0
    iget-object v0, v14, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 2782
    .local v0, "isoMode":Ljava/lang/String;
    const-string v1, "manual"

    .line 2783
    .local v1, "isoManual":Ljava/lang/String;
    const-string v2, "manual"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2784
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_iso_key"

    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e00e8

    .line 2786
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2784
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2787
    .local v2, "isoPref":Ljava/lang/String;
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v4, v15, [Ljava/lang/String;

    const-string v5, "pref_camera_iso_key"

    aput-object v5, v4, v21

    aput-object v2, v4, v22

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2789
    .end local v2    # "isoPref":Ljava/lang/String;
    :cond_1
    iget v2, v14, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/2addr v2, v15

    if-eqz v2, :cond_2

    .line 2790
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0388

    .line 2792
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2790
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2793
    .local v2, "whiteBalance":Ljava/lang/String;
    iget-object v3, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v4, v15, [Ljava/lang/String;

    const-string v5, "pref_camera_whitebalance_key"

    aput-object v5, v4, v21

    aput-object v2, v4, v22

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2795
    .end local v2    # "whiteBalance":Ljava/lang/String;
    :cond_2
    iget v2, v14, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 2796
    iget-object v2, v14, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    new-array v3, v15, [Ljava/lang/String;

    const-string v4, "pref_camera_focusmode_key"

    aput-object v4, v3, v21

    iget-object v4, v14, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2797
    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v22

    .line 2796
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2799
    :cond_3
    return-void
.end method

.method private updateFocusManager(Lcom/android/camera/PhotoUI;)V
    .locals 2
    .param p1, "mUI"    # Lcom/android/camera/PhotoUI;

    .line 3846
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3847
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->setPhotoUI(Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    .line 3849
    invoke-virtual {p1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3851
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3852
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 3857
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "width":I
    :cond_0
    return-void
.end method

.method private updateRemainingPhotos()V
    .locals 4

    .line 3660
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    if-eqz v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3662
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    goto :goto_0

    .line 3665
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    .line 3667
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 3668
    return-void
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .line 6230
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public autoFocus()V
    .locals 3

    .line 3906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 3907
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFCallback;)V

    .line 3908
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3909
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .line 3914
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3916
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3917
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3918
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 3920
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 26

    .line 2460
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_23

    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_23

    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2463
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2464
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_14

    .line 2467
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2468
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2469
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2471
    iput v2, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2472
    iput v2, v1, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 2473
    iput-object v5, v1, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 2474
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 2477
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v6, "hdr"

    const/4 v7, 0x1

    if-ne v0, v6, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v6, v0

    .line 2478
    .local v6, "animateBefore":Z
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v0, :cond_3

    .line 2479
    iget v0, v1, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v8, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v0, v8, :cond_2

    .line 2480
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 2481
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 2483
    :cond_2
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v8, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v8, v1}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2491
    :cond_3
    if-nez v6, :cond_4

    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v0, :cond_5

    .line 2492
    :cond_4
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v7}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 2495
    :cond_5
    if-eqz v6, :cond_6

    .line 2496
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    .line 2499
    :cond_6
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "picture-format"

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2501
    .local v8, "format":Ljava/lang/String;
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v10, 0x2

    const/4 v11, 0x5

    if-ne v0, v11, :cond_7

    .line 2502
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v7}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshot(Z)V

    .line 2503
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2505
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "3d_nr_is_applied"

    const-string v13, "disable"

    invoke-virtual {v0, v12, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2507
    :cond_7
    const-string v0, "hdr"

    iget-object v12, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2508
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v12, "on"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_8
    const-string v0, "jpeg"

    .line 2513
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-nez v0, :cond_f

    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v0, :cond_9

    goto/16 :goto_5

    .line 2525
    :cond_9
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2526
    const/4 v12, 0x0

    .line 2527
    .local v12, "iso":I
    const-wide/16 v13, 0x0

    .line 2528
    .local v13, "exp_time":D
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;

    move-result-object v15

    .line 2529
    .local v15, "set_iso":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "cur-iso"

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2530
    .local v5, "currentISO":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "cur-exposure-time"

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2532
    .local v9, "currentExpTime":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 2533
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 2536
    :cond_a
    const-string v0, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current set_iso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", current exp time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2538
    .local v3, "pic_size":Landroid/hardware/Camera$Size;
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iput v0, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 2539
    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    iput v0, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 2540
    iget v0, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_b

    iget v0, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    goto :goto_1

    :cond_b
    iget v0, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v4, v4, 0x40

    rsub-int/lit8 v4, v4, 0x40

    add-int/2addr v0, v4

    :goto_1
    iput v0, v1, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 2541
    iget v0, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_c

    iget v0, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    goto :goto_2

    :cond_c
    iget v0, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v4, v4, 0x40

    rsub-int/lit8 v4, v4, 0x40

    add-int/2addr v0, v4

    :goto_2
    iput v0, v1, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 2542
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    .line 2543
    const/4 v0, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v4, "auto"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v2

    goto :goto_3

    :sswitch_1
    const-string v4, "ISO_HJR"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v7

    goto :goto_3

    :sswitch_2
    const-string v4, "ISO3200"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v0, 0x7

    goto :goto_3

    :sswitch_3
    const-string v4, "ISO1600"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_4
    const-string v4, "ISO800"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v11

    goto :goto_3

    :sswitch_5
    const-string v4, "ISO400"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_6
    const-string v4, "ISO200"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_7
    const-string v4, "ISO100"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v10

    :cond_d
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 2582
    const-string v0, "CAM_PhotoModule"

    const-string v4, "ISO read fail!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .end local v3    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v5    # "currentISO":Ljava/lang/String;
    .end local v9    # "currentExpTime":Ljava/lang/String;
    .end local v12    # "iso":I
    .end local v13    # "exp_time":D
    .end local v15    # "set_iso":Ljava/lang/String;
    goto/16 :goto_6

    .line 2573
    .restart local v3    # "pic_size":Landroid/hardware/Camera$Size;
    .restart local v5    # "currentISO":Ljava/lang/String;
    .restart local v9    # "currentExpTime":Ljava/lang/String;
    .restart local v12    # "iso":I
    .restart local v13    # "exp_time":D
    .restart local v15    # "set_iso":Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAM_PhotoModule"

    const-string v4, "need 3dnr"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "3d_nr_is_applied"

    const-string v11, "enable"

    invoke-virtual {v0, v4, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    iget v0, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2576
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 2577
    const-string v0, "CAM_PhotoModule"

    const-string v4, "set metadata cb"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 2579
    iput-boolean v7, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2580
    goto/16 :goto_6

    .line 2566
    :pswitch_1
    const-string v0, "CAM_PhotoModule"

    const-string v4, "No need to use 3dnr"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "3d_nr_is_applied"

    const-string v11, "disable"

    invoke-virtual {v0, v4, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2569
    goto :goto_6

    .line 2546
    :pswitch_2
    const-string v0, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "auto iso, current iso = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 2551
    goto :goto_4

    .line 2550
    :catch_0
    move-exception v0

    .line 2552
    :goto_4
    const/16 v0, 0x320

    if-lt v12, v0, :cond_e

    .line 2553
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "3d_nr_is_applied"

    const-string v11, "enable"

    invoke-virtual {v0, v4, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    iget v0, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2555
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 2556
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 2557
    iput-boolean v7, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto :goto_6

    .line 2559
    :cond_e
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "3d_nr_is_applied"

    const-string v11, "disable"

    invoke-virtual {v0, v4, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2562
    goto :goto_6

    .line 2516
    .end local v3    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v5    # "currentISO":Ljava/lang/String;
    .end local v9    # "currentExpTime":Ljava/lang/String;
    .end local v12    # "iso":I
    .end local v13    # "exp_time":D
    .end local v15    # "set_iso":Ljava/lang/String;
    :cond_f
    :goto_5
    const-string v0, "CAM_PhotoModule"

    const-string v3, "mode conflict, don\'t open 3dnr"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2518
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v0, :cond_10

    .line 2521
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideRender()V

    .line 2588
    :cond_10
    :goto_6
    const-string v0, "On"

    iget-object v3, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_tsmakeup_key"

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0225

    invoke-virtual {v5, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_11

    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    if-eqz v0, :cond_15

    :cond_11
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_15

    .line 2590
    iput-boolean v7, v1, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 2591
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2592
    .local v0, "pic_size":Landroid/hardware/Camera$Size;
    iget v4, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/2addr v4, v3

    iput v4, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2593
    iget-boolean v4, v1, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    if-eqz v4, :cond_12

    .end local v0    # "pic_size":Landroid/hardware/Camera$Size;
    goto :goto_9

    .line 2596
    .restart local v0    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_12
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iput v4, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 2597
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iput v4, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 2598
    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_13

    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    goto :goto_7

    :cond_13
    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    iget v5, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v5, v5, 0x40

    rsub-int/lit8 v5, v5, 0x40

    add-int/2addr v4, v5

    :goto_7
    iput v4, v1, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 2599
    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_14

    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    goto :goto_8

    :cond_14
    iget v4, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    iget v5, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v5, v5, 0x40

    rsub-int/lit8 v5, v5, 0x40

    add-int/2addr v4, v5

    :goto_8
    iput v4, v1, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 2600
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 2602
    .end local v0    # "pic_size":Landroid/hardware/Camera$Size;
    :goto_9
    goto :goto_a

    .line 2603
    :cond_15
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 2605
    :goto_a
    const-string v0, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFeatureMask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v0, :cond_17

    .line 2607
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v0}, Lcom/android/camera/MultiPPManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2608
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    iget v4, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    iget v5, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    iget v9, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/camera/MultiPPManager;->reset(III)Z

    goto :goto_b

    .line 2610
    :cond_16
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, v1, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    iget v9, v1, Lcom/android/camera/PhotoModule;->mNSWidth:I

    iget v11, v1, Lcom/android/camera/PhotoModule;->mNSHeight:I

    invoke-virtual {v0, v4, v5, v9, v11}, Lcom/android/camera/MultiPPManager;->init(Lcom/android/camera/CameraActivity;III)Z

    .line 2612
    :goto_b
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

    invoke-virtual {v0, v4}, Lcom/android/camera/MultiPPManager;->setPostProcCallback(Lcom/android/camera/MultiPPManager$PostProcCallback;)V

    .line 2614
    :cond_17
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    if-eqz v0, :cond_19

    .line 2615
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    if-eqz v0, :cond_18

    .line 2616
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    goto :goto_c

    .line 2618
    :cond_18
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_tsmakeup_whiten"

    iget-object v5, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2619
    const v9, 0x7f0e0226

    invoke-virtual {v5, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2618
    invoke-virtual {v0, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2620
    .local v0, "makeupWhitenValue":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_tsmakeup_clean"

    iget-object v11, v1, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2621
    invoke-virtual {v11, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2620
    invoke-virtual {v4, v5, v9}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2622
    .local v4, "makeupCleanValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2623
    .local v5, "whiten":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2625
    .local v9, "soften":I
    iget-object v11, v1, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v12, 0x4

    new-array v12, v12, [I

    aput v5, v12, v2

    aput v9, v12, v7

    aput v2, v12, v10

    const/4 v10, 0x3

    aput v2, v12, v10

    invoke-virtual {v11, v3, v12}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 2631
    .end local v0    # "makeupWhitenValue":Ljava/lang/String;
    .end local v4    # "makeupCleanValue":Ljava/lang/String;
    .end local v5    # "whiten":I
    .end local v9    # "soften":I
    :cond_19
    :goto_c
    iget v3, v1, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 2632
    .local v3, "orientation":I
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->getJpegRotationForCamera1(II)I

    move-result v0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 2633
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "picture-format"

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2634
    .local v4, "pictureFormat":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/camera/PhotoModule;->getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 2636
    .local v5, "loc":Landroid/location/Location;
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v9

    .line 2637
    :try_start_1
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v10, v1, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2638
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v5}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2640
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mRefocus:Z

    if-eqz v0, :cond_1a

    .line 2641
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v10, "snapshot-burst-num"

    const/4 v11, 0x7

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_d

    .line 2644
    :cond_1a
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v10, "snapshot-burst-num"

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2651
    :goto_d
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2652
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 2653
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2655
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v10, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v10}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2656
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2657
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2660
    :try_start_2
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "num-snaps-per-shutter"

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2663
    goto :goto_e

    .line 2661
    :catch_1
    move-exception v0

    .line 2662
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iput v7, v1, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    .line 2664
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_e
    iput v2, v1, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    .line 2665
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isPreviewRestartEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2666
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->isInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v9

    and-int/2addr v0, v9

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2668
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    iget v9, v1, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    if-ne v9, v7, :cond_1b

    move v9, v7

    goto :goto_f

    :cond_1b
    move v9, v2

    :goto_f
    and-int/2addr v0, v9

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2670
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    const-string v9, "hdr"

    iget-object v10, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v7

    and-int/2addr v0, v9

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2671
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    const-string v9, "jpeg"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v0, v9

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2676
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v9, 0x5

    if-eq v0, v9, :cond_1c

    .line 2677
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 2680
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->isShutterSoundOn()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2681
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    goto :goto_10

    .line 2683
    :cond_1d
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-boolean v9, v1, Lcom/android/camera/PhotoModule;->mRefocus:Z

    xor-int/2addr v9, v7

    invoke-interface {v0, v9}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    .line 2686
    :goto_10
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    if-eqz v0, :cond_1e

    move v0, v7

    goto :goto_11

    :cond_1e
    move v0, v2

    :goto_11
    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    .line 2689
    iget v0, v1, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v9, 0x5

    if-ne v0, v9, :cond_20

    .line 2690
    const-string v0, "persist.sys.camera.longshot.shotnum"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mLongShotCaptureCountLimit:I

    .line 2692
    iput v7, v1, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    .line 2693
    iget-boolean v0, v1, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    if-eqz v0, :cond_1f

    .line 2694
    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v10, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iget-object v12, v1, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/camera/PhotoModule$LongshotPictureCallback;

    invoke-direct {v14, v1, v5}, Lcom/android/camera/PhotoModule$LongshotPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v9 .. v14}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    goto :goto_13

    .line 2699
    :cond_1f
    iget-object v15, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iget-object v10, v1, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    const/16 v19, 0x0

    new-instance v11, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v11, v1, v5}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    invoke-interface/range {v15 .. v20}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    goto :goto_13

    .line 2706
    :cond_20
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v9, v1, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/camera/PhotoModule$ShutterCallback;

    if-nez v6, :cond_21

    move v11, v7

    goto :goto_12

    :cond_21
    move v11, v2

    :goto_12
    invoke-direct {v10, v1, v11}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Z)V

    iget-object v11, v1, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    iget-object v12, v1, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v13, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v13, v1, v5}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    invoke-interface/range {v20 .. v25}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 2710
    const/4 v9, 0x3

    invoke-direct {v1, v9}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2713
    :goto_13
    iget-object v0, v1, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v9, v1, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    iget-boolean v11, v1, Lcom/android/camera/PhotoModule;->mRefocus:Z

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 2715
    iget v0, v1, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v9, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v0, v9, :cond_22

    .line 2716
    iput-boolean v2, v1, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2718
    :cond_22
    const-string v10, "Camera"

    const-string v11, "CaptureDone"

    const-string v12, "Photo"

    const-wide/16 v13, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 2720
    invoke-static {v2}, Lcom/android/camera/PhotoModule$NamedImages;->access$10100(Lcom/android/camera/PhotoModule$NamedImages;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v2, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2718
    invoke-static/range {v10 .. v15}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 2721
    return v7

    .line 2657
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2465
    .end local v3    # "orientation":I
    .end local v4    # "pictureFormat":Ljava/lang/String;
    .end local v5    # "loc":Landroid/location/Location;
    .end local v6    # "animateBefore":Z
    .end local v8    # "format":Ljava/lang/String;
    :cond_23
    :goto_14
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7eb7f494 -> :sswitch_7
        -0x7eb7f0d3 -> :sswitch_6
        -0x7eb7e951 -> :sswitch_5
        -0x7eb7da4d -> :sswitch_4
        -0x58468736 -> :sswitch_3
        -0x5845ad7c -> :sswitch_2
        -0x5831574a -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x14
        0x14
        0x0
        0x0
    .end array-data
.end method

.method public enableRecordingLocation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1011
    if-eqz p1, :cond_0

    const-string v0, "on"

    goto :goto_0

    .line 1012
    :cond_0
    const-string v0, "off"

    .line 1011
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1014
    return-void
.end method

.method protected getCamera()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .line 3897
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .line 6166
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .line 6376
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .line 888
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 889
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 890
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 891
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 896
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 898
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 899
    new-instance v0, Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 900
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->start()V

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 907
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 909
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 910
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 912
    new-instance v0, Lcom/android/camera/PhotoUI;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/camera/PhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 914
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-nez v0, :cond_2

    .line 915
    new-instance v0, Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 916
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$StartPreviewThread;->start()V

    .line 919
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 920
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 921
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 922
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    .line 924
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 926
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    .line 928
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 930
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 932
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 933
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_brightness_key"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 936
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 937
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 939
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 938
    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 941
    new-instance v0, Lcom/android/camera/MultiPPManager;

    invoke-direct {v0}, Lcom/android/camera/MultiPPManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    .line 943
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .line 3538
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .line 5456
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 5458
    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 5456
    :cond_1
    :goto_0
    return v1
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .line 5464
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5465
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 5466
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 5465
    :goto_1
    return v1
.end method

.method public isRefocus()Z
    .locals 1

    .line 6255
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 6191
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 3876
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3878
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3879
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 3880
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3881
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 3882
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3885
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3886
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3888
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "crop-temp"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3889
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3891
    nop

    .line 3894
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "path":Ljava/io/File;
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 3943
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .line 6060
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6062
    :cond_0
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 6064
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to switch camera. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6068
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    .line 6069
    return-void

    .line 6060
    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureCancelled()V
    .locals 3

    .line 3242
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3243
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3244
    return-void
.end method

.method public onCaptureDone()V
    .locals 8

    .line 3256
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3257
    return-void

    .line 3260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3262
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3267
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 3268
    move-object v1, v2

    .line 3270
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v1, v2

    .line 3271
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3272
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 3274
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3275
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3279
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 3276
    :catch_0
    move-exception v2

    .line 3279
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3280
    nop

    .line 3281
    goto/16 :goto_2

    .line 3282
    :cond_1
    invoke-static {v0}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v1

    .line 3283
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v2

    .line 3284
    .local v2, "orientation":I
    const v4, 0xc800

    invoke-static {v0, v4}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3285
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4, v2}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3286
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "inline-data"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "data"

    .line 3287
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 3286
    invoke-virtual {v5, v3, v6}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3288
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3289
    .end local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v2    # "orientation":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 3292
    :cond_2
    const/4 v1, 0x0

    .line 3293
    .local v1, "tempUri":Landroid/net/Uri;
    nop

    .line 3295
    .local v2, "tempStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v5, "crop-temp"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 3296
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3297
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v6, "crop-temp"

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v2, v5

    .line 3298
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3299
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3300
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v5

    .line 3310
    .end local v4    # "path":Ljava/io/File;
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3311
    nop

    .line 3313
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3314
    .local v3, "newExtras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v5, "circle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3315
    const-string v4, "circleCrop"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 3318
    const-string v4, "output"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 3320
    :cond_4
    const-string v4, "return-data"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3322
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3323
    const-string v4, "showWhenLocked"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3327
    :cond_5
    const-string v4, "com.android.camera.action.CROP"

    .line 3328
    .local v4, "CROP_ACTION":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3330
    .local v5, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3331
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3333
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v5, v7}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3335
    .end local v1    # "tempUri":Landroid/net/Uri;
    .end local v2    # "tempStream":Ljava/io/FileOutputStream;
    .end local v3    # "newExtras":Landroid/os/Bundle;
    .end local v4    # "CROP_ACTION":Ljava/lang/String;
    .end local v5    # "cropIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 3310
    .restart local v1    # "tempUri":Landroid/net/Uri;
    .restart local v2    # "tempStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 3305
    :catch_1
    move-exception v4

    .line 3306
    .local v4, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5, v3}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3307
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3310
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3308
    return-void

    .line 3301
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 3302
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5, v3}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3303
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3310
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3304
    return-void

    .line 3310
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public onCaptureRetake()V
    .locals 1

    .line 3248
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3249
    return-void

    .line 3250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 3251
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 3252
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .line 6080
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3861
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3863
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 3864
    return-void
.end method

.method public onCountDownFinished()V
    .locals 3

    .line 6124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 6125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initiateSnap()V

    .line 6126
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    .line 6127
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_zsl_key"

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 6128
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showUIAfterCountDown()V

    .line 6129
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 3236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 3238
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .line 6371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->enableRecordingLocation(Z)V

    .line 6372
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3948
    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 3951
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3952
    return v3

    .line 3958
    :cond_0
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 3959
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3960
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 3962
    :cond_1
    return v1

    .line 3964
    :cond_2
    return v3

    .line 4015
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 4019
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 4020
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->pressShutterButton()V

    .line 4022
    :cond_3
    return v1

    .line 3992
    :pswitch_3
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3993
    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v4, v1, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3994
    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v4, v2, :cond_6

    .line 3995
    iget v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    const/4 v4, 0x6

    if-ge v2, v4, :cond_4

    .line 3996
    iget v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 3997
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3999
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4000
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "luma-adaptation"

    iget v6, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4002
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4004
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4005
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4006
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_camera_brightness_key"

    iget v5, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4007
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4008
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4009
    sput-boolean v1, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    .line 4010
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_2

    .line 3971
    :pswitch_4
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3972
    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v4, v1, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3973
    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v4, v2, :cond_6

    .line 3974
    iget v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    if-lez v2, :cond_5

    .line 3975
    iget v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 3976
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3978
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3979
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "luma-adaptation"

    iget v6, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3981
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 3983
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3984
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3985
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_camera_brightness_key"

    iget v5, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3986
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3987
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3988
    sput-boolean v1, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    .line 3989
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    nop

    .line 4024
    :cond_6
    :goto_2
    return v3

    .line 3966
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 3967
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 3969
    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4029
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 4049
    return v1

    .line 4044
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 4045
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 4047
    :cond_0
    return v0

    .line 4040
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 4041
    return v0

    .line 4032
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 4033
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4034
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    .line 4035
    return v0

    .line 4037
    :cond_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 6260
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 6261
    const-string v0, "CAM_PhotoModule"

    const-string v1, "MakeupLevel failed CameraDevice not yet initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    return-void

    .line 6264
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 6265
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/PhotoModule;->onMakeupLevelSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 6266
    monitor-exit v0

    .line 6267
    return-void

    .line 6266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMakeupLevelSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 6270
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoModule.onMakeupLevel(): key is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6272
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6273
    return-void

    .line 6276
    :cond_0
    const-string v0, "On"

    .line 6278
    .local v0, "prefValue":Ljava/lang/String;
    const-string v1, "Off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 6279
    const-string v0, "Off"

    .line 6280
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v1, :cond_1

    .line 6282
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6283
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_0

    .line 6284
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v1, :cond_2

    .line 6285
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6286
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_0

    .line 6288
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6290
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    goto :goto_1

    .line 6292
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 6293
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6294
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v1, :cond_4

    .line 6296
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_1

    .line 6297
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v1, :cond_5

    .line 6298
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_1

    .line 6300
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6304
    :goto_1
    const-string v1, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMakeupLevel(): prefValue is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup"

    invoke-virtual {v1, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6307
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 6308
    const-string v1, "none"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6309
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6310
    .local v1, "pref":Lcom/android/camera/ListPreference;
    const v4, 0x7f0e0226

    if-eqz v1, :cond_7

    .line 6311
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 6312
    .local v5, "whitenValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6313
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6315
    :cond_6
    invoke-virtual {v1, v5}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6316
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "tsmakeup_whiten"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6319
    .end local v5    # "whitenValue":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v6, "pref_camera_tsmakeup_clean"

    invoke-virtual {v5, v6}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6320
    if-eqz v1, :cond_9

    .line 6321
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 6322
    .local v5, "cleanValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6323
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6325
    :cond_8
    invoke-virtual {v1, v5}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6326
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "tsmakeup_clean"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6328
    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    .end local v5    # "cleanValue":Ljava/lang/String;
    :cond_9
    goto :goto_2

    .line 6330
    :cond_a
    const-string v1, "pref_camera_tsmakeup_level_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6331
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_b

    .line 6332
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup_whiten"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6333
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup_clean"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6335
    :cond_b
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v4, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v1, v4}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6336
    .restart local v1    # "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_c

    .line 6337
    invoke-virtual {v1, p2}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6339
    :cond_c
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_tsmakeup_clean"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6340
    if-eqz v1, :cond_d

    .line 6341
    invoke-virtual {v1, p2}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6343
    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    :cond_d
    goto :goto_2

    :cond_e
    const-string v1, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6344
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_10

    .line 6345
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup_whiten"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2

    .line 6347
    :cond_f
    const-string v1, "pref_camera_tsmakeup_clean"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6348
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_10

    .line 6349
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "tsmakeup_clean"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6354
    :cond_10
    :goto_2
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v1, v3, :cond_11

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-nez v1, :cond_11

    .line 6355
    const-string v1, "CAM_PhotoModule"

    const-string v2, "set low cost fb on."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6356
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "asus_beauty"

    const-string v4, "on"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6357
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    goto :goto_3

    .line 6359
    :cond_11
    const-string v1, "CAM_PhotoModule"

    const-string v3, "set low cost fb off."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6360
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "asus_beauty"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6361
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 6365
    :goto_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6366
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6367
    return-void
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .line 6184
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 6185
    invoke-virtual {p1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 6187
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .line 3197
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3198
    :cond_0
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3199
    .local v0, "oldOrientation":I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3200
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    if-eq v0, v1, :cond_2

    .line 3201
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v1, v2, :cond_1

    .line 3202
    const-string v1, "CAM_PhotoModule"

    const-string v3, "onOrientationChanged, update parameters"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 3204
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFlipValue()V

    .line 3205
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3206
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3208
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->tryToCloseSubList()V

    .line 3209
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 3210
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_2

    .line 3211
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/GraphView;->setRotation(F)V

    .line 3216
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3217
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3218
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    .line 3222
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GraphView;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    .line 3223
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_4

    .line 3224
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Lcom/android/camera/GraphView;->setAlpha(F)V

    .line 3225
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/GraphView;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    .line 3226
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1}, Lcom/android/camera/GraphView;->PreviewChanged()V

    .line 3228
    :cond_4
    return-void
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 1

    .line 6100
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 6101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showPreferencesToast()V

    .line 6102
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 3

    .line 3758
    const-string v0, "CAM_PhotoModule"

    const-string v1, "On pause."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showPreviewCover()V

    .line 3760
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideSurfaceView()V

    .line 3764
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v1, :cond_0

    .line 3765
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 3767
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v1, :cond_1

    .line 3768
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 3771
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    if-eqz v1, :cond_2

    .line 3772
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$SavingThread;->join()V

    .line 3773
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3778
    :cond_2
    goto :goto_0

    .line 3776
    :catch_0
    move-exception v1

    .line 3779
    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 3780
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 3784
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_3

    .line 3785
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3787
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetManual3ASettings()V

    .line 3791
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 3797
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3801
    :cond_4
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3804
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3806
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 3808
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 3809
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->onPause()V

    .line 3811
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 3812
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 3813
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 3814
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_6

    .line 3815
    invoke-virtual {v1, v0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 3817
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeDisplayChangeListener()V

    .line 3818
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 4

    .line 3722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 3723
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v2, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 3725
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3728
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3729
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 3730
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3733
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 3734
    .local v1, "msensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    .line 3735
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3738
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_2

    .line 3739
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 3740
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    .line 3743
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    if-eqz v2, :cond_3

    .line 3744
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$SelfieThread;->interrupt()V

    .line 3747
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v2, :cond_4

    .line 3748
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v2}, Lcom/android/camera/MultiPPManager;->deinit()V

    .line 3750
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->stopSelfieFlash()V

    .line 3752
    const-string v2, "CAM_PhotoModule"

    const-string v3, "remove idle handleer in onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->removeIdleHandler()V

    .line 3754
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .line 6218
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->onPreviewFocusChanged(Z)V

    .line 6219
    return-void
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .line 1189
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 1190
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .line 6075
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6076
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1045
    return-void

    .line 1048
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 1050
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 1055
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :cond_2
    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1069
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1070
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 4

    .line 1024
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1027
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1029
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1033
    .local v1, "sh":Landroid/view/SurfaceHolder;
    if-nez v1, :cond_2

    .line 1034
    const-string v2, "CAM_PhotoModule"

    const-string v3, "startPreview: holder for preview are not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit v0

    return-void

    .line 1037
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1038
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    monitor-exit v0

    .line 1040
    :goto_0
    return-void

    .line 1038
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1025
    :cond_3
    :goto_1
    return-void
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .line 6172
    if-eqz p1, :cond_0

    .line 6173
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    goto :goto_0

    .line 6175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6178
    :goto_0
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .line 6222
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 7

    .line 3608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    .line 3609
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->showSurfaceView()V

    .line 3613
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3614
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 3615
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3632
    :cond_0
    const-string v2, "CAM_PhotoModule"

    const-string v4, "On resume."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onResumeTasks()V

    goto :goto_1

    .line 3616
    :cond_1
    :goto_0
    const-string v2, "CAM_PhotoModule"

    const-string v4, "On resume, from lock screen."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isInstantCaptureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3621
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    .line 3626
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v4, p0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v5, 0x14

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3636
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->registerMediaButtonReceiver()V

    .line 3639
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->setSwitcherIndex()V

    .line 3640
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_3

    .line 3641
    new-instance v2, Landroid/media/SoundPool;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    .line 3642
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f070004

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/PhotoModule;->mRefocusSound:I

    .line 3645
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3654
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v2, :cond_4

    .line 3655
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3, v0, v0, v0}, Lcom/android/camera/MultiPPManager;->init(Lcom/android/camera/CameraActivity;III)Z

    .line 3657
    :cond_4
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .line 3547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 3550
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 3551
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->buttonBokeh(Z)V

    .line 3553
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1184
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 1185
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 6195
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 6197
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6198
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .local v1, "data":[F
    :goto_0
    goto :goto_1

    .line 6199
    .end local v1    # "data":[F
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 6200
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    goto :goto_0

    .line 6203
    .restart local v1    # "data":[F
    :goto_1
    nop

    .line 6205
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 6206
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v1, v3

    .line 6205
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6208
    .end local v3    # "i":I
    :cond_1
    new-array v3, v4, [F

    .line 6209
    .local v3, "orientation":[F
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mR:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    invoke-static {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 6210
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mR:[F

    invoke-static {v4, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 6211
    aget v2, v3, v2

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v2, v4

    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v2, v4

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 6212
    iget v2, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    if-gez v2, :cond_2

    .line 6213
    iget v2, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    add-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 6215
    :cond_2
    return-void

    .line 6203
    .end local v1    # "data":[F
    .end local v3    # "orientation":[F
    :cond_3
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .line 6031
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 6033
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 6035
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 6036
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->needRestart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6037
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Restarting Preview... Camera Mode Changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 6039
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 6040
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 6041
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 6048
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v1, v1, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v1, :cond_2

    .line 6049
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 6050
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    goto :goto_0

    .line 6053
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6055
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 6056
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 13
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .line 5947
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 5950
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0353

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5951
    .local v0, "settingOff":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5953
    const-string v1, "pref_camera_hdr_key"

    invoke-static {p1, v1, v0}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "pref_camera_ae_bracket_hdr_key"

    .line 5954
    invoke-static {p1, v1, v0}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5956
    :cond_1
    const-string v1, "pref_camera_zsl_key"

    invoke-static {p1, v1, v0}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5957
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5958
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5955
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_zsl_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5962
    :cond_3
    :goto_1
    const-string v1, "pref_camera_manual_exp_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5963
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V

    .line 5964
    return-void

    .line 5966
    :cond_4
    const-string v1, "pref_camera_manual_wb_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5967
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V

    .line 5968
    return-void

    .line 5970
    :cond_5
    const-string v1, "pref_camera_manual_focus_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5971
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V

    .line 5972
    return-void

    .line 5975
    :cond_6
    const-string v1, "pref_camera_savepath_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5976
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 5977
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5976
    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 5978
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 5979
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    .line 5982
    :cond_7
    const-string v1, "chroma-flash"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5983
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5986
    :cond_8
    const-string v1, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5987
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "chroma-flash"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5988
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_scenemode_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5991
    :cond_9
    const-string v1, "pref_camera_hdr_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5992
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5995
    :cond_a
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5997
    .local v1, "ubiFocusOff":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e004b

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5999
    .local v2, "chromaFlashOff":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e004c

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6001
    .local v3, "optiZoomOff":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e004a

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6003
    .local v4, "reFocusOff":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e004d

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6005
    .local v5, "fssrOff":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e004e

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6007
    .local v6, "truePortraitOff":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e004f

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6009
    .local v7, "multiTouchFocusOff":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e0050

    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6011
    .local v8, "stillMoreOff":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e0040

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6013
    .local v9, "advancedFeatureOff":Ljava/lang/String;
    const-string v10, "opti-zoom"

    invoke-static {p1, v10, v3}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "af-bracket"

    .line 6014
    invoke-static {p1, v10, v1}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "FSSR"

    .line 6015
    invoke-static {p1, v10, v5}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "true-portrait"

    .line 6016
    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "multi-touch-focus"

    .line 6017
    invoke-static {p1, v10, v7}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "still-more"

    .line 6018
    invoke-static {p1, v10, v8}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "re-focus"

    .line 6019
    invoke-static {p1, v10, v4}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "pref_camera_advanced_features_key"

    .line 6020
    invoke-static {p1, v10, v9}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 6021
    :cond_b
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e03b1

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v10

    .line 6022
    invoke-virtual {v10}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 6025
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 6026
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .line 6133
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 6134
    return-void
.end method

.method public declared-synchronized onShutterButtonClick()V
    .locals 9

    monitor-enter p0

    .line 3391
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3392
    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3400
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 3401
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3402
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3401
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3403
    monitor-exit p0

    return-void

    .line 3405
    :cond_1
    :try_start_1
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 3408
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideSwitcher()V

    .line 3409
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 3411
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->buttonBokeh(Z)V

    .line 3414
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->gotoThumb(Z)V

    .line 3415
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 3419
    sget-boolean v0, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v0, :cond_3

    .line 3420
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideTSMakeUp()V

    .line 3425
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3426
    iget v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v0, v3, :cond_4

    .line 3427
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    goto :goto_0

    .line 3429
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 3438
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_8

    .line 3441
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3442
    monitor-exit p0

    return-void

    .line 3445
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_timer_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e034a

    .line 3447
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3445
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3448
    .local v0, "timer":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_timer_sound_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e034b

    .line 3449
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3448
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0354

    .line 3450
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3452
    .local v3, "playSound":Z
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3455
    .local v4, "seconds":I
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3456
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 3458
    :cond_9
    if-lez v4, :cond_a

    .line 3459
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_zsl_key"

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e002a

    .line 3460
    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3459
    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3461
    .local v5, "zsl":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "pref_camera_zsl_key"

    aput-object v8, v7, v2

    aput-object v5, v7, v1

    invoke-virtual {v6, v7}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3462
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/PhotoUI;->startCountDown(IZ)V

    .line 3463
    .end local v5    # "zsl":Ljava/lang/String;
    goto :goto_1

    .line 3464
    :cond_a
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3465
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initiateSnap()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3467
    :goto_1
    monitor-exit p0

    return-void

    .line 3397
    .end local v0    # "timer":Ljava/lang/String;
    .end local v3    # "playSound":Z
    .end local v4    # "seconds":I
    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    .line 3390
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/camera/PhotoModule;
    throw v0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 5
    .param p1, "pressed"    # Z

    .line 3339
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3340
    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 3350
    :try_start_0
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    .line 3351
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 3352
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshot(Z)V

    .line 3353
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 3354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    .line 3355
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3356
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0

    .line 3358
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3359
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 3360
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3361
    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 3360
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3362
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3364
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    goto :goto_0

    .line 3368
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3369
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 3370
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 3371
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->capture()Z

    .line 3374
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3376
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 3378
    :cond_5
    if-eqz p1, :cond_6

    .line 3379
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_1

    .line 3383
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3384
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    .line 3387
    :cond_7
    :goto_1
    return-void

    .line 3374
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3344
    :cond_8
    :goto_2
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus error case mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mCameraDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mPaused ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 5

    .line 3498
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3499
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3500
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3499
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    return-void

    .line 3504
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 3506
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_longshot_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e01fd

    .line 3508
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3506
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3510
    .local v0, "longshot_enable":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longshot_enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3512
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isLongSaveEnabled()Z

    move-result v2

    .line 3513
    .local v2, "enable":Z
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    .line 3516
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3517
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 3520
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isLongshotNeedCancel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3521
    return-void

    .line 3523
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 3524
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3525
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 3526
    .end local v2    # "enable":Z
    goto :goto_0

    .line 3529
    :cond_4
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 3533
    .end local v0    # "longshot_enable":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 3925
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3932
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z

    if-nez v0, :cond_1

    .line 3933
    return-void

    .line 3936
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-nez v0, :cond_2

    return-void

    .line 3937
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 3938
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    .line 3939
    return-void

    .line 3929
    :cond_4
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 3231
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    .line 1279
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1282
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1283
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1284
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 6084
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 6085
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 3
    .param p1, "index"    # I

    .line 6139
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    return p1

    .line 6140
    :cond_0
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 6141
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6142
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 6143
    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6144
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 6147
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 6148
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 6149
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6150
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 6151
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    monitor-exit v0

    return v2

    .line 6152
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    :cond_3
    monitor-exit v0

    .line 6153
    return p1

    .line 6152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6141
    :cond_4
    :goto_0
    return p1
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "requestedZoom"    # F

    .line 6158
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 6159
    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6160
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 6162
    :cond_0
    return-void
.end method

.method public reinit()V
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 877
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 881
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 882
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 883
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 884
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 4

    .line 1263
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutCameraOrientation()V

    .line 1268
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1269
    .local v0, "size":Landroid/hardware/Camera$Size;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using preview width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "& height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->setAspectRatio(F)V

    .line 1271
    return-void

    .line 1264
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    :goto_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Camera not yet initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void
.end method

.method public saveYUVtoPicture([BIIII)[B
    .locals 8
    .param p1, "data"    # [B
    .param p2, "strideW"    # I
    .param p3, "strideH"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 6411
    const/4 v0, 0x0

    .line 6412
    .local v0, "jpegData":[B
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 6414
    .local v1, "yuvimage":Landroid/graphics/YuvImage;
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v2

    .line 6416
    .local v2, "jpegQuality":I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6418
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v4, "hdr"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6419
    const/16 v4, 0x10

    .line 6420
    .local v4, "shift":I
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, p4, v4

    sub-int v7, p5, v4

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 6421
    .end local v4    # "shift":I
    goto :goto_0

    .line 6422
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 6425
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 6426
    return-object v0
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .line 1163
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1164
    .local v0, "pref":Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 6235
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    .line 6236
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .line 2726
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2727
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1020
    return-void
.end method

.method setPreviewFrameLayoutCameraOrientation()V
    .locals 3

    .line 1252
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1254
    .local v0, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget v1, v0, Lcom/android/camera/CameraHolder$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->cameraOrientationPreviewResize(Z)V

    goto :goto_0

    .line 1257
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->cameraOrientationPreviewResize(Z)V

    .line 1259
    :goto_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .line 1375
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 1377
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    .line 1380
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1381
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Lcom/android/camera/CameraHolder$CameraInfo;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v2

    .line 1382
    .local v0, "info":Lcom/android/camera/CameraHolder$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iget v4, v0, Lcom/android/camera/CameraHolder$CameraInfo;->facing:I

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/PhotoUI;->onStartFaceDetection(IZ)V

    .line 1384
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1385
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 1387
    .end local v0    # "info":Lcom/android/camera/CameraHolder$CameraInfo;
    :cond_3
    return-void

    .line 1378
    :cond_4
    :goto_1
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 1391
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_1

    .line 1393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1394
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1395
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 1396
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1397
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onStopFaceDetection()V

    .line 1399
    :cond_1
    return-void

    .line 1391
    :cond_2
    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 4172
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4173
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 4176
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4177
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 4178
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 4179
    return-void
.end method

.method public switchInternalStorage()V
    .locals 3

    .line 6383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 6384
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6386
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6387
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 6388
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 6389
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    .line 6390
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .line 3868
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3869
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3871
    :cond_0
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .line 3542
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .line 1006
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 1007
    return-void
.end method
